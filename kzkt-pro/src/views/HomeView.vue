<template>
  <div>
    <router-view />
    <mt-tabbar v-model="tabSelected" fixed>
      <mt-tab-item id="index"> 首页 </mt-tab-item>
      <mt-tab-item id="knowdge"> 涨知识 </mt-tab-item>
      <mt-tab-item id="class"> 课程表 </mt-tab-item>
      <mt-tab-item id="me"> 我的 </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
export default {
  watch: {
    tabSelected(newValue, oldValue) {
      if (newValue == "index") {
        this.$router.push("/home/index");
      } else if (newValue == "me") {
        this.$router.push("/home/me");
      } else if (newValue == "class") {
        this.$router.push("/home/class");
      } else if (newValue == "knowdge") {
        this.$router.push("/home/knowdge");
      }
    },
  },
  data() {
    return {
      // Pop () 删除数组末尾的一个元素，返回删除的元素，原数组会发生变化
      tabSelected: this.$route.path.split("/").pop(),
    };
  },
};
</script>

<style lang="scss" scoped>
</style>
