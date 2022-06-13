<template>
  <div>
    <van-search
      v-model="sousuo"
      shape="round"
      background="white"
      placeholder="请搜索你想要的课程"
    />
    <div>
      <router-link to="">
        <img src="../assets/dianping.jpg" alt="" id="dping" />
      </router-link>
      <router-view />
    </div>
    <div>
      <ul>
        <li>
          <span>动画课程</span>
          <van-grid :column-num="3">
            <van-grid-item
              v-for="xk in xueke"
              :key="xk.kid"
              icon="/public/favicon.ico"
              :text="xk.ke"
              :to="`/subject=${xk.kid}`"
            />
          </van-grid>
          <router-view />
        </li>
        <li>
          <span>学习方法论</span>
          <div class="xue">
            <div>
              <a href="">
                <img src="../assets/xue1.png" alt="" />
              </a>
            </div>
            <div>
              <a href="">
                <img src="../assets/xue2.jpg" alt="" />
              </a>
            </div>
            <div>
              <a href="">
                <img src="../assets/xue3.jpg" alt="" />
              </a>
            </div>
            <div>
              <a href="">
                <img src="../assets/xue4.jpg" alt="" />
              </a>
            </div>
          </div>
        </li>
        <li>
          <span>安全教育</span>
          <div class="anquan">
            <div>
              <a href="">
                <img src="../assets/anquan1.jpg" alt="" />
              </a>
            </div>
            <div>
              <a href="">
                <img src="../assets/anquan2.jpg" alt="" />
              </a>
            </div>
          </div>
        </li>
        <!-- <li>
          <span>智能题库</span>
        </li>
        <li>
          <span>新闻资讯</span>
        </li> -->
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      sousuo: "",
      xueke: [
        { ke: "数学", kid: "0", icon: "../assets/logo.png", towhere: "shuxue" },
        { ke: "语文", kid: "1", icon: "../assets/xueke/yuwen.ico", towhere: "yuwen" },
        { ke: "英语", kid: "2", icon: "../assets/logo.png", towhere: "yinyu" },
        { ke: "物理", kid: "3", icon: "../assets/logo.png", towhere: "wuli" },
        { ke: "化学", kid: "4", icon: "../assets/logo.png", towhere: "huaxue" },
        { ke: "政治", kid: "5", icon: "../assets/logo.png", towhere: "zhengz" },
        { ke: "地理", kid: "6", icon: "../assets/logo.png", towhere: "dili" },
        {
          ke: "生物",
          kid: "7",
          icon: "../assets/logo.png",
          towhere: "shengwu",
        },
        { ke: "历史", kid: "8", icon: "../assets/logo.png", towhere: "lishi" },
      ],
    };
  },
};
</script>

<style lang="scss" scoped>
#dping {
  width: 90vw;
  margin: 2vh auto;
  text-align: center;
}
li > span {
  font-size: 20px;
  font-weight: 800;
  margin-left: 5vw;
}
.xue {
  display: flex;
  flex-wrap: wrap;
  margin: 2vh 5vw;
  height: 16vh;
  justify-content: space-between;
  align-content: space-between;
  img {
    width: 42vw;
  }
}
.anquan {
  display: flex;
  flex-wrap: wrap;
  margin: 2vh 5vw;
  height: 19vh;
  justify-content: space-between;
  align-content: space-between;
  img {
    width: 42vw;
  }
}
</style>