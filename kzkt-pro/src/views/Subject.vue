<template>
  <div>
    <header>
      <mt-header title="" style="height: 50px">
        <router-link to="/home/knowdge" slot="left">
          <mt-button icon="back" style="font-size: 22px">返回</mt-button>
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
      <ke-jian v-for="jiuke in jiukelist" :key="jiuke.gid" :jiu="jiuke" >
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
  props: ["kid"],
  watch: {
    nm() {
      this.axios.get("/items/jiuke?kid=" + this.nm).then((res) => {
        console.log(res);
        this.jiukelist = res.data.result;
        this.$store.commit("updateKid", this.kid);
      });
    },
    a() {
      this.getdata();
    },
  },
  mounted() {
    // console.log(this.kid);
    this.getdata();
    this.$store.commit('updatepath',this.$route.path)
  },
  methods: {
    getdata() {
      this.axios.get("/items/jiuke?kid=" + this.kid).then((res) => {
        console.log(res);
        this.jiukelist = res.data.result;
        this.$store.commit("updateKid", this.kid);
      });
    },
  },
  computed: {
    a() {
      return this.$store.state.issold;
    },
  },
  data() {
    return {
      sold: this.$store.issold,
      jiukelist: [],
      nm: Number(this.kid),
      mm: 0,
      option: [
        { text: "数学", value: 1 },
        { text: "语文", value: 2 },
        { text: "英语", value: 3 },
        { text: "物理", value: 4 },
        { text: "化学", value: 5 },
      ],
      optiom: [
        { text: "小学系列", value: 0 },
        { text: "初中系列", value: 1 },
        { text: "高中系列", value: 2 },
      ],
    };
  },
};
</script>

<style></style>
