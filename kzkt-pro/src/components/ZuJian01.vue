<template>
  <div>
    <van-card class="van-card"
      desc="描述信息"
      title="商品标题"
      thumb="https://img01.yzcdn.cn/vant/ipad.jpeg"
    >
      <template #tags>
        <van-tag plain type="danger">热销</van-tag>
        <van-tag plain type="danger">新品</van-tag>

        <van-button type="info" round size="small">开始上课</van-button>
      </template>

    </van-card>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.van-card{
    border-radius: 10px;
    margin: 5px 20px;
    background-color: rgb(143, 252, 161);
    .van-button{
      width: 100px;
      height: 20px;
      top:5px
    }
}
.van-card__thumb{
  width: 175px;
  height: 80px;
  margin-right: 25px;
}
</style>