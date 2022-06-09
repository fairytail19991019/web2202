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
    <van-tabs v-model="activeName">
      <!-- 二级筛选 -->
      <van-tabs  class="table-small">
        <van-tab title="前端开发"></van-tab>
        <van-tab title="软件测试"></van-tab>
        <van-tab title="英语"></van-tab>
        <van-tab title="java"></van-tab>
        <van-tab title="Excel"></van-tab>
      </van-tabs>
      <van-tab title="综合" name="a">
        <zu-jian-01 />
        <zu-jian-01 />
        <zu-jian-01 />
      </van-tab>
      <van-tab title="好评" name="b">
        <zu-jian-01 />
        <zu-jian-01 />
      </van-tab>
      <van-tab title="人气" name="c">人气</van-tab>
    </van-tabs>
    <div style="height: 10px"></div>
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
      activeName: "a",
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



</style>