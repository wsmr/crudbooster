type: 'pie',
labels: true, //bar value show inside the bar
},
pie: {
label: {
    format: function (value, ratio, id) {
        return d3.format('')(value);

    }
}
},
tooltip: {
  format: {
      title: function (d) { return 'Data ' + d; },
      value: function (value, ratio, id) {
              return {!!$status!!};
      }
//            value: d3.format(',') // apply this format to both y and y2
  }
},
legend: {
  show: true,

  // amount of padding to put between each legend element
  padding: 5,
  // define custom height and width for the legend item tile
  item: {
    tile: {
        width: 12,
        height: 2
    }
  }
},
onrendered: function() {
  d3.selectAll(".c3-chart-arc text").each(function(v) {
  var label = d3.select(this);
  var pos = label.attr("transform").match(/-?\d+(\.\d+)?/g);

  // pos[0] is x, pos[1] is y. Do some position changes and update value
  label.attr("transform", "translate("+ pos[0] +","+ pos[1] +")");
  });


    }
}
