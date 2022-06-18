import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    path:sessionStorage.getItem('path'),
    loginname:sessionStorage.getItem('name'),  //存储登录用户信息
    kid:null,
    issold:sessionStorage.getItem('issold'),
    url:sessionStorage.getItem("url")
  },
  getters: {
  },
  mutations: {
    updatepath(state,path){
      state.path=path
      sessionStorage.setItem('patn',path)
    },
    updateurl(state,url){
      state.url=url
      sessionStorage.setItem('url',url)
    },
    updateissold(state,issold){
      state.issold=issold
      sessionStorage.setItem('issold',issold)
    },
    updateKid(state,kid){
      state.kid=kid
    },
    updateLoginState(state,payload){ //修改登录状态
      // 将调用当前方法传过来的参数(用户名)赋值给state.loginname
      state.loginname=payload
      //将用户名存入sessionStorage  刷新网页依然存在
      sessionStorage.setItem('name',payload)
    },
    quit(state){
      state.loginname=null
      sessionStorage.removeItem('name')
    }
  },
  actions: {
  },
  modules: {
  }
})
