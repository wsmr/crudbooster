type: 'pie',
labels: true, //bar value show inside the bar
},
pie: {

label: {

    format: function (value, ratio, id) {
        return d3.format('')(id);
      }
    }
},
tooltip: {
  format: {

      value: function (value, ratio, id) {
          if (id == 1) {
            <?php
            $hr1 = $value->hour1;
            $data1_name = DB::table('weather_status')->orWhere('id', $hr1)->value('status');?>
            var sm = '{{$data1_name}}';
          }
          if (id == 2) {
            <?php
            $hr2 = $value->hour2;
            $data2_name = DB::table('weather_status')->orWhere('id', $hr2)->value('status');?>
            var sm = '{{$data2_name}}';
          }
          if (id == 3) {
            <?php
            $hr3 = $value->hour3;
            $data3_name = DB::table('weather_status')->orWhere('id', $hr3)->value('status');?>
            var sm = '{{$data3_name}}';
          }
          if (id == 4) {
            <?php
            $hr4 = $value->hour4;
            $data4_name = DB::table('weather_status')->orWhere('id', $hr4)->value('status');?>
            var sm = '{{$data4_name}}';
          }
          if (id == 5) {
            <?php
            $hr5 = $value->hour5;
            $data5_name = DB::table('weather_status')->orWhere('id', $hr5)->value('status');?>
            var sm = '{{$data5_name}}';
          }
          if (id == 6) {
            <?php
            $hr6 = $value->hour6;
            $data6_name = DB::table('weather_status')->orWhere('id', $hr6)->value('status');?>
            var sm = '{{$data6_name}}';
          }
          if (id == 7) {
            <?php
            $hr7 = $value->hour7;
            $data7_name = DB::table('weather_status')->orWhere('id', $hr7)->value('status');?>
            var sm = '{{$data7_name}}';
          }
          if (id == 8) {
            <?php
            $hr8 = $value->hour8;
            $data8_name = DB::table('weather_status')->orWhere('id', $hr8)->value('status');?>
            var sm = '{{$data8_name}}';
          }
          if (id == 9) {
            <?php
            $hr9 = $value->hour9;
            $data9_name = DB::table('weather_status')->orWhere('id', $hr9)->value('status');?>
            var sm = '{{$data9_name}}';
          }
          if (id == 10) {
            <?php
            $hr10 = $value->hour10;
            $data10_name = DB::table('weather_status')->orWhere('id', $hr10)->value('status');?>
            var sm = '{{$data10_name}}';
          }
          if (id == 11) {
            <?php
            $hr11 = $value->hour11;
            $data11_name = DB::table('weather_status')->orWhere('id', $hr11)->value('status');?>
            var sm = '{{$data11_name}}';
          }
          if (id == 12) {
            <?php
            $hr12 = $value->hour12;
            $data12_name = DB::table('weather_status')->orWhere('id', $hr12)->value('status');?>
            var sm = '{{$data12_name}}';
          }
          if (id == 13) {
            <?php
            $hr13 = $value->hour13;
            $data13_name = DB::table('weather_status')->orWhere('id', $hr13)->value('status');?>
            var sm = '{{$data13_name}}';
          }
          if (id == 14) {
            <?php
            $hr14 = $value->hour14;
            $data14_name = DB::table('weather_status')->orWhere('id', $hr14)->value('status');?>
            var sm = '{{$data14_name}}';
          }
          if (id == 15) {
            <?php
            $hr15 = $value->hour15;
            $data15_name = DB::table('weather_status')->orWhere('id', $hr15)->value('status');?>
            var sm = '{{$data15_name}}';
          }
          if (id == 16) {
            <?php
            $hr16 = $value->hour16;
            $data16_name = DB::table('weather_status')->orWhere('id', $hr16)->value('status');?>
            var sm = '{{$data16_name}}';
          }
          if (id == 17) {
            <?php
            $hr17 = $value->hour17;
            $data17_name = DB::table('weather_status')->orWhere('id', $hr17)->value('status');?>
            var sm = '{{$data17_name}}';
          }
          if (id == 18) {
            <?php
            $hr18 = $value->hour18;
            $data18_name = DB::table('weather_status')->orWhere('id', $hr18)->value('status');?>
            var sm = '{{$data18_name}}';
          }
          if (id == 19) {
            <?php
            $hr19 = $value->hour19;
            $data19_name = DB::table('weather_status')->orWhere('id', $hr19)->value('status');?>
            var sm = '{{$data19_name}}';
          }
          if (id == 20) {
            <?php
            $hr20 = $value->hour20;
            $data20_name = DB::table('weather_status')->orWhere('id', $hr20)->value('status');?>
            var sm = '{{$data20_name}}';
          }
          if (id == 21) {
            <?php
            $hr21 = $value->hour21;
            $data21_name = DB::table('weather_status')->orWhere('id', $hr21)->value('status');?>
            var sm = '{{$data21_name}}';
          }
          if (id == 22) {
            <?php
            $hr22 = $value->hour22;
            $data22_name = DB::table('weather_status')->orWhere('id', $hr22)->value('status');?>
            var sm = '{{$data22_name}}';
          }
          if (id == 23) {
            <?php
            $hr23 = $value->hour23;
            $data23_name = DB::table('weather_status')->orWhere('id', $hr23)->value('status');?>
            var sm = '{{$data23_name}}';
          }
          if (id == 24) {
            <?php
            $hr24 = $value->hour24;
            $data24_name = DB::table('weather_status')->orWhere('id', $hr24)->value('status');?>
            var sm = '{{$data24_name}}';
          }

          return sm;
      }
//            value: d3.format(',') // apply this format to both y and y2
  }
},
legend: {
  show: false,

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
