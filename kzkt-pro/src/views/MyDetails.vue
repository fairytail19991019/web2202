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
    <!-- 腾讯课堂详情页 6.8 10.05  -->
    <mt-navbar v-model="selected">
      <mt-tab-item id="1">介绍</mt-tab-item>
      <mt-tab-item id="2">目录</mt-tab-item>
      <mt-tab-item id="3">评价</mt-tab-item>
      <mt-tab-item id="4">推荐</mt-tab-item>
    </mt-navbar>

    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        <div style="height: 115px; width: 100%; padding: 16px">
          <div>
            <img src="" alt="" />
            <div>
              <span>免费领取资料</span>
              <span>联系老师领取干货资料</span>
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
              style="height: 2.5rem; width: 2.5rem"
            />
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
                style="width: 100%"
              />
            </div>
          </div>
        </div>
      </mt-tab-container-item>
      <mt-tab-container-item id="2">
        <h2 class="section-tt">课程目录</h2>
        <div style="max-height: 520px; margin-bottom: 30px">
          <div class="collapse-content">
            <ul>
              <li class="sub-chapter">
                <div class="chapter-header">
                  <i class="icon-css-v icon-css-v--top" aria-hidden="true"></i>
                  <div class="sub-title suffix-0">前言：为什么要学习剪映</div>
                </div>
                <ul class="task-items">
                  <li class="task-item active" id="10647902534546388">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647902534546388"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/d6fe74aeb0bf793b940a34221424ca64.png"
                          alt="activeReplay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">为什么要学习剪映</div>
                        </div>
                        <div class="task-des">3分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">认识剪映的界面</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647906829513684">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647906829513684"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">认识剪映的界面</div>
                        </div>
                        <div class="task-des">6分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">图片素材的添加和调节时长</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647911124480980">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647911124480980"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">图片素材的添加和调节时长</div>
                        </div>
                        <div class="task-des">3分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">视频素材的添加和分割</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647915419448276">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647915419448276"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">视频素材的添加和分割</div>
                        </div>
                        <div class="task-des">4分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">添加视频动画和转场效果</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647919714415572">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647919714415572"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">添加视频动画和转场效果</div>
                        </div>
                        <div class="task-des">4分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">关闭视频原声和添加音频效果</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647924009382868">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647924009382868"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">
                            关闭视频原声和添加音频效果
                          </div>
                        </div>
                        <div class="task-des">5分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">真人录音和变声</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647928304350164">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647928304350164"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">真人录音和变声</div>
                        </div>
                        <div class="task-des">5分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">添加文本字幕</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647932599317460">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647932599317460"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">添加文本字幕</div>
                        </div>
                        <div class="task-des">5分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">自动识别字幕和文本朗读</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647936894284756">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647936894284756"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">自动识别字幕和文本朗读</div>
                        </div>
                        <div class="task-des">4分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">视频比例调节和设置专属背景</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647941189252052">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647941189252052"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">
                            视频比例调节和设置专属背景
                          </div>
                        </div>
                        <div class="task-des">4分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">如何添加画中画和特效</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647945484219348">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647945484219348"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">如何添加画中画和特效</div>
                        </div>
                        <div class="task-des">5分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
              <li class="sub-chapter">
                <div class="chapter-header list-hide">
                  <i
                    class="icon-css-v icon-css-v--bottom"
                    aria-hidden="true"
                  ></i>
                  <div class="sub-title suffix-0">
                    <div class="sub-name">变速和蒙版功能</div>
                  </div>
                </div>
                <ul class="task-items hide">
                  <li class="task-item" id="10647949779186644">
                    <a
                      class="task-link"
                      href="https://m.ke.qq.com/course/2929620/10647949779186644"
                      ><div class="task-type">
                        <img
                          class="task-icon"
                          src="//7.idqqimg.com/edu/mobilev2/m-core/f1c59a1527e075f6ebfba3d7ac605f07.png"
                          alt="replay"
                        />
                      </div>
                      <div class="task-content">
                        <div class="task-title">
                          <div class="task-index">1.</div>
                          <div class="task-name">变速和蒙版功能</div>
                        </div>
                        <div class="task-des">5分钟</div>
                      </div></a
                    >
                  </li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="collapse-btn">
            <p class="collapse-virtual"></p>
            <p class="collapse-tip">APP内学习，流畅又清晰</p>
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
              padding: 16px 16px;
            "
          >
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
        <div class="comment-msg-wrap">
          <p>
            很好 很喜欢老师的课程 作为一个小白 虽然不是老师的学生
            但是老师课后也会帮助我 帮我解决我的困惑 谢谢老师
          </p>
        </div>
      </mt-tab-container-item>

      <mt-tab-container-item id="4">

       
            <h2 class="section-tt">授课机构</h2>
            <div style="display:flex;
              align-items: center;" class="clear">
              <img src="../assets/img/teacther.jpg" alt="" style="width:36px;height:36px;margin-right:10px;">
              <div class="agency-desc">
                <p class="agency-name">
                  <span style="font-size:1rem;margin:2px 1px;">视商研习社</span>
                </p>
                <ul style="display:flex;font-size:0.75rem;;margin:2px 1px;" class="clear">
                 
                  <li>好评度<!-- -->100%</li>
                  <li class="slash">·</li>
                  <li>课程数<!-- -->5</li>
                  <li class="slash">·</li>
                  <li>学生数<!-- -->8571</li>
                </ul>
              </div>
              
            </div>
            


              
              <div style="display:flex" class="clear">
                 <img src="../assets/img/qqlog.jpg" alt="" style="width:20px;height:20px;">
                <div class="list-item-left"><i class="is-qq"></i>福利群</div>
                <div class="list-item-center">定期发放干货资料，优惠福利</div>
                <div class="list-item-right"><i></i></div>
              </div>

                

              

            
          
          <section class="section related-courses">
            <h2 class="section-tt">
              关联的<!-- -->付费<!-- -->课程<span
                class="yjl-contact-btn"
                style="display: inline-block"
                ><i></i>获取选课建议</span
              >
            </h2>
           
           <div>
            
            <div style="display:flex;justify-content: space-between;
              align-items: center;padding:16px 16px;">
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

          </section>



          <div>
            <h2 class="section-tt">
              机构课程推荐<span class="yjl-contact-btn"
                ><i></i>获取选课建议</span
              > 
            </h2>
            <div style="display:flex;justify-content: space-between;
              align-items: center;padding:16px 16px;">
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

<style lang="scss" scoped>
.clear:after {
  content: “”;

  display: block;

  clear: both;
}
</style>