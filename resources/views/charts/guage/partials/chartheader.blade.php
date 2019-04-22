oninit: function(){
  d3
  .select("svg")
  .append("text")

  .attr("x", "50%" )
  .attr("y", "10%")
  .style("text-anchor", "middle")
  .text("title 1")
  .text("title 2");
},
// padding: {
//         top: 40,
//         right: 10,
//         bottom: 40,
//         left: 10,
//     },
