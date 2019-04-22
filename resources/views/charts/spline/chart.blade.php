<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
?>

<?php
// ['x', @foreach ($data_month as $data1)'{{ $data1->varchar_1}}', @endforeach],
// ['Planned',@foreach ($data_month as $data1) ({{ $data1->id}}), @endforeach],
// ['Actual',@foreach ($data_month as $data1) ({{ $data1->id}}), @endforeach],


// basic data = 10 <--- Physical Progress
$data_month = DB::table('record_group')
->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
->Where('record_group.id', $id)
->where('bd_record_group.bd_id', 10)
->get();

$fin_data_month = DB::table('record_group')
->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
->Where('record_group.id', $id)
->where('bd_record_group.bd_id', 18)
->get();

$labor_data_month = DB::table('record_group')
->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
->Where('record_group.id', $id)
->where('bd_record_group.bd_id', 16)
->get();
?>

<script>
var chart_opts = {
  bindto: '#chart2',
    data: {
      x : 'x',
        columns: [
          ['x', @foreach ($data_month as $data1)'{{ $data1->varchar_1}}', @endforeach],
          ['Planned',@foreach ($data_month as $data1) ({{ $data1->int_1}}), @endforeach],
          ['Actual',@foreach ($data_month as $data1) ({{ $data1->int_2}}), @endforeach],
        ],
@include('charts.spline.partials.chartfooter')
var chart2 = c3.generate(chart_opts);


var chart_opts = {
  bindto: '#chart6',
    data: {
      x : 'x',
        columns: [
          ['x', @foreach ($fin_data_month as $data1)'{{ $data1->varchar_1}}', @endforeach],
          ['Planned',@foreach ($fin_data_month as $data1) ({{ $data1->int_1}}), @endforeach],
          ['Actual',@foreach ($fin_data_month as $data1) ({{ $data1->int_2}}), @endforeach],
        ],
@include('charts.spline.partials.chartfooter')
var chart6 = c3.generate(chart_opts);


var chart_opts = {
  bindto: '#chart12',
    data: {
      x : 'x',
        columns: [
          ['x', @foreach ($labor_data_month as $data1)'{{ $data1->date_2}}', @endforeach],
          ['S-Planned',@foreach ($labor_data_month as $data1) ({{ $data1->int_1}}), @endforeach],
          ['S-Actual',@foreach ($labor_data_month as $data1) ({{ $data1->int_2}}), @endforeach],
          ['US-Planned',@foreach ($labor_data_month as $data1) ({{ $data1->int_3}}), @endforeach],
          ['US-Actual',@foreach ($labor_data_month as $data1) ({{ $data1->date_1}}), @endforeach],
        ],
@include('charts.spline.partials.chartheader')
var chart12 = c3.generate(chart_opts);
</script>
