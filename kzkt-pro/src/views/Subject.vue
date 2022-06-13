<template>
  <div>
    <header>
      <mt-header title="" style="height:50px">
        <router-link to="/" slot="left">
          <mt-button icon="back" style="font-size:22px">返回</mt-button>
        </router-link>
        <!-- <mt-button icon="more" slot="right"></mt-button> -->
      </mt-header>
    </header>

    <div>
      <van-dropdown-menu>
        <van-dropdown-item v-model="nm" :options="option" />
        <van-dropdown-item v-model="mm" :options="optiom" />
      </van-dropdown-menu>
    </div>

    <!-- 引入组件列表 -->
    <div>
      <!-- 引入文章列表项 -->
      <ke-jian v-for="jiuke in jiukelist" :key="jiuke.gid" :jiu="jiuke">
      </ke-jian>
      <div style="height: 60px"></div>
    </div>
  </div>
</template>

<script>
import KeJian from "@/components/ke_jian.vue";
export default {
  components: {
    "ke-jian": KeJian,
  },
  data() {
    return {
      nm: 0,
      mm:0,
      option: [
        { text: "语文", value: 0 },
        { text: "数学", value: 1 },
        { text: "yy", value: 2 },
      ],
      optiom: [
        { text: "小学系列", value: 0 },
        { text: "初中系列", value: 1 },
        { text: "高中系列", value: 2 },
      ],
      jiukelist: [
        {
          gid: "1",
          title: "中考暴力作文写作",
          desc: "告别无话可说，就是那么一回事",
          mai: "5132",
          price: "30",
          oprice:"60.00",
          tag:"爆款",
        },
        {
          gid: "2",
          title: "传世名作初体验",
          desc: "文言文的魅力，用不同的打开方式",
          mai: "4262",
          price: "30",
          oprice:"60.00",
          tag:"",
        },
        {
          gid: "3",
          title: "人物之百态人生",
          desc: "见闻与传奇，聆听他们的故事",
          mai: "4262",
          price: "0",
          oprice:"30.00",
          tag:"免费",
        },
        {
          gid: "4",
          title: "中考暴力作文写作",
          desc: "告别无话可说，就是那么一回事",
          mai: "5132",
          price: "30",
          oprice:"60.00",
          tag:"爆款",
        },
        {
          gid: "5",
          title: "传世名作初体验",
          desc: "文言文的魅力，用不同的打开方式",
          mai: "4262",
          price: "30",
          oprice:"60.00",
          tag:"",
        },
        {
          gid: "6",
          title: "人物之百态人生",
          desc: "见闻与传奇，聆听他们的故事",
          mai: "4262",
          price: "0",
          oprice:"30.00",
          tag:"免费",
        },
      ],
    };
  },
};
</script>

<style></style>
