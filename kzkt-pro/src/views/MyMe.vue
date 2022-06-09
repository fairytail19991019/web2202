
<template>
  <div>
    <van-row class="login" type="flex" justify="space-between" align="center">
      <van-col span="4" offset=""
        ><van-image
          round
          width="3rem"
          height="3rem"
          src="https://img01.yzcdn.cn/vant/cat.jpeg"
        />
      </van-col>
      <van-col span="16"
        ><router-link to=""
          >登录/注册<van-icon name="arrow" /></router-link
      ></van-col>
      <van-col span="4"><van-icon name="comment-o" size="25" /></van-col>
    </van-row>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.login {
  margin-top: 20px;
}
a {
  color: black;
}
</style>







