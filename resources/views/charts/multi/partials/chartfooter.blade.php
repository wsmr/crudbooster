type: 'bar',
types: {
  Planned: 'spline',
  //              data2: 'line',
  //              data6: 'area',
},
groups: [
  //              ['data1','data2']
]
},
axis: {
x: {
  type: 'timeseries',
  tick: {
    rotate: 85,
    format: '%Y-%m-%d',
    multiline: false
  },
  height: 130
}
},
bar: {
  space: 3.01,
    width: {
        ratio: 0.4 // this makes bar width 50% of length between ticks
    }
    // or
    //width: 100 // this makes bar width 100px
},
color: {
    pattern: ['#60B044','#F97600', '#60B044','#F97600'], // the three color levels for the percentage values.
//      threshold: {
//            unit: 'value', // percentage is default
//            max: 200, // 100 is default
//          values: [30, 60, 90, 100]
//      }
},
}
