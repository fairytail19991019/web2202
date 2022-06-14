<template>
  <div id="me">
    <!-- 顶部头像登录 -->
    <van-row class="login" type="flex" justify="space-between" align="center">
      <van-col span="4" offset="2"
        ><van-image
          round
          width="3rem"
          height="3rem"
          src="https://img01.yzcdn.cn/vant/cat.jpeg"
        />
      </van-col>

      <van-col @click="edit" v-if="$store.state.loginname" span="14" to='./Edit.vue'>
        {{ $store.state.loginname }}</van-col
      >

      <van-col v-else span="14"
        ><router-link to="/login"
          >登录/注册<van-icon name="arrow" /></router-link
      ></van-col>
      <van-col span="4"><van-icon name="comment-o" size="25" /></van-col>
    </van-row>

    <!-- 订单 下载 关注 收藏 -->
    <van-tabbar class="order" v-model="active">
      <van-tabbar-item icon="orders-o">订单</van-tabbar-item>
      <van-tabbar-item icon="down">下载</van-tabbar-item>
      <van-tabbar-item icon="eye-o">关注</van-tabbar-item>
      <van-tabbar-item icon="star-o">收藏</van-tabbar-item>
    </van-tabbar>

    <van-cell-group class="l1" inset>
      <van-cell title="余额" value="0" is-link>
        <van-icon name="balance-o" />0
      </van-cell>
      <van-cell title="优惠券" value="0" is-link />
      <van-cell title="课程分销" value="¥0.00可提" is-link />
      <van-cell title="我的认证" value="" is-link />
      <van-cell title="我的点赞" value="" is-link />
      <van-cell title="我的兴趣" value="未选择" is-link />
    </van-cell-group>
    <van-cell-group class="l2" inset>
      <van-cell title="我的评论" value="" is-link />
      <van-cell title="签到领堂豆兑大奖" value="" is-link />
      <van-cell title="兑换中心" value="" is-link />
    </van-cell-group>
    <van-cell-group class="l3" inset>
      <van-cell title="联系客服" value="" is-link />
      <van-cell title="隐私" value="" is-link />
      <van-cell title="设置" value="" is-link @click="setting" />
    </van-cell-group>
    <!-- <div style="height: 13vh"></div> -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      active: 0,
    };
  },
  methods: {
    setting() {
      if (this.$route.path != "/setting") {
        this.$router.push("/setting");
      }
    },
    edit() {
      if (this.$route.path != "/edit") {
        this.$router.push("/edit");
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.login {
  margin-top: 20px;
}
a {
  color: black;
}
.order {
  position: relative;
  margin-top: 20px;
  background-color: #eee;
}
.van-hairline--top-bottom::after {
  border-width: 0;
}
.van-tabbar-item--active {
  background-color: #eee;
}
.l1 {
  margin-top: 20px;
}
.l2 {
  margin-top: 20px;
}
.l3 {
  margin-top: 20px;
}
</style>

<style>
#me {
  background-color: #eee;
  height: 100vh;
}
#me::before{
  content:"";
  display:table;

}
</style>







