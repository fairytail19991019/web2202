<template>
  <div>
    <div style="width: 100%">
      <img src="../assets/img/shouyeimg.png" alt="" style="width: 100%" />
    </div>
    <div id="kname" class="clear">
      <div id="kname1">
        <span class="kname1_1">免费</span>
        <span class="kname1_2">8125人最近报名</span>
      </div>
      <h3 class="kname1_3">抖音短视频剪辑剪映基础教程</h3>
      <div class="kname1_4">
        <img src="../assets/img/alogo.png" alt="" class="kname1_5" />
        <a href=""><span class="kname1_6">好评帮，直播电商第4名</span></a>
      </div>
    </div>
    <!-- 腾讯课堂详情页 6.10 19 -->
    <mt-navbar v-model="selected">
      <mt-tab-item id="1">介绍</mt-tab-item>
      <mt-tab-item id="2">目录</mt-tab-item>
      <mt-tab-item id="3">评价</mt-tab-item>
      <mt-tab-item id="4">推荐</mt-tab-item>
    </mt-navbar>

    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1" style="display: block">
        <div id="mt1" class="clear">
          <div class="mt1_1">
            <img class="mt1_1_1" src="../assets/img/wenjianjia.jpg" alt="" />
            <div>
              <div><span class="mt1_1_1_1">免费领取资料</span></div>
              <div><span class="mt1_1_1_2">联系老师领取干货资料</span></div>
            </div>
          </div>
        </div>
        <div it="mt1_2">
          <div style="padding: 0 16px">
            <h3 class="mt1_21">讲师介绍</h3>
          </div>
          <div id="mt1_2_1" class="clear">
            <img src="../assets/img/teacther.jpg" alt="" class="mt1_2_1_1" />
            <div>
              <p class="mt1_2_1_1_1">闽西老师</p>
              <span class="mt1_2_1_1_2"
                >视商研习创始人，手机拍摄摄影师，腾讯课堂认证讲师!</span
              >
            </div>
          </div>
        </div>
        <div style="padding: 1.15rem">
          <div>
            <h4 style="text-align: center; color: #666c80">课程详情</h4>
            <div>
              <img
                src="../assets/img/classdetail.jpg"
                alt=""
                style="width: 100%"
              />
            </div>
          </div>
        </div>
      </mt-tab-container-item>

      <mt-tab-container-item id="2" style="display: block">
        <h3 style="padding: 8px 16px; font-size: 1.14rem">课程目录</h3>
        <div class="mt2_1">
         
          <van-cell style="margin-left:0;" title="前言：为什么要学习剪映" is-link arrow-direction="down" value="内容" />
          <van-cell style="margin-left:0;" title="认识剪映的界面" is-link arrow-direction="down" value="内容" />
          <van-cell style="margin-left:0;" title="图片素材的添加和调节时长" is-link arrow-direction="down" value="内容" />
          <van-cell style="margin-left:0;" title="视频素材的添加和分割" is-link arrow-direction="down" value="内容" />
          <van-cell style="margin-left:0;" title="添加视频动画和转场效果" is-link arrow-direction="down" value="内容" />
          <van-cell style="margin-left:0;" title="关闭视频原声和添加音频效果" is-link arrow-direction="down" value="内容" />
          <van-cell style="margin-left:0;" title="关闭视频原声和添加音频效果" is-link arrow-direction="down" value="内容" />
          <van-cell style="margin-left:0;" title="真人录音和变声" is-link arrow-direction="down" value="内容" />
          <br />
          <div class="mt2_2">
            <p style="font-size: 0.8rem; color: #3e414d">APP内学习，流畅又清晰</p>
          </div>
        </div>
      </mt-tab-container-item>

      <mt-tab-container-item id="3">
        <div>
          <div class="clear" id="mt3">
            <div>
              <h3 style="font-size: 1.14rem">学员评价(6)</h3>
            </div>
            <div>
              <a href="" style="font-size:0.8rem;color:#3e414d;">查看全部</a>
            </div>
          </div>

          <div>
            <div class="clear" id="mt3_1">
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
                <p style="color: gray">
                  8个月前|已上课3小时20分钟评论 <span>五星好评</span>
                </p>
              </div>
            </div>
            <div id="mt3_1_1">
              <p style="padding: 0; margin: 0">
                很好 很喜欢老师的课程 作为一个小白 虽然不是老师的学生
                但是老师课后也会帮助我 帮我解决我的困惑 谢谢老师
              </p>
            </div>
          </div>

          <div>
            <div class="clear" id="mt3_1">
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
                <p style="color: gray">
                  8个月前|已上课3小时20分钟评论 <span>五星好评</span>
                </p>
              </div>
            </div>
            <div id="mt3_1_1">
              <p style="padding: 0; margin: 0">
                很好 很喜欢老师的课程 作为一个小白 虽然不是老师的学生
                但是老师课后也会帮助我 帮我解决我的困惑 谢谢老师
              </p>
            </div>
          </div>

          <div>
            <div class="clear" id="mt3_1">
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
                <p style="color: gray">
                  8个月前|已上课3小时20分钟评论 <span>五星好评</span>
                </p>
              </div>
            </div>
            <div id="mt3_1_1">
              <p style="padding: 0; margin: 0">
                很好 很喜欢老师的课程 作为一个小白 虽然不是老师的学生
                但是老师课后也会帮助我 帮我解决我的困惑 谢谢老师
              </p>
            </div>
          </div>
          <div>
            <div class="clear" id="mt3_1">
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
                <p style="color: gray">
                  8个月前|已上课3小时20分钟评论 <span>五星好评</span>
                </p>
              </div>
            </div>
            <div id="mt3_1_1">
              <p style="padding: 0; margin: 0">
                很好 很喜欢老师的课程 作为一个小白 虽然不是老师的学生
                但是老师课后也会帮助我 帮我解决我的困惑 谢谢老师
              </p>
            </div>
          </div>
          <div>
            <div class="clear" id="mt3_1">
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
                <p style="color: gray">
                  8个月前|已上课3小时20分钟评论 <span>五星好评</span>
                </p>
              </div>
            </div>
            <div id="mt3_1_1">
              <p style="padding: 0; margin: 0">
                很好 很喜欢老师的课程 作为一个小白 虽然不是老师的学生
                但是老师课后也会帮助我 帮我解决我的困惑 谢谢老师
              </p>
            </div>
          </div>
        </div>
      </mt-tab-container-item>

      <mt-tab-container-item id="4">
        <h3 style="padding: 12px 16px; font-size: 1.14286rem; color: #3c464f">
          授课机构
        </h3>
        <div id="mt4" class="clear">
          <img src="../assets/img/teacther.jpg" alt="" class="mt4_1" />
          <div style="padding: 12px 0px">
            <p>
              <span class="mt4_1_1">视商研习社</span>
            </p>
            <ul id="mt4_1_1_1" class="clear">
              <li>好评度100%</li>
              <li>·</li>
              <li>课程数5</li>
              <li>·</li>
              <li>学生数8571</li>
            </ul>
          </div>
        </div>
        <div
          style="display: flex; padding: 12px 16px; align-items: center"
          class="clear"
        >
          <img
            src="../assets/img/qqlog.jpg"
            alt=""
            style="width: 20px; height: 20px"
          />
          <div class="is-qq">福利群</div>
          <div class="is-qq_1">定期发放干货资料，优惠福利</div>
          <div><i></i></div>
        </div>

        <h3
          style="
            padding: 0 16px;
            font-size: 1.14286rem;
            display: flex;
            justify-content: space-between;
            color: #3e414d;
          "
        >
          关联的付费课程
          <div >
            <img src="../assets/img/tclogo.png" alt="">
            <span style="display: inline-block; font-size: 0.8rem; color: #3e414d">
            <i></i>
            获取选课建议
            </span>
          </div>
          
        </h3>

        <div>
          <div id="mt4_2">
            <div style="margin-right: 10px">
              <img
                src="../assets/img/dyjj01.jpg"
                alt=""
                style="height: 70px; width: 124px"
              />
            </div>
            <div>
              <div>
                <div>
                  <h5 style="margin: 5px 0">
                    抖音vlog短视频自媒体制作引流运营赚钱盈利全攻略实战福利课教程
                  </h5>
                </div>
                <div style="margin: 5px 0">
                  <span id="mt4_3_1">￥98</span>
                  <span style="font-size: 0.8rem">6人最近报名</span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div>
          <h3 style="padding: 0 16px; font-size: 1.14286rem">
            <span>机构课程推荐</span>
          </h3>
          <div id="mt4_3">
            <div style="margin-right: 10px">
              <img
                src="../assets/img/dyjj01.jpg"
                alt=""
                style="height: 70px; width: 124px"
              />
            </div>
            <div>
              <div>
                <div>
                  <h5 style="margin: 5px 0">
                    抖音vlog短视频自媒体制作引流运营赚钱盈利全攻略实战福利课教程
                  </h5>
                </div>
                <div style="margin: 5px 0">
                  <span id="mt4_3_1">免费</span>
                  <span style="font-size: 0.8rem">6人最近报名</span>
                </div>
              </div>
            </div>
          </div>

          <div id="mt4_3">
            <div style="margin-right: 10px">
              <img
                src="../assets/img/dyjj01.jpg"
                alt=""
                style="height: 70px; width: 124px"
              />
            </div>
            <div>
              <div>
                <div>
                  <h5 style="margin: 5px 0">
                    抖音vlog短视频自媒体制作引流运营赚钱盈利全攻略实战福利课教程
                  </h5>
                </div>
                <div style="margin: 5px 0">
                  <span id="mt4_3_1">免费</span>
                  <span style="font-size: 0.8rem">6人最近报名</span>
                </div>
              </div>
            </div>
          </div>

          <div id="mt4_3">
            <div style="margin-right: 10px">
              <img
                src="../assets/img/dyjj01.jpg"
                alt=""
                style="height: 70px; width: 124px"
              />
            </div>
            <div>
              <div>
                <div>
                  <h5 style="margin: 5px 0">
                    抖音vlog短视频自媒体制作引流运营赚钱盈利全攻略实战福利课教程
                  </h5>
                </div>
                <div style="margin: 5px 0">
                  <span id="mt4_3_1">免费</span>
                  <span style="font-size: 0.8rem">6人最近报名</span>
                </div>
              </div>
            </div>
          </div>

          <div id="mt4_3">
            <div style="margin-right: 10px">
              <img
                src="../assets/img/dyjj01.jpg"
                alt=""
                style="height: 70px; width: 124px"
              />
            </div>
            <div>
              <div>
                <div>
                  <h5 style="margin: 5px 0">
                    抖音vlog短视频自媒体制作引流运营赚钱盈利全攻略实战福利课教程
                  </h5>
                </div>
                <div style="margin: 5px 0">
                  <span id="mt4_3_1">免费</span>
                  <span style="font-size: 0.8rem">6人最近报名</span>
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
div {
  font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
}
.clear:after {
  content: “”;
  display: block;
  clear: both;
}
#kname {
  padding: 2px 16px;
}
#kname1 {
  display: flex;
  justify-content: space-between;
  margin-top: 12px;
}
.kname1_1 {
  color: #ff7a38;
  font-size: 1.14rem;
}
.kname1_2 {
  color: gray;
  font-size: 0.8rem;
}
.kname1_3 {
  margin-top: 0;
  color: #192630;
}
.kname1_4 {
  // margin-top: 0;
  padding: 12px 0;
  margin-top: 12px;
}
.kname1_5 {
  height: 1.14rem;
  width: 1.14rem;
  margin-right: 4px;
}

