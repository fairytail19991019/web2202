<template>
  <div class="zuiwai">
    <van-card
      @click="goumai"
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
        <div>课程：3个 视频：26集</div>
        <!-- <van-button size="mini">开始上课</van-button> -->
      </template>
    </van-card>
    <div class="bttnn">
      <van-button
        v-if="!data"
        size="normal"
        type="primary"
        round
        @click="Dialog"
        >加入购物车</van-button
      >
      <van-button v-else size="normal" type="danger" round @click="Dialog1"
        >移除购物车</van-button
      >
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value:true,
      data:[]
    }
  },
  props: ["jiu"],
  mounted(){
    this.getissold()
  },
  methods: {
    getissold(){
      this.axios.get(`/items/getkejian?gid=${this.jiu.gid}`).then(res=>{
        console.log(res)
        this.data=res.data.result.issold

      })
    },
    goumai() {
      this.$router.push("/goumai");
    },
    Dialog() {
      this.$dialog
        .confirm({
          message: "是否确定加入购物车",
        })
        .then(() => {
          if (!sessionStorage.getItem("name")) {
            this.$toast("请先登录");
            return;
          } else {
            let params = `gid=${this.jiu.gid}`;
            this.axios.put("/users/updateorder", params).then((res) => {
              console.log(res);
             this.$store.commit("updateissold",this.data);
             this.getissold()
            });
          }
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
           this.$store.commit("updateissold",this.data);
           this.getissold()
          });
        })
        .catch(() => {});
    },
  },
  watch:{
    
  }
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
.van-card__content {
  margin-top: 8px;
  height: 80px;
}
.van-card__thumb {
  width: 120px;
  height: 80px;
  margin-right: 20px;
  margin-top: 5px;
}
.van-button {
  width: 100px;
  height: 20px;
  font-size: 10px;
}
.van-card__footer {
  display: flex;
  justify-content: space-between;
  font-size: 10px;
}
.zuiwai{
  position: relative;
}
.bttnn{
  position: absolute;
  right: 10vw;
  top: 95px;
}
</style>