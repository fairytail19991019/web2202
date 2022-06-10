<template>
  <div>
    <!-- 顶部搜索框 -->
    <form action="/">
      <van-search
        v-model="value"
        show-action
        placeholder="请输入搜索关键词"
        @search="onSearch"
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

    <mt-navbar v-model="selected" style="margin: 0 20px" class="fsnav">
      <mt-tab-item id="1">综合</mt-tab-item>
      <mt-tab-item id="2">好评</mt-tab-item>
      <mt-tab-item id="3">人气</mt-tab-item>
    </mt-navbar>

    <mt-navbar
      class="sort"
      style="display: flex; justify-content: space-around; flex: 1"
    >
      <van-button
        class="min-btn"
        plain
        type="info"
        size="small"
        :id="id"
        v-for="{ id, category_name } in cateList"
        :key="id"
      >
        {{ category_name }}
      </van-button>
    </mt-navbar>

    <!-- tab-container -->
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1" >
        <zu-jian-01 v-for="x in cateClass" :key="x.id" :p='x'/>
      </mt-tab-container-item>
      <mt-tab-container-item id="2">
        <zu-jian-01 />

      </mt-tab-container-item>
      <mt-tab-container-item id="3">
        <zu-jian-01 />
        <zu-jian-01 />
        <zu-jian-01 />
        <zu-jian-01 />
        <zu-jian-01 />
      </mt-tab-container-item>
    </mt-tab-container>
    <div style="height: 55px"></div>
  </div>
</template>

<script>
import ZuJian01 from "../components/ZuJian01.vue";
export default {
  components: { ZuJian01 },
  data() {
    return {
      cateList: [],
      cateClass: null,
      // 搜索框内容
      value: "",
      selected: 1,
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
  },
  methods: {
    getdata() {
      this.axios.get("/items/category").then((res) => {
        console.log(res);
        this.cateList = res.data.result;
      });

      this.axios.get("/items/class").then((res) => {
        console.log(res);
        this.cateClass = res.data.result;
      });
    },
    onSearch(val) {
      Toast(val);
    },
    onCancel() {
      Toast("取消");
    },
  },
  watch: {
    selected(newvalue, oldvalue) {
      console.log("newvalue", newvalue);
      console.log("oldvalue", oldvalue);
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