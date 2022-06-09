<template>
  <div class="box">
    <div>
      <img src="/kzkt-pro/src/assets/img/dyjj01.jpg" alt="" />
      <div class="text1">
        <div>标题</div>
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
    width: 178px;
    height: 100px;
  }
  .text1 {
    display: inline-block;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
  }
}
</style>
