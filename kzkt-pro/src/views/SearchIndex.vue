<template>
  <div>

    <div class="lastsearch">
      <div>
        <span>最近搜索</span>
      </div>
      <div>
        <van-tag plain type="primary" size="large">语文</van-tag>
        <van-tag plain type="primary" size="large">数学</van-tag>
        <van-tag plain type="primary" size="large">英语</van-tag>
      </div>
    </div>

    <hr>

    <div class="hotsearch">
      <div>热门搜索</div>
      <div>
        <table>
          <tr>
            <td>1.数学</td>
            <td>2.python</td>
          </tr>
          <tr>
            <td>3.数学</td>
            <td>4.asdasdfffsdf</td>
          </tr>
        </table>
      </div>
    </div>

  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.lastsearch{
  margin: 20px 20px;

  div:nth-child(1){
    margin: 15px 0;
    span{
      font-weight: 600;
    }
  }

  .van-tag{
    margin: 0 10px;
  }
}

.hotsearch{
  margin: 20px 30px;

  div:nth-child(1){
    margin: 15px 0;
    font-weight: 200;
    font-size: 14px;
  }

  :nth-child(2){
    
    table{

      width: 100%;
      font-size: 16px;
      

      td{
        width: 70px;
        line-height: 35px;
      }
    }
  }
}
</style>