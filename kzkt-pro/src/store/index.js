import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    loginname:sessionStorage.getItem('phone'),  //存储登录用户信息
  },
  getters: {
  },
  mutations: {
    updateLoginState(state,payload){ //修改登录状态
      // 将调用当前方法传过来的参数(用户名)赋值给state.loginname
      state.loginname=payload
      //将用户名存入sessionStorage  刷新网页依然存在
      sessionStorage.setItem('name',payload)
    }
  },
  actions: {
  },
  modules: {
  }
})
