import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/subject/:kid',
    props:true,
    name: "subject",
    component: () => import('../views/Subject.vue')
  },
  {
    path: '/search',
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
  },
  {
    path: '/setting',
    name: 'setting',
    component: () => import('../views/Setting.vue'),
    meta: {
      title: '空中课堂-设置'
    }
  },
  {
    path: '/edit',
    name: 'edit',
    component: () => import('../views/Edit.vue'),
    meta: {
      title: '空中课堂-编辑'
    }
  },
  {
    path: '/login',
    name: 'login',
    component: () => import('../views/Login.vue'),
    meta: {
      title: '空中课堂-登录'
    }
  },
  {
    path: '/register',
    name: 'register',
    component: () => import('../views/Register.vue'),
    meta: {
      title: '空中课堂-注册'
    }
  },
  {
    path: '/mydetails',
    name: 'MyDetails',
    component: () => import('../views/MyDetails.vue'),
    meta: {
      title: '空中课堂-课程详情'
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
        title: '空中课堂-首页'
      },
      path: 'index',
      name: "index",
      props: true,
      component: () => import('../views/MyIndex.vue')
    },
    {
      meta: {
        keepAlive: true,//指明当前路由需要保活
        title: '空中课堂-涨知识'
      },
      path: 'knowdge',
      name: "knowdge",
      component: () => import('../views/MyKnowdge.vue')
    },
    {
      meta: {
        keepAlive: true,//指明当前路由需要保活
        title: "空中课堂-课程表"
      },
      path: 'class',
      name: "class",
      component: () => import('../views/MyClass.vue')
    },
    {
      meta: {
        keepAlive: true,//指明当前路由需要保活
        title: "空中课堂-我的"
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

router.beforeEach((to, from, next) => {
  document.title = to.meta.title
  next()
})
export default router