.kname1_6 {
  font-size: 0.86rem;
  color: gray;
  line-height: 1.14rem;
}
#mt1 {
  height: 115px;
  width: 100%;
  padding: 16px;
  display: flex;
  align-items: center;
}
.mt1_1 {
  display: flex;
}
#mt1 .mt1_1 .mt1_1_1 {
  width: 36px;
  height: 36px;
  margin-right: 10px;
}
.mt1_1_1_1 {
  font-size: 1rem;
  color: #3e414d;
}
.mt1_1_1_2 {
  font-size: 0.8rem;
  color: #666c80;
}
#mt1_2 {
  height: 136px;
  padding: 0;
  width: 100%;
}
.mt1_21 {
  color: #3c464f;
  font-size: 1.21rem;
}
#mt1_2_1 {
  padding: 0 16px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 16px;
}
.mt1_2_1_1 {
  height: 2.5rem;
  width: 2.5rem;
  margin-right: 10px;
  border-radius: 50%;
}
.mt1_2_1_1_1 {
  font-size: 0.8rem;
  margin: 2px 0;
  color: #3e414d;
}
.mt1_2_1_1_2 {
  font-size: 0.6rem;
  margin: 2px 0;
  color: #666c80;


}
.mt2_1 {
  max-height: 520px;
  margin-bottom: 30px;
  padding: 4px 16px;
  color: gray;
  margin-left: 8px;
}
.mt2_1_1 {
  padding: 4px 0;
}
.mt2_2 {
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: 600;
  color: black;
}
#mt3 {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px 16px;
}
#mt3_1 {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0px 16px;
}
#mt3_1_1 {
  padding: 0 16px;
  margin: 0 0 0 48px;
}
#mt4 {
  display: flex;
  align-items: center;
  padding: 0 16px;
}
.mt4_1 {
  width: 36px;
  height: 36px;
  margin-right: 10px;
}
.mt4_1_1 {
  font-size: 1rem;
  margin: 2px 1px;
}
#mt4_1_1_1 {
  display: flex;
  font-size: 0.75rem;
  margin: 2px 1px;
}
.is-qq {
  font-size: 1rem;
  margin: 0px 8px;
}
.is-qq_1 {
  font-size: 0.8rem;
}
#mt4_2 {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px 16px;
}
#mt4_3 {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px 16px;
}
#mt4_3_1 {
  font-size: 0.8rem;
  margin-right: 6px;
  color: #ff7a38;
}
</style>