<template>
    <div>
        <div style="width:100%;height:50px;background-color:green;">

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
                <mt-cell v-for="n in 10" :title="'内容 ' + n" />
            </mt-tab-container-item>
            <mt-tab-container-item id="2">
                <mt-cell v-for="n in 4" :title="'测试 ' + n" />
            </mt-tab-container-item>
            <mt-tab-container-item id="3">
                <mt-cell v-for="n in 6" :title="'选项 ' + n" />
            </mt-tab-container-item>
             <mt-tab-container-item id="4">
                <mt-cell v-for="n in 6" :title="'选项 ' + n" />
            </mt-tab-container-item>
        </mt-tab-container> 
            <!-- <div class="content">
      <mt-navbar class="page-part" v-model="selected">
        <mt-tab-item class="my" id="1">我发布的</mt-tab-item>
        <mt-tab-item id="2">我相关的</mt-tab-item>
      </mt-navbar> -->
      <!-- <mt-tab-container v-model="selected">
        <mt-tab-container-item id="1">
          <mt-cell :key="n" v-for="n in 10" :title="'内容 ' + n"/>  -->
          <!-- <div class="myRelease">
            <div class="myReleaseOne">
              <div class="top">
                <span>5月总裁</span>
                <span>已结束</span>
              </div>
              <div class="middle">
                <span>发起人:</span>
                <span>程小</span>
                <span>2019.05.16 11:30 - 14:30</span>
                <br>
                <span>第三会议室</span>
              </div>
              <div class="bottom">
                <span @click="this.releaseDetails">会议详情</span>
                <span @click="this.releaseAttachment">会议附件</span>
                <span @click="this.fellowIssues">跟进事项</span>
              </div>
            </div>
            <div class="btn">
              <mt-button type="default" size="large">返回新建</mt-button>
              <mt-button type="default" size="large">确认提交</mt-button>
            </div>
          </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="2">
           <mt-cell :key="n" v-for="n in 4" :title="'测试 ' + n"/> 
          <!--<div class="myRelease">
            <div class="myReleaseOne">
              <div class="top">
                <span>5月总裁2</span>
                <span>已结束</span>
              </div>
              <div class="middle">
                <span>发起人:</span>
                <span>程小</span>
                <span>2019.05.16 11:30 - 14:30</span>
                <br>
                <span>第三会议室</span>
              </div>
              <div class="bottom">
                <span @click="this.correlationDetails">会议详情</span>
                <span>会议附件</span>
                <span>跟进事项</span>
              </div>
            </div>
            <div class="btn">
              <mt-button type="default" size="large">返回新建</mt-button>
              <mt-button type="default" size="large">确认提交</mt-button>
            </div>
          </div>
        </mt-tab-container-item>
      </mt-tab-container>
    </div> -->
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
</style>