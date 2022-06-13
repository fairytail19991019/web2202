<template>
  <div>
    <div class="top">
      <div>课程表(test)</div>
      <div class="icon"><van-icon size="30" name="calendar-o" /></div>
      <div>
        <div>今日学习<br />0分钟</div>
        <div>超过平台<br />0%学员</div>
      </div>
    </div>
    <h3>免费课</h3>
    <div>
      <span>课程</span>
      <span>视频</span>
    </div>
    <class-item />
    <class-item />
    <class-item />
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
  height: 190px;
  background-color: aqua;
  text-align: center;
  position: relative;

  .icon {
    display: inline-block;
    position: absolute;
    top: 10px;
    left: 320px;
  }

  div:last-child {
    display: flex;
    justify-content: space-around;

    div {
      display: inline-block;
      margin-top: 80px;
    }
  }
}
span {
  margin: 10px;
}
</style>
