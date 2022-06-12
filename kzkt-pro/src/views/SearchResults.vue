<template>
  <div>
    <h1>查询结果</h1>
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