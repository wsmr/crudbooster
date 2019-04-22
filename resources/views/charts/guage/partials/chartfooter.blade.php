type: 'gauge',
labels: false,

onclick: function (d, i) { console.log("onclick", d, i); },
onmouseover: function (d, i) { console.log("onmouseover", d, i); },
onmouseout: function (d, i) { console.log("onmouseout", d, i); }


},
gauge: {
  label: {
    show: false // to turn off the min/max labels.
  },
  min: 0, // 0 is default, //can handle negative min e.g. vacuum / voltage / current flow / rate of change
  max: 100, // 100 is default
  //   units: ' %',
  width: 50, // for adjusting arc thickness
  expand: false,
  //   fullCircle: true,
  //   startingAngle: 2 * Math.PI,
},


color: {
  pattern: ['#60B044','#F97600'], // the three color levels for the percentage values.
  //      threshold: {
    //            unit: 'value', // percentage is default
    //            max: 200, // 100 is default
    //          values: [30, 60, 90, 100]
    //      }
  },


size: {
    height: 180,
    width: 200
  }
}
