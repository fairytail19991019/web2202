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
      <zu-jian-01 v-for="item in result" :key="item.id" :zujian="item" />

      <div style="height: 55px"></div>
    </div>

  </div>
</template>

<script>
import ZuJian01 from "../components/ZuJian01.vue";
export default {
  components: { ZuJian01 },
  props: ["kw"],
  watch:{
    kw(){
      this.getData()
    }
  },
  mounted() {
    // console.log(this.kw);
    this.getData()
  },
  data() {
    return {
      result: [],
      selected:1,
      isLoading: false,
    };
  },
  methods: {
    getData() {
      const url = "/items/search";
      const params = `kw=${this.kw}`;
      this.axios.post(url, params).then((res) => {
        console.log(res);
        this.result = res.data.result;
        if(res.code==500){
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
      },
  },
};
</script>

<style lang="scss" scoped>
</style>