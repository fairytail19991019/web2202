<template>
  <div>
    <form action="/">
      <van-search
        v-model="value"
        show-action
        shape="round"
        clearable
        placeholder="请输入搜索关键词"
        @search="onSearch"
        @cancel="onCancel"
      />
    </form>
    <router-view/>
  </div>
</template>

<script>

export default {
  data() {
    return {
      value: "",
    };
  },
  methods: {
    onSearch(val) {
      console.log(val);
      if(this.$route.path!='/search/search_results/'+val){
        this.$router.push('/search/search_results/'+val)
      }
    },
    onCancel() {
      this.$router.push('/home/index')
    },
    // childClick(e){
    //   console.log('子路由传来的值='+e);
    // }
  },
};
</script>

<style lang="scss" scoped>
</style>