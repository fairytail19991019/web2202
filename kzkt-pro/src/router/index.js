import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/search',
<<<<<<< HEAD
    name: 'search',
    component: () => import('../views/Search.vue'),
    meta:{
      title:'空中课堂-搜索'
    }
=======
    redirect:'/search/search_index',
    name: 'search',
    component: () => import('../views/Search.vue'),
    meta: {
      title: '空中课堂-搜索'
    },
    children: [
      {
        path: 'search_results/:kw',
        props:true,
        name: 'search_results',
        component: () => import('../views/SearchResults.vue'),
        meta: {
          title: "空中课堂-查询结果"
        }
      },
      {
        path: 'search_index',
        name: 'search_index',
        component: () => import('../views/SearchIndex.vue'),
        meta: {
          title: "空中课堂-查询首页"
        }
      },
    ]
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
  },
  {
    path: '/setting',
    name: 'setting',
    component: () => import('../views/Setting.vue'),
<<<<<<< HEAD
    meta:{
      title:'空中课堂-设置'
=======
    meta: {
      title: '空中课堂-设置'
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
    }
  },
  {
    path: '/edit',
    name: 'edit',
    component: () => import('../views/Edit.vue'),
<<<<<<< HEAD
    meta:{
      title:'空中课堂-编辑'
=======
    meta: {
      title: '空中课堂-编辑'
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
    }
  },
  {
    path: '/login',
    name: 'login',
    component: () => import('../views/Login.vue'),
<<<<<<< HEAD
    meta:{
      title:'空中课堂-登录'
=======
    meta: {
      title: '空中课堂-登录'
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
    }
  },
  {
    path: '/register',
    name: 'register',
    component: () => import('../views/Register.vue'),
<<<<<<< HEAD
    meta:{
      title:'空中课堂-注册'
=======
    meta: {
      title: '空中课堂-注册'
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
    }
  },
  {
    path: '/mydetails',
    name: 'MyDetails',
    component: () => import('../views/MyDetails.vue'),
<<<<<<< HEAD
    meta:{
      title:'空中课堂-课程详情'
=======
    meta: {
      title: '空中课堂-课程详情'
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
    }
  },
  {
    path: '/',
    redirect: '/home/index'
  },
  {
    path: '/home',
    name: 'home',
    component: HomeView,
    children: [{
      meta: {
        keepAlive: true,//指明当前路由需要保活
<<<<<<< HEAD
        title:'空中课堂-首页'
=======
        title: '空中课堂-首页'
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
      },
      path: 'index',
      name: "index",
      props: true,
      component: () => import('../views/MyIndex.vue')
    },
    {
      meta: {
        keepAlive: true,//指明当前路由需要保活
<<<<<<< HEAD
        title:'空中课堂-涨知识'
=======
        title: '空中课堂-涨知识'
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
      },
      path: 'knowdge',
      name: "knowdge",
      component: () => import('../views/MyKnowdge.vue')
    },
    {
      meta: {
        keepAlive: true,//指明当前路由需要保活
<<<<<<< HEAD
        title:"空中课堂-课程表"
=======
        title: "空中课堂-课程表"
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
      },
      path: 'class',
      name: "class",
      component: () => import('../views/MyClass.vue')
    },
    {
      meta: {
        keepAlive: true,//指明当前路由需要保活
<<<<<<< HEAD
        title:"空中课堂-我的"
=======
        title: "空中课堂-我的"
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
      },
      path: 'me',
      name: "me",
      component: () => import('../views/MyMe.vue')
    }]
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

<<<<<<< HEAD
router.beforeEach((to,from,next)=>{
  document.title=to.meta.title
=======
router.beforeEach((to, from, next) => {
  document.title = to.meta.title
>>>>>>> 0570e7a6953497641ffb62b9b2cad33ae0178ddc
  next()
})
export default router
