<template>
  <div>
    <van-search
      id="sear"
      v-model="sousuo"
      shape="round"
      background="white"
      placeholder="请搜索你想要的课程"
    />
    <div>
      <router-link to="/dianping">
        <img src="../assets/dianping.jpg" alt="" id="dping" />
      </router-link>
    </div>
    <div>
      <ul>
        <li>
          <span>动画课程</span>
          <van-grid :column-num="3">
            <van-grid-item
              v-for="{ kid, sname } in subject"
              :key="kid"
              :icon="`/${kid}.png`"
              :text="sname"
              :to="`/subject/${kid}`"
            />
          </van-grid>
        </li>
        <li>
          <span>学习方法论</span>
          <div class="xue">
            <div>
              <router-link to="/mydetails">
                <img src="../assets/xue1.png" alt="" />
              </router-link>
            </div>
            <div>
              <router-link to="/mydetails">
                <img src="../assets/xue2.jpg" alt="" />
              </router-link>
            </div>
            <div>
              <router-link to="/mydetails">
                <img src="../assets/xue3.jpg" alt="" />
              </router-link>
            </div><div>
              <router-link to="/mydetails">
                <img src="../assets/xue4.jpg" alt="" />
              </router-link>
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
      subject: [],
    };
  },
  mounted() {
    this.getdata();
  },
  methods: {
    // goSubject(){
    //   if(this.$route.path!='/subject'){
    //     this.$router.push('/subject/'+this.subject.kid)
    //   }
    // },
    getdata() {
      this.axios.get("/items/subject").then((res) => {
        console.log(res);
        this.subject = res.data.result;
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.sear {
  position: fixed;
  top: 0;
}

#dping {
  width:80vw;
  margin: 2vh 10vw;
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