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

    <hr />

    <div class="hotsearch">
      <div id="main" style="width: 100vw; height: 100vw"></div>
    </div>
  </div>
</template>

<script>
import * as echarts from "echarts";
export default {
  mounted() {
    this.loadingChart();
  },
  methods: {
    loadingChart() {
      let value = [];
      this.axios.get("/items/total").then((res) => {
        console.log(res);
        for (let i=0;i<res.data.result.length;i++) {
          value.push(res.data.result[i].total);
        }
        let myChart = echarts.init(document.getElementById("main"));
        myChart.setOption({
          title: {
            text: "热门搜索",
          },
          tooltip: {
            trigger: "axis",
            axisPointer: {
              type: "shadow",
            },
          },
          legend: {},
          grid: {
            left: "3%",
            right: "4%",
            bottom: "3%",
            containLabel: true,
          },
          xAxis: {
            type: "value",
            boundaryGap: [0, 0.01],
          },
          yAxis: {
            type: "category",
            data: ["前端开发","软件测试","英语","java","Excel"],
          },
          series: [
            {
              name: "热度",
              type: "bar",
              data: value,
            },
          ],
        });
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.lastsearch {
  margin: 20px 20px;

  div:nth-child(1) {
    margin: 15px 0;
    span {
      font-weight: 600;
    }
  }

  .van-tag {
    margin: 0 10px;
  }
}

.hotsearch {
  margin: 20px 30px;

  div:nth-child(1) {
    margin: 15px 0;
    font-weight: 200;
    font-size: 14px;
  }

  :nth-child(2) {
    table {
      width: 100%;
      font-size: 16px;

      td {
        width: 70px;
        line-height: 35px;
      }
    }
  }
}
</style>