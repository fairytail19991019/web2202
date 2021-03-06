import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

//全局引入axios
import axios from 'axios'
import VueAxios from 'vue-axios'
axios.defaults.baseURL='http://localhost:3000'
Vue.use(VueAxios,axios)

import { Collapse, CollapseItem } from 'vant';

Vue.use(Collapse);
Vue.use(CollapseItem);

// import Vue from 'vue' ;
import { Tab, Tabs } from 'vant';

Vue.use(Tab);
Vue.use(Tabs);

//配置mintui
import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
Vue.use(MintUI)

import {Upload} from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(Upload);

//配置vant
import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);

// 集成 swiper
// 前提先安装: npm install swiper@5.* vue-awesome-swiper@4.*
import VueAwesomeSwiper from 'vue-awesome-swiper';
import 'swiper/css/swiper.css'
Vue.use(VueAwesomeSwiper)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
