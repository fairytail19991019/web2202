<template>
  <div>
    <header>
      <mt-header title="集合" style="height: 50px; font-size: 20px">
        <router-link :to="$store.state.path" slot="left">
          <mt-button icon="back" style="font-size: 20px">返回</mt-button>
        </router-link>
        <mt-button icon="" slot="right"></mt-button>
      </mt-header>
    </header>

    <div class="toujing">
      <img src="../assets/yuwen14.jpg" alt="" />
    </div>

    <div class="neirong">
      <h2>集合</h2>
      <p>
        集合，简称集，是数学中一个基本概念，也是集合论的主要研究对象。集合论的基本理论创立于19世纪，关于集合的最简单的说法就是在朴素集合论（最原始的集合论）中的定义，即集合是“确定的一堆东西”，集合里的“东西”则称为元素。现代的集合一般被定义为：由一个或多个确定的元素所构成的整体。
      </p>
      <br />
      <div class="qian">
        <h3 style="color: red">￥99</h3>
        <div>
          <i style="color:blue">28939</i>人已购买
        </div>
      </div>
      <br>
      <div class="xiaokuang">
          <div>必修4</div>
          <div>高中数学</div>
          <div>新高一</div>
          <div>高考必备</div>
          <div>有效期1年</div>
      </div>
    </div>

    <div class="footr">
      <van-button round type="danger" size="large">￥99购买</van-button>
    </div>
  </div>
</template>

<script>
export default {
};
</script>

<style>
.toujing > img {
  width: 100vw;
}
.neirong {
  margin: 5px 14px;
}
.qian {
  display: flex;
  justify-content: space-between;
}
.xiaokuang{
    display: flex;
    justify-content: space-around;
}
.xiaokuang>div{
    background-color: rgb(174, 211, 255);
    border: 1px solid blue;
    border-radius: 10px;

}
.footr {
  position: fixed;
  bottom: 0px;
  width: 100vw;
  background-color: white;
}
</style>