import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/mydetails',
    name: 'MyDetails',
    component: () => import('../views/MyDetails.vue'),
  },
  {
    path: '/',
    redirect:'/home/index'
  },
  {
    path: '/home',
    name: 'home',
    component: HomeView,
    children: [{
      path: 'index',
      name: "index",
      component: () => import('../views/MyIndex.vue')
    },
    {
      path: 'knowdge',
      name: "knowdge",
      component: () => import('../views/MyKnowdge.vue')
    },
    {
      path: 'class',
      name: "class",
      component: () => import('../views/MyClass.vue')
    },
    {
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

export default router
