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

    <!-- 清晰度选择 -->
    <van-field
      class="qxd"
      readonly
      clickable
      label="下载清晰度"
      :value="qxdvalue"
      placeholder="请选择清晰度"
      @click="showPicker = true"
    />
    <van-popup v-model="showPicker" round position="bottom">
      <van-picker
        show-toolbar
        :columns="columns"
        @cancel="showPicker = false"
        @confirm="onConfirm"
      />
    </van-popup>

       <van-cell @click="Dialog1" :value='hc' class="cell1" title="清除缓存" is-link />
       
       

    <!-- 设置页面 -->
    <van-button @click="Dialog" v-if="$store.state.loginname" class="cell1" type="danger" block>退出登录</van-button>
    <van-button v-else class="cell1" type="default" block to="/login">登录</van-button>
  </div>
</template>

<script>
import LoginVue from "./Login.vue";
export default {
  
  data() {
    return {
      checked1: true,
      checked2: false,
      show: false,

      // 清晰度数据
      qxdvalue: "",
      showPicker: false,
      columns: ["高清", "超清", "蓝光"],
      hc:'5M'
    };
  },
  methods: {
    // 清晰度选择
    onConfirm(value) {
      this.qxdvalue = value;
      this.showPicker = false;
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
    Dialog1() {
      this.$dialog
        .confirm({
          message: "要清除缓存吗",
        })
        .then(() => {
          this.hc=''
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
a {
  color: black;
}
</style>
<style>
.van-field__control {
  text-align: right;
}
body {
  background-color: #eee;
}
</style>
