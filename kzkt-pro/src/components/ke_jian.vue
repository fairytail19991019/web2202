<template>
  <div>
    <van-card
      :desc=jiu.desc
      :price=jiu.price
      :title=jiu.title
      :origin-price=jiu.oprice
      :tag="jiu.tag"
      :thumb="`/yuwen/yuwen${jiu.gid}.jpg`"
    >
      <template #tags>
        <van-tag plain type="danger">{{jiu.mai}}人已经购买</van-tag>
      </template>
      <template #footer>
        <van-button size="mini" style="margin-right:20px" >购买</van-button>
        <van-button size="mini">开始上课</van-button>
      </template>
    </van-card>
  </div>
</template>

<script>
export default {
  props:['jiu'],
  data() {
    return {
      // jiuzhong: [
      //   {
      //     title:"传世名作初体验",
      //     desc: "文言文的魅力，用不同的打开方式",
      //     gid: "0",
      //     price: "60",
      //     icon: "../",
      //     towhere: "shuxue",
      //   },
      // ],
    };
  },
};
</script>

<style lang="scss" scoped>
.van-card {
  border-radius: 10px;
  margin: 5px 20px;
  background-color: rgb(240, 240, 240);
  .star-button {
    width: 100px;
    height: 20px;
    top: 3px;
    right: -26px;
  }
}
.van-card__thumb {
  width: 120px;
  height: 80px;
  margin-right: 20px;
  margin-top: 5px;
}
</style>