<template>
  <div>
    <!-- 顶部搜索框 -->
    <form action="/">
      <van-search
        v-model="value"
        show-action
        shape="round"
        placeholder="请输入搜索关键词"
        @search="onSearch"
        @focus="search"
        @cancel="onCancel"
      />
    </form>

    <!-- 轮播图 -->
    <swiper class="my-swiper" :options="swiperOptions">
      <swiper-slide>
        <img src="../assets/indeximage/index01.png" alt="" />
      </swiper-slide>
      <swiper-slide>
        <img src="../assets/indeximage/index02.png" alt="" />
      </swiper-slide>
      <swiper-slide>
        <img src="../assets/indeximage/index03.jpg" alt="" />
      </swiper-slide>
      <!-- 分页器: 必须放入对应插槽中 -->
      <div class="swiper-pagination" slot="pagination"></div>
    </swiper>

    <!-- 推荐课程 -->
    <h2 style="margin-left: 30px; font-size: 18px; margin-bottom: 2px">
      推荐课程
    </h2>

    <!-- <mt-navbar v-model="selected" style="margin: 0 20px" class="fsnav">
      <mt-tab-item id="1">综合</mt-tab-item>
      <mt-tab-item id="2">好评</mt-tab-item>
      <mt-tab-item id="3">人气</mt-tab-item>
    </mt-navbar> -->

    <!-- 导航 -->
    <mt-navbar v-model="selected">
      <mt-tab-item
        v-for="{ category_name, id } in cateList"
        :key="id"
        :id="id + ''"
      >
        {{ category_name }}
      </mt-tab-item>
    </mt-navbar>

    <div
      v-infinite-scroll="loadMore"
      infinite-scroll-distance="30"
      infinite-scroll-immediate-check="true"
    >
      <!-- 引入组件列表 -->
      <zu-jian-01 v-for="item in cateClass" :key="item.id" :zujian="item" />

      <div style="height: 55px"></div>
    </div>
  </div>
</template>

<script>
import ZuJian01 from "../components/ZuJian01.vue";
import { Indicator } from "mint-ui";
export default {
  components: { ZuJian01 },
  data() {
    return {
      page: 1,
      isLoading: false,
      cateList: [],
      cateClass: [],
      // 搜索框内容
      value: "",
      selected: null,
      swiperOptions: {
        //效果,特效  默认为"slide"（普通位移切换），还可设置为"fade"（淡入）、"cube"（方块）、"coverflow"（3d流）、"flip"（3d翻转）
        effect: "fade",
        loop: true,
        autoplay: {
          delay: 2000, //间隔时长, 单位毫秒
          disableOnInteraction: false, //用户操作swiper后是否禁用自动滚动
        },
        pagination: {
          el: ".swiper-pagination",
        },
      },
    };
  },
  mounted() {
    this.getdata();
    this.loadArticles(null, 1).then((res) => {
      console.log(res);
      this.cateClass = res.data.result;
    });
  },
  methods: {
    search(){
      if(this.$route.path!='/search'){
        this.$router.push('/search')
      }
    },
    getdata() {
      this.axios.get("/items/category").then((res) => {
        console.log(res);
        this.cateList = res.data.result;
      });
    },

    // 加载文章列表, 返回Promise

    loadArticles(cid, page) {
      return new Promise((resolve, reject) => {
        Indicator.open("加载中...");
        if (cid == null) {
          this.axios.get(`/items/class?page=${page}`).then((res) => {
            resolve(res);
            Indicator.close();
          });
        } else {
          this.axios.get(`/items/class?cid=${cid}&page=${page}`).then((res) => {
            resolve(res);
            Indicator.close();
          });
        }
      });
    },

    // 当触发触底事件后, 执行loadMore方法
    loadMore() {
      if (this.isLoading) {
        // 如果下一页正在加载中, 则直接返回
        return;
      }
      this.isLoading = true;

      let cid = this.selected ? this.selected : null; // this.selected即是顶部导航选中项的类别ID
      this.page++; // 下一页需要让data.page自增
      console.log(`到底了, 加载数据 cid:${cid},  page:${this.page}`);
      // 发送http请求, 加载相应页码的数据

      this.loadArticles(cid, this.page).then((res) => {
        console.log("加载下一页,", res);
        if (!res.data.result.length) {
          this.isLoading = true;
          this.$toast("我也是有底线的");
          console.log("已经到底了");
        } else {
          // 将返回的文章列表res.data.result 追加到当前列表末尾data.articleList
          this.cateClass.push(...res.data.result);
          this.isLoading = false;
          // this.articleList = this.articleList.concat(res.data.result)
        }
      });
    },

    onSearch(val) {
      Toast(val);
    },
    onCancel() {
      Toast("取消");
    },
  },
  activated() {
    //跳转回当前页时执行，重新将isLoading改为false 开启触底加载功能
    this.isLoading = false;
  },
  deactivated() {
    //跳转到其他页面时，将isLoading改为true 不执行触底加载
    this.isLoading = true;
  },
  watch: {
    // 监听顶部导航选中项的变化,  selected用于表示顶部导航选中项的ID
    selected(newValue, oldValue) {
      // 回到页面顶部
      window.scrollTo(0, 0);
      this.page = 1; // 将当前页码置为1

      // console.log(newValue);  newValue即是当前选中项类别的ID
      this.loadArticles(newValue, 1).then((res) => {
        console.log("点击顶部导航", res);
        this.cateClass = res.data.result; // 为articleList重新赋值为新数组
      });
    },
  },
};
</script>

<style lang="scss" scoped>
// 轮播图样式
.my-swiper {
  width: 90vw;
  height: 18vh;
  img {
    width: 90vw;
    height: 18vh;
  }
}
.sort {
  display: flex;
  flex: 1;
  margin-top: 10px;
  margin-bottom: 10px;
  margin: 10px 20px;

  .active {
    color: white;
    background-color: rgb(14, 181, 231);
  }
}
.min-btn {
  border-radius: 5px;
  width: 60px;
  height: 25px;
  padding: 0;
}
.fsnav {
  a {
    padding: 10px;

    font-size: 20px;
  }
}
</style>