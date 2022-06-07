import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

//全局引入axios
import axios from 'axios'
import VueAxios from 'vue-axios'
axios.defaults.baseURL='http://localhost:3000'
Vue.use(VueAxios,axios)

// 引入导航栏 模块
import { Navbar, TabItem } from 'mint-ui';
Vue.component(Navbar.name, Navbar);
Vue.component(TabItem.name, TabItem);

//配置mintui
import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
Vue.use(MintUI)

//配置vant
import Vant from 'vant';
import 'vant/lib/index.css';
import vueConfig from 'vue.config'
Vue.use(Vant);

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
