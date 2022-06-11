<template>
  <div class="box">
    <div>
      <img src="../assets/img/01.webp" alt="" />
      <div class="text1">
        <div class="zstz-text1">
          Python零基础新手小白入门到项目实战【六星教育】
        </div>
        <div>已学1%</div>
        <div>上次学到xxx</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
div {
  display: flex;
  img {
    width: 32vw;
    height: 10vh;
    margin: 10px;
    border-radius: 5px;
  }
  .text1 {
    display: inline-block;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    color: #b6bbbf;
    .zstz-text1 {
      width: 60vw;
      display: inline-block;
      text-overflow: ellipsis;
      overflow: hidden;
      white-space: nowrap;
      font-weight: bold;
      color: black;
    }
  }
}
</style>
