<template>
  <div>
    <div style="width: 100%">
      <img src="../assets/img/shouyeimg.png" alt="" style="width: 100%" />
    </div>
    <div class="clear" style="padding: 12px 16px">
      <div
        style="display: flex; justify-content: space-between; margin-top: 16px"
      >
        <span>免费</span>
        <span>8125人最近报名</span>
      </div>
      <div><h3>抖音短视频剪辑剪映基础教程</h3></div>
      <a href=""><img src="" alt="" />好评帮，直播电商第4名</a>
    </div>
    <!-- 腾讯课堂详情页 6.9 8.35  -->
    <mt-navbar v-model="selected">
      <mt-tab-item id="1">介绍</mt-tab-item>
      <mt-tab-item id="2">目录</mt-tab-item>
      <mt-tab-item id="3">评价</mt-tab-item>
      <mt-tab-item id="4">推荐</mt-tab-item>
    </mt-navbar>

    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        <div style="height: 115px; width: 100%; padding: 16px;display:flex;align-items: center;">
          <div style="display:flex;">
              <img src="../assets/img/wenjianjia.jpg" alt=""  style="width:36px;height:36px;margin-right:10px;">
              <div >
                  <div><span>免费领取资料</span></div>
                  <div> <span>联系老师领取干货资料</span></div>
            </div>
          </div>
        </div>
        <div style="height: 136px; padding: 16px 0; width: 100%">
          <div style="padding: 0 16px">
            <h3>讲师介绍</h3>
          </div>
          <div style="padding: 0 16px; display: inline-flex" class="clear">
            <img
              src="../assets/img/teacther.jpg"
              alt=""
              style="height: 2.5rem; width: 2.5rem"/>
            <div>
              <p>闽西老师</p>
              <span>视商研习创始人，手机拍摄摄影师，腾讯课堂认证讲师!</span>
            </div>
          </div>
        </div>
        <div style="padding: 1.15rem">
          <div>
            <h1>课程详情</h1>
            <div>
              <img
                src="../assets/img/classdetail.jpg"
                alt=""
                style="width: 100%"/>
            </div>
          </div>
        </div>
      </mt-tab-container-item>

      <mt-tab-container-item id="2">
        <h2>课程目录</h2>
        <div style="max-height: 520px; margin-bottom: 30px">   
          <div >前言：为什么要学习剪映</div>
          <div >
            <p>APP内学习，流畅又清晰</p>
          </div>
        </div>
      </mt-tab-container-item>

      <mt-tab-container-item id="3">
        <div>
          <div
            class="clear"
            style="
              display: flex;
              justify-content: space-between;
              align-items: center;
              padding: 16px 16px;">
            <div>
              <h3>学员评价</h3>
            </div>
            <div>
              <a href="">查看全部</a>
            </div>
          </div>
          <div
            class="clear"
            style="
              display: flex;
              justify-content: space-between;
              align-items: center;
              padding: 16px 16px;
            "
          >
            <!-- 用户头像 -->
            <div>
              <img
                src="../assets/img/userlog1.jpg"
                alt=""
                style="width: 32px; height: 32px"
              />
            </div>
            <!-- 昵称|时间 -->
            <div style="font-size: 1rem; line-height: 1.5rem">
              <p>***三</p>
              <p>8个月前|已上课3小时20分钟评论 <span>五星好评</span></p>
            </div>
          </div>
        </div>
        <div>
          <p>
            很好 很喜欢老师的课程 作为一个小白 虽然不是老师的学生
            但是老师课后也会帮助我 帮我解决我的困惑 谢谢老师
          </p>
        </div>
      </mt-tab-container-item>

      <mt-tab-container-item id="4">
            <h2 >授课机构</h2>
            <div style="display:flex;
              align-items: center;" class="clear">
              <img src="../assets/img/teacther.jpg" alt="" style="width:36px;height:36px;margin-right:10px;">
              <div >
                <p >
                  <span style="font-size:1rem;margin:2px 1px;">视商研习社</span>
                </p>
                <ul style="display:flex;font-size:0.75rem;;margin:2px 1px;" class="clear">
                  <li>好评度100%</li> <li >·</li><li>课程数5</li><li >·</li><li>学生数8571</li>
                </ul>
              </div>
              
            </div> 
              <div style="display:flex" class="clear">
                 <img src="../assets/img/qqlog.jpg" alt="" style="width:20px;height:20px;">
                <div><i class="is-qq"></i>福利群</div>
                <div >定期发放干货资料，优惠福利</div>
                <div ><i></i></div>
              </div>
            <h2 >关联的付费课程<span style="display: inline-block"><i></i>获取选课建议</span></h2>
           
           <div>
            <div style="display:flex;justify-content: space-between; align-items: center;padding:16px 16px;">
            <div style="margin-right:10px;">
                <img src="../assets/img/dyjj01.jpg" alt="" style="height:70px;width:124px;">
            </div>
            <div >
              <div>
                <div >
                  <h5  style="margin:5px 0;">
                    抖音vlog短视频自媒体制作引流运营赚钱盈利全攻略实战福利课教程
                  </h5>
                </div>
                  <div style="margin:5px 0;">
                    <span style="font-size:0.8rem;">免费</span>
                    <span style="font-size:0.8rem;">6人最近报名</span>
                  </div>
              </div>
            </div>
          </div>
          </div>
          <div>
            <h2 >
              机构课程推荐<span><i></i>获取选课建议</span> 
            </h2>
            <div style="display:flex;justify-content: space-between;align-items: center;padding:16px 16px;">
            <div style="margin-right:10px;">
                <img src="../assets/img/dyjj01.jpg" alt="" style="height:70px;width:124px;">
            </div>
            <div >
              <div>
                <div >
                  <h5  style="margin:5px 0;">
                    抖音vlog短视频自媒体制作引流运营赚钱盈利全攻略实战福利课教程
                  </h5>
                </div>
                  <div style="margin:5px 0;">
                    <span style="font-size:0.8rem;">免费</span>
                    <span style="font-size:0.8rem;">6人最近报名</span>
                  </div>
              </div>
            </div>
          </div>
          </div>
      </mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>

<script>
export default {
  data() {
    return {
      selected: 1,
    };
  },
};
</script>

<style lang="scss" >
.clear:after {
  content: “”;

  display: block;

  clear: both;
}

</style>