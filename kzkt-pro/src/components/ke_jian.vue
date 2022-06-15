<template>
  <div>
    <van-card
      :desc="jiu.desc"
      :price="jiu.price"
      :title="jiu.title"
      :origin-price="jiu.oprice"
      :tag="jiu.tag"
      :thumb="`/yuwen/yuwen${jiu.gid}.jpg`"
    >
      <template #tags>
        <van-tag plain type="danger">{{ jiu.mai }}人已经购买</van-tag>
      </template>
      <template #footer>
        <van-button
          v-if="!jiu.issold"
          size="normal"
          type="primary"
          round
          @click="Dialog"
          >加入购物车</van-button
        >
        <van-button v-else size="normal" type="danger" round @click="Dialog1"
          >移除购物车</van-button
        >
        <!-- <van-button size="mini">开始上课</van-button> -->
      </template>
    </van-card>
  </div>
</template>

<script>
export default {
  props: ["jiu"],
  methods: {
    Dialog() {
      this.$dialog
        .confirm({
          message: "是否确定加入购物车",
        })
        .then(() => {
          let params = `gid=${this.jiu.gid}`;
          this.axios.put("/users/updateorder", params).then((res) => {
            console.log(res);
          });
        })
        .catch(() => {});
    },
    Dialog1() {
      this.$dialog
        .confirm({
          message: "是否确定移除购物车",
        })
        .then(() => {
          let params = `gid=${this.jiu.gid}`;
          this.axios.put("/users/updateorder", params).then((res) => {
            console.log(res);

          });
        })
        .catch(() => {});
    },
  },
  data() {
    return {
      issold:null
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