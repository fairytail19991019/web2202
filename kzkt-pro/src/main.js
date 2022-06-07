import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

//全局引入axios
import axios from 'axios'
import VueAxios from 'vue-axios'
axios.defaults.baseURL='http://localhost:3000'
Vue.use(VueAxios,axios)

//配置mintui
import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
Vue.use(MintUI)

//配置vant
import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
