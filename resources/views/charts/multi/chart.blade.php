<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
?>

<?php
$labor_data_month = DB::table('record_group')
->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
->Where('record_group.id', $id)
->where('bd_record_group.bd_id', 16)
->take(9)
->orderBy('record_details.date_2', 'DESC')
->get();
 //dd($labor_data_month);
?>


<script type="text/javascript">
var chart_opts = {
  bindto: '#chart14',
  data: {
    x : 'x',
    columns: [
      ['x', @foreach ($labor_data_month as $data1)'{{ $data1->date_2}}', @endforeach],
      ['Planned',@foreach ($labor_data_month as $data1) ({{ $data1->int_1}}), @endforeach],
      ['Actual',@foreach ($labor_data_month as $data1) ({{ $data1->int_3}}), @endforeach],
    ],

@include('charts.multi.partials.chartfooter')
var chart14 = c3.generate(chart_opts);


var chart_opts = {
  bindto: '#chart24',
  data: {
    x : 'x',
    columns: [
      ['x', @foreach ($labor_data_month as $data1)'{{ $data1->date_2}}', @endforeach],
      ['Planned',@foreach ($labor_data_month as $data1) ({{ $data1->int_2}}), @endforeach],
      ['Actual',@foreach ($labor_data_month as $data1) ({{ $data1->date_1}}), @endforeach],
    ],
@include('charts.multi.partials.chartfooter')
var chart24 = c3.generate(chart_opts);






var chart_opts = {
  bindto: '#chart300',
  data: {
        // order: 'asc',
    columns: [
      ['data1', 30, 20, 50, 40, 60, 50],
      ['data2', 200, 130, 90, 240, 130, 220],
      // ['data3', 300, 200, 160, 400, 250, 250],
      // ['data4', 200, 130, 90, 240, 130, 220],
      // ['data5', 130, 120, 150, 140, 160, 150],
      // ['data6', 90, 70, 20, 50, 60, 120],
    ],
    type: 'bar',
    types: {
      data2: 'spline',
      //              data2: 'line',
      //              data6: 'area',
    },
    groups: [
      //              ['data1','data2']
    ]
  },
  gauge: {
    //        label: {
    //            format: function(value, ratio) {
    //                return value;
    //            },
    //            show: false // to turn off the min/max labels.
    //        },
    //    min: 0, // 0 is default, //can handle negative min e.g. vacuum / voltage / current flow / rate of change
    //    max: 100, // 100 is default
    //    units: ' %',
    //    width: 39 // for adjusting arc thickness
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
var chart300 = c3.generate(chart_opts);

</script>
