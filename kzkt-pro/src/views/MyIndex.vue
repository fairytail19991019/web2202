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
    <h2>推荐课程</h2>

    <div style="height: 10px"></div>

    <mt-navbar v-model="selected">
      <mt-tab-item id="1">综合</mt-tab-item>
      <mt-tab-item id="2">好评</mt-tab-item>
      <mt-tab-item id="3">人气</mt-tab-item>
    </mt-navbar>

    <mt-navbar class="sort">
      <mt-tab-item id="1">前端开发</mt-tab-item>
      <mt-tab-item id="2">软件测试</mt-tab-item>
      <mt-tab-item id="3">英语</mt-tab-item>
      <mt-tab-item id="4">Java</mt-tab-item>
      <mt-tab-item id="5">eExcel</mt-tab-item>
    </mt-navbar>

    <!-- tab-container -->
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        <zu-jian-01 />
      </mt-tab-container-item>
      <mt-tab-container-item id="2">
        <zu-jian-01 />
      </mt-tab-container-item>
      <mt-tab-container-item id="3">
        <zu-jian-01 />
      </mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>

<script>
import ZuJian01 from "../components/ZuJian01.vue";
export default {
  components: { ZuJian01 },
  data() {
    return {
      // 搜索框内容
      value: "",
      active: 0,
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
  methods: {
    onSearch(val) {
      Toast(val);
    },
    onCancel() {
      Toast("取消");
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
.sort{
  display: flex;
  flex: 1;
  margin-top: 20px;
  margin-bottom: 10px;

  .mint-tab-item{
    border: 1px solid rgb(14, 181, 231);
    border-radius: 20px;
    padding: 5px 0;
    width: 30px;
    margin: 0 10px;
  }
  .active{
    color: white;
    background-color: rgb(14, 181, 231);
  }
}
</style>