<template>
  <div>
    <!-- 设置页面 -->
    <van-icon name="arrow-left" @click="$router.push('/home/me')" />
    <br>
    <br>
    <br>
    <br>
    <button @click=" Dialog" v-if="$store.state.loginname">退出登录</button>
    <button v-else>登录</button>
  </div>
</template>

<script>
export default {
  methods: {
    Dialog() {
      this.$dialog.confirm({
        message: "是否确认退出登录",
      })
        .then(() => {
          this.$store.commit('quit')
          this.$toast("退出登录成功");
          this.$router.push('/home/me')
        })
        .catch(() => {
        });
    },
  },
};
</script>

<style lang="scss" scoped>
</style>