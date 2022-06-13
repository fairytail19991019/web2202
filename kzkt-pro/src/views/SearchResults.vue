<template>
  <div>
    <mt-navbar v-model="selected">
      <mt-tab-item id="1">全部</mt-tab-item>
      <mt-tab-item id="2">课程</mt-tab-item>
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
export default {
  props: ["kw"],
  mounted() {
    // console.log(this.kw);
    this.getData()
  },
  data() {
    return {
      result: [],
      selected:1
    };
  },
  methods: {
    getData() {
      const url = "/items/search";
      const params = `kw=${this.kw}`;
      this.axios.post(url, params).then((res) => {
        console.log(res);
        this.result = res.data.result;
      });
    },
  },
};
</script>

<style lang="scss" scoped>
</style>