<template>
  <div>
    <van-card
      class="van-card"
      :title="zujian.title"
      thumb="/java/java(1).jpg"
      @click="goDeatils"
    >
      <template #tags>
        <van-tag plain type="danger" style="text-align: center">热门</van-tag>
        <van-tag plain type="danger" style="margin-left: 8px"
          ><van-icon name="fire-o" />热度{{ zujian.hits }}</van-tag
        >
        <van-button type="info" round size="small" class="star-button"
          >开始上课</van-button
        >
      </template>
    </van-card>
  </div>
</template>

<script>
export default {
  methods: {
    goDeatils() {
      let time=new Date().getTime() //获取点击时的时间戳
      // console.log(time);
      let params=`time=${time}&id=${this.zujian.id}`
      this.axios.put('/items/updatetime',params).then(res=>{
        console.log(res);
      })
      if (this.$route.path != "/details") {
        this.$router.push("/mydetails/"+this.zujian.id);
      }
    },
  },
  props: ["zujian"],
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
  .van-card__desc {
    font-size: 10px;
  }
  .van-card__footer {
    .van-button--mini {
      width: 3px;
      height: 15px;
    }
  }
}
.van-card__thumb {
  width: 150px;
  height: 80px;
  margin-right: 20px;
  margin-top: 5px;
}
</style>