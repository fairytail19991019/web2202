<template>
    <div>
        <div style="width:100%;">
          <img src="../assets/img/shouyeimg.png" alt="" style="width:100%;">
        </div>
         <div class="clear" style="padding:12px 16px;">
                 <div style="display:flex;justify-content: space-between; margin-top:16px;">
                    <span>免费</span>
                    <span>8125人最近报名</span>
                  </div>
                  <div><h3>抖音短视频剪辑剪映基础教程</h3></div>
                  <a href=""><img src="" alt="">好评帮，直播电商第4名</a>
              </div>
        <!-- 腾讯课堂详情页 6.8 10.05  -->
        <mt-navbar v-model="selected">
            <mt-tab-item id="1">介绍</mt-tab-item>
            <mt-tab-item id="2">目录</mt-tab-item>
            <mt-tab-item id="3">评价</mt-tab-item>
            <mt-tab-item id="4">推荐</mt-tab-item>
        </mt-navbar>

        <mt-tab-container v-model="selected">
            <mt-tab-container-item id="1">
             
                 <div style="height:115px;width:100%;padding:16px;">
                    <div>
                      <img src="" alt="">
                      <div>
                        <span>免费领取资料</span>
                        <span>联系老师领取干货资料</span>
                      </div>
                    </div>
                 </div>
                 <div style="height:136px;padding:16px 0;width:100%;">
                    <div style="padding:0 16px">
                      <h3>讲师介绍</h3>
                    </div>
                    
                    <div  style="padding:0 16px;display:inline-flex" class="clear">
                      <img src="../assets/img/teacther.jpg" alt="" style="height:2.5rem;width:2.5rem;">
                      <div>
                        <p>闽西老师</p>
                        <span>视商研习创始人，手机拍摄摄影师，腾讯课堂认证讲师!</span>
                      </div>
                    </div>
                 </div>
                 <div style="padding:1.15rem;">
                   <div>
                     <h1>课程详情</h1>
                     <div >
                       <img src="../assets/img/classdetail.jpg" alt="" style="width:100%;">
                     </div>
                   </div>
                 </div>
               
            </mt-tab-container-item>
   
    </div>
</template>

<script>
// import { Navbar, TabItem } from 'mint-ui';
// Vue.component(Navbar.name, Navbar);
// Vue.component(TabItem.name, TabItem);
    export default {
        data() {
            return {
                selected: 1,
            }
        },
        
    }
</script>

<style lang="scss" scoped>
.clear:after{
content: “”;

display: block;

clear: both;

}
</style>
