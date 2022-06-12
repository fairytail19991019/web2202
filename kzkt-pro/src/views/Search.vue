<template>
  <div>
    <form action="/">
      <van-search
        v-model="value"
        show-action
        shape="round"
<<<<<<< HEAD
=======
        clearable
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
        placeholder="请输入搜索关键词"
        @search="onSearch"
        @cancel="onCancel"
      />
    </form>
<<<<<<< HEAD

    <div class="lastsh">
      <div>
        <span>最近搜索</span>
        <van-icon name="delete-o" />
      </div>
      <div>
        <van-tag plain round type="primary" size="large">标签</van-tag>
        <van-tag plain round type="primary" size="large">标签</van-tag>
        <van-tag plain round type="primary" size="large">标签</van-tag>
      </div>
    </div>
    <hr />

    <div class="hotsh">
      <div>
        <span>热门搜索</span>
      </div>
      <div>
        <table>
          <tr>
            <td>
              <span class="nummber">1</span>
              <span>数学</span><van-icon name="hot-o" />
            </td>
            <td>
              <span class="nummber">2</span>
              <span>python</span>
            </td>
          </tr>
        </table>
      </div>
    </div>
=======
    <router-view/>
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
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
<<<<<<< HEAD
    onSearch(val) {},
    onCancel() {
      this.$router.go(-1);
=======
    onSearch(val) {
      console.log(val);
      if(this.$route.path!='/search/search_results'){
        this.$router.push('/search/search_results/'+val)
      }
    },
    onCancel() {
      this.$router.push('/home/index')
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
    },
  },
};
</script>

<style lang="scss" scoped>
<<<<<<< HEAD
.lastsh{
  padding: 0 10px;
  font-size: 18px;
  
  div:nth-child(1){
    margin: 15px 0;
    display: flex;
    text-align: center;
    align-items: center;
    

    .van-icon{
      font-size: 20px;
      margin-left: 70%;
      
    }
  }
}
=======
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
</style>