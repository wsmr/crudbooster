<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
?>

<?php
// ['x', @foreach ($data_month as $data1)'{{ $data1->varchar_1}}', @endforeach],
// ['Planned',@foreach ($data_month as $data1) ({{ $data1->id}}), @endforeach],
// ['Actual',@foreach ($data_month as $data1) ({{ $data1->id}}), @endforeach],


// basic data = 11 <--- Financial Status
$phy_actual = DB::table('record_group')
->orderBy('int_1', 'DESC')
->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
->Where('record_group.id', $id)
->where('bd_record_group.bd_id', 10)
->first();
$phy_planned = DB::table('record_group')
->orderBy('int_2', 'DESC')
->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
->Where('record_group.id', $id)
->where('bd_record_group.bd_id', 10)
->first();

$fin_actual = DB::table('record_group')
->orderBy('int_1', 'DESC')
->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
->Where('record_group.id', $id)
->where('bd_record_group.bd_id', 18)
->first();
$fin_planned = DB::table('record_group')
->orderBy('int_2', 'DESC')
->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
->Where('record_group.id', $id)
->where('bd_record_group.bd_id', 18)
->first();

// dd($data_month->int_1);
?>


<script type="text/javascript">


var chart_opts = {

  bindto: '#chart3',
  data: {
    columns: [
      ['Planned', {{$phy_actual->int_1}}],
      ['Actual',{{$phy_planned->int_2}}]
    ],
    type: 'gauge',
    onclick: function (d, i) { console.log("onclick", d, i); },
    onmouseover: function (d, i) { console.log("onmouseover", d, i); },
    onmouseout: function (d, i) { console.log("onmouseout", d, i); },
    onrendered: function() {
      d3.selectAll(".c3-chart-arc text").each(function(v) {
        var label = d3.select(this);
        var pos = label.attr("transform").match(/-?\d+(\.\d+)?/g);

        // pos[0] is x, pos[1] is y. Do some position changes and update value
        label.attr("transform", "translate("+ pos[50] +","+ pos[50] +")");
      });
    }
  },
  gauge: {
    @include('charts.guage.partials.chartlabel')
  },

  @include('charts.guage.partials.chartcolor')
  size: {
    height: 180,
    width: 200
  },
  legend:{
//        position: 'top',
    inset: {
anchor: 'top-right',
x: 20,
y: 10,
step: 2
},
    format: function (value) { return value; },
    show:true
  }
}

    var chart4 = c3.generate(chart_opts);


    var chart_opts = {
      bindto: '#chart4',
      data: {
        columns: [
          ['Planned', {{$fin_actual->int_1}}],
          ['Actual',{{$fin_planned->int_2}}]
        ],
        type: 'gauge',
        onclick: function (d, i) { console.log("onclick", d, i); },
        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
        onmouseout: function (d, i) { console.log("onmouseout", d, i); },
        onrendered: function() {
          d3.selectAll(".c3-chart-arc text").each(function(v) {
            var label = d3.select(this);
            var pos = label.attr("transform").match(/-?\d+(\.\d+)?/g);

            // pos[0] is x, pos[1] is y. Do some position changes and update value
            label.attr("transform", "translate("+ pos[50] +","+ pos[50] +")");
          });
        }
      },
      gauge: {
        @include('charts.guage.partials.chartlabel')
      },

      @include('charts.guage.partials.chartcolor')
      size: {
        height: 180,
        width: 200
      },
      legend:{
//        position: 'top',
        inset: {
    anchor: 'top-right',
    x: 20,
    y: 10,
    step: 2
  },
        format: function (value) { return value; },
        show:true
      }
    }
    var chart3 = c3.generate(chart_opts);
    </script>
