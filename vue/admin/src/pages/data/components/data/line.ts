export default {
  title: {
    text: '最近访问量'
  },
  color: ["#2e4783"],
  tooltip: {
    trigger: 'axis',
    axisPointer: {
      type: 'cross',
      label: {
        backgroundColor: '#6a7985'
      }
    }
  },
  toolbox: {
    feature: {
      saveAsImage: {}
    }
  },
  xAxis: {
    type: 'category',
    data: [""],
  },
  yAxis: {
    type: 'value',
    axisLabel: {
      formatter: '{value} 次'
    }
  },
  series: {
    data: [0],
    type: 'line',
    markPoint: {
      data: [
        { type: 'max', name: 'Max' },
        { type: 'min', name: 'Min' }
      ]
    },
    markLine: {
      data: [{ type: 'average', name: 'Avg' }]
    }
  }
}