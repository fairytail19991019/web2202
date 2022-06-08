<template>
  <div>
    <van-search
      v-model="kecheng"
      shape="round"
      background="#4fc08d"
      placeholder="请搜索你想要的课程"
    />
    <van-grid :column-num="4">
      <van-grid-item
        v-for="value in 8"
        :key="value"
        icon="photo-o"
        text="文字"
      />
    </van-grid>
  </div>
</template>

<script>
export default {
  data() {
    return {
      kecheng: "",
    };
  },
};
</script>

<style lang="scss" scoped>
</style>