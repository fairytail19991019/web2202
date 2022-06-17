<template>
  <div>
    <!-- 订单页面 -->
    <van-nav-bar
      title="订单"
      left-text="返回"
      left-arrow
      @click-left="$router.push('/home/me')"
    />
    <van-tabs v-model="active">
      <van-tab title="全部订单"></van-tab>
      <van-tab title="待付款"></van-tab>
    </van-tabs>
    <ke-jian v-for="jiuke in jiukelist" :key="jiuke.gid" :jiu="jiuke">
    </ke-jian>
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
      active: 0,
      jiukelist: [],
    };
  },
  mounted() {
    this.getData();
  },
  methods: {
    getData() {
      this.axios.get("/items/order").then((res) => {
        console.log(res);
        this.jiukelist = res.data.result;
      });
    },
  },
};
</script>

<style lang="scss" scoped>
</style>