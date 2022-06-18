<template>
  <div>
    <!-- 个人信息页面 -->

    <!-- 顶部栏 -->
    <van-nav-bar
      title="编辑资料"
      left-text="返回"
      left-arrow
      @click-left="$router.push('/home/me')"
    />
    <el-upload
      class="upload-demo"
      drag
      action="http://localhost:4000/upload"
      name="uploadFile"
      multiple
      :on-success="handleUploadSuccess"
    >
      <i class="el-icon-upload"></i>
      <div class="el-upload__text"><em>点击上传</em></div>
      <div class="el-upload__tip" slot="tip">
        只能上传jpg/png文件，且不超过500kb
      </div>
    </el-upload>
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
  </div>
</template>

<script>
import { mapMutations, mapState } from "vuex";
export default {
  computed: {
    ...mapState(["loginname"]),
  },
  methods: {
    ...mapMutations(["updateurl"]),
    handleUploadSuccess(res) {
      //当文件上传成功后触发
      console.log(res);
      const a = res.urls[0];
      this.updateurl(a);
      const parmas = `url=${a}&uname=${this.loginname}`;
      this.axios.post("/items/url", parmas).then((res) => {
        console.log(res);
        this.$router.push("/home/me");
      });
    },
  },
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
.color {
  color: blue;
}
</style>
<style >
.van-uploader {
  margin-top: 30px;
  margin-left: 40px;
}
</style>