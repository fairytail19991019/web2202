<template>
  <div>
    <mt-header title="登录">
      <router-link to="/home/index" slot="left">
        <mt-button icon="back">返回</mt-button>
      </router-link>

      <router-link to="/register" slot="right">
        <mt-button>新用户</mt-button>
      </router-link>
    </mt-header>
    <mt-field
      label="手机号"
      placeholder="请输入手机号"
      v-model="phone"
      @blur.native.capture="checkPhone"
      :state="phoneState"
    ></mt-field>

    <mt-field
      label="密码"
      placeholder="请输入密码"
      type="password"
      v-model="upwd"
      @blur.native.capture="checkPwd"
      :state="pwdState"
    ></mt-field>

    <mt-button type="primary" size="large" @click="login">立即登录</mt-button>
  </div>
</template>

<script>
export default {
  methods: {
    checkPhone() {
      let reg =/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
      if (reg.test(this.phone)) {
        this.phoneState = "success";
        return true;
      } else {
        this.phoneState = "error";
        return false;
      }
    },
    checkPwd() {
      let reg = /^\d{6}$/;
      if (reg.test(this.upwd)) {
        this.pwdState = "success";
        return true;
      } else {
        this.pwdState = "error";
        return false;
      }
    },
    login() {
      if (this.checkPhone() & this.checkPwd()) {
        //   都验证通过后 执行登录业务
        console.log(this.phone, this.upwd);

        let param = `phone=${this.phone}&upwd=${this.upwd}`;
        this.axios.post("/users/login", param).then((res) => {
          console.log("登录结果:", res);
          if (res.data.code == 200) {
            //登录成功后 修改vuex中的state里的登录状态 保存用户名
            // 通知vuex 执行mutations中的updataLoginStatr方法 更新state
            this.$store.commit('updateLoginState',this.phone)
            
            this.$router.push("/");
            this.$toast("登录成功");
          } else {
            //登录失败
            this.$messagebox({
              title: "注意",
              message: "账号密码不正确",
            });
          }
        });
      }
    },
  },
  data() {
    return {
      phone: "",
      phoneState: "",
      upwd: "",
      pwdState: "",
    };
  },
};
</script>

<style lang="scss" scoped>
</style>