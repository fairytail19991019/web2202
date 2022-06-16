<template>
  <div>
    <van-nav-bar
      title="最近看过"
      left-text="返回"
      left-arrow
      @click-left="$router.push('/home/me')"
    />
    <zu-jian-01 v-for="item in cateClass" :key="item.id" :zujian="item" />
  </div>
</template>

<script>
import ZuJian01 from "../components/ZuJian01.vue";
export default {
  components: { ZuJian01 },
  data() {
    return {
      cateClass: [],
    };
  },
  mounted(){
    this.axios.get('/items/desc').then(res=>{
      console.log(res);
      this.cateClass=res.data.result
    })
  }
};
</script>

<style lang="scss" scoped>
</style>