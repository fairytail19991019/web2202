<template>
  <div>
    <form action="/">
      <van-search
        v-model="value"
        show-action
        shape="round"
        placeholder="请输入搜索关键词"
        @search="onSearch"
        @cancel="onCancel"
      />
    </form>

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
    onSearch(val) {},
    onCancel() {
      this.$router.go(-1);
    },
  },
};
</script>

<style lang="scss" scoped>
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
</style>