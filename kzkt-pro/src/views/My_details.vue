<template>
    <div>
        <!-- 腾讯课堂详情页 23.48 -->
        <mt-navbar v-model="selected">
            <mt-tab-item id="1">介绍</mt-tab-item>
            <mt-tab-item id="2">目录</mt-tab-item>
            <mt-tab-item id="3">评价</mt-tab-item>
            <mt-tab-item id="4">推荐</mt-tab-item>
        </mt-navbar>

        <mt-tab-container v-model="selected">
            <mt-tab-container-item id="1">
                <!-- <mt-cell v-for="n in 10" :title="'内容 ' + n" /> -->
            </mt-tab-container-item>
            <mt-tab-container-item id="2">
                <!-- <mt-cell v-for="n in 4" :title="'测试 ' + n" /> -->
            </mt-tab-container-item>
            <mt-tab-container-item id="3">
                <!-- <mt-cell v-for="n in 6" :title="'选项 ' + n" /> -->
            </mt-tab-container-item>
             <mt-tab-container-item id="4">
                <!-- <mt-cell v-for="n in 6" :title="'选项 ' + n" /> -->
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>

<script>

    export default {
        
    }
</script>

<style lang="scss" scoped>

</style>