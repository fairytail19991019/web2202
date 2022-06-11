<template>
  <div>
    <van-nav-bar
      title="设置"
      left-text="返回"
      left-arrow
      @click-left="$router.push('/home/me')"
    />
    <van-cell class="cell1" title="账号与安全" is-link />

    <van-cell class="cell1" title="仅Wi-Fi下载">
      <!-- 使用 right-icon 插槽来自定义右侧图标 -->
      <template #right-icon>
        <van-switch v-model="checked1" size="24px" />
      </template>
    </van-cell>
    <van-cell title="开启后台播放">
      <!-- 使用 right-icon 插槽来自定义右侧图标 -->
      <template #right-icon>
        <van-switch v-model="checked2" size="24px" />
      </template>
    </van-cell>
    <van-cell is-link @click="showPopup">下载清晰度</van-cell>
    <van-popup
      v-model="show"
      closeable
      position="bottom"
      :style="{ height: '30%'}"
    >选择下载清晰度</van-popup>

    <!-- 设置页面 -->

    <br />
    <br />
    <br />
    <br />
    <button @click="Dialog" v-if="$store.state.loginname">退出登录</button>
    <button v-else>登录</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      checked1: true,
      checked2: false,
      show: false,
    };
  },
  methods: {
     showPopup() {
      this.show = true;
    },
  
    Dialog() {
      this.$dialog
        .confirm({
          message: "是否确认退出登录",
        })
        .then(() => {
          this.$store.commit("quit");
          this.$toast("退出登录成功");
          this.$router.push("/home/me");
        })
        .catch(() => {});
    },
  },
};
</script>

<style lang="scss" scoped>
.van-cell {
  font-size: 16px;
}
.cell1 {
  margin-top: 15px;
}
</style>