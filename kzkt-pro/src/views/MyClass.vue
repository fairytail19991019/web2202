<template>
  <div>
    <div class="top">
      <h3>课程表（test）</h3>
      <div class="icon"><van-icon size="30" name="calendar-o" /></div>
      <div class="header-boxall">
        <div class="header-box1">
          <span class="header-tittle1">今日学习</span><br /><span
            class="header-tittle2"
            >0分钟</span
          >
        </div>
        <div class="header-box1">
          <span class="header-tittle1">超过平台</span><br /><span
            class="header-tittle2"
            >0%学员</span
          >
        </div>
      </div>
      <div class="extra-color"></div>
    </div>
    <div class="middle">
      <h3>免费课</h3>
      <div><span>视频</span><span>课程</span></div>

      <class-item />
      <class-item />
      <class-item />
      <class-item />
    </div>
  </div>
</template>

<script>
import ClassItem from "../components/ClassItem.vue";
export default {
  components: { ClassItem },
};
</script>

<style lang="scss" scoped>
.top {
  width: 100%;
  height: 21vh;
  background-image: linear-gradient(#b6d4f8, #e0ecfa);
  text-align: center;
  position: relative;

  h3 {
    margin: 0;
    padding-top: 1vh;
  }

  .icon {
    display: inline-block;
    position: absolute;
    top: 10px;
    left: 320px;
  }

  .header-boxall {
    margin-top: 5vh;
    display: flex;
    justify-content: space-around;

    .header-box1 {
      .header-tittle1 {
        display: inline-block;
        color: #71819a;
        text-align: center;
      }
      .header-tittle2 {
        color: #162129;
      }
    }
  }
  .extra-color {
    background-color: #fff;
    width: 100%;
    margin-top: 5.8vh;
    height: 20px;
    border-radius: 10px;
  }
}

.middle {
  span {
    margin: 10px;
  }
}
</style>
