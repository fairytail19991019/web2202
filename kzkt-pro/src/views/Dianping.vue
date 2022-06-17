<template>
  <div>
    <header>
      <mt-header title="点评有奖" style="height: 50px; font-size: 20px">
        <router-link to="/home/knowdge" slot="left">
          <mt-button icon="back" style="font-size: 20px">返回</mt-button>
        </router-link>
        <mt-button icon="" slot="right"></mt-button>
      </mt-header>
    </header>

    <img src="../assets/beidian.jpg" alt="" />

    <div>
      <div class="ziz">
        <div>
          <i>STEP1 </i> 点击下方按钮去应用市场发布评论
          <br />
          <br />
          <p style="font-size: 10px">评论说明</p>
          <p style="font-size: 10px">
            评级不少于三颗星，字数不少于15字，才能拿到奖品
          </p>
        </div>
      </div>
      <van-button round type="info" color="orange">去评论</van-button>
    </div>
    <div>
      <div class="ziz">
        <div><i>STEP2 </i> 评论成功后，凭截图找客服领取50元学习币</div>
      </div>
      <van-button round type="info" color="orange" @click="showPopup" is-link
        >联系客服</van-button
      >
      <van-popup v-model="show" id="kefu">
        <img src="/wx.png" alt="" />
        <p>微信号：XXXXXXXX</p>
      </van-popup>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      show: false,
    };
  },

  methods: {
    showPopup() {
      this.show = true;
    },
  },
};
</script>

<style lang="scss" scoped>
img {
  width: 100vw;
}
.ziz {
  background-color: rgb(236, 236, 236);
  margin: 5vh 5vw;
  width: 90vw;
  height: 16vh;
  > div {
    padding: 3vh 3vw;
    > i {
      color: blue;
      font-size: 20px;
      font-weight: 800;
    }
  }
}
.van-button {
  margin: 0 38vw;
}
#kefu {
  width: 70vw;
  height: 20vh;
  text-align: center;
  img{
   margin-top: 4vh;
   width: 15vw;
  }
}
</style>