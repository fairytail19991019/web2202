<template>
  <div id="edit">
    <!-- 个人信息页面 -->

    <!-- 顶部栏 -->
    <van-nav-bar
      title="编辑资料"
      left-text="返回"
      left-arrow
      @click-left="$router.push('/home/me')"
    />
    <van-field class="cell" name="uploader" label="个人信息">
      <template #input>
        <van-uploader>
          <van-image round width="5rem" height="5rem" src="/默认图像.jpeg">
          </van-image>
        </van-uploader>
      </template>
    </van-field>
    <van-cell-group class="cell">
      <van-cell title="昵称" value="" is-link />
    </van-cell-group>
    <van-cell-group>
      <van-cell title="收货地址" value="" is-link />
    </van-cell-group>
    <van-cell-group>
      <van-cell value-class="color" title="实名认证" value="立即认证" is-link />
    </van-cell-group>
    <van-cell-group style="">
      <van-cell title="我的兴趣" value="" is-link />
    </van-cell-group>
    <div style="height: 455px"></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // 默认图像
      uploader: [],
    };
  },
};
</script>

<style lang="scss" scoped>
.cell {
  margin-top: 15px;
}
.color{
  color: blue;
}
</style>
<style >
#edit{
  background-color: #eee;
}
.van-uploader {
  margin-top: 30px;
  margin-left: 40px;
}

</style>