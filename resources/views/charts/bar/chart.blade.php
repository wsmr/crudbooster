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
  $data_month = DB::table('record_group')
  ->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
  ->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
  ->Where('record_group.id', $id)
  ->where('bd_record_group.bd_id', 11)
  ->get();



?>

<script>
var chart_opts = {
  bindto: '#chart1',

    data: {
      x : 'x',
        columns: [
          ['x', @foreach ($data_month as $data1)'{{ $data1->id}}', @endforeach],
          ['Submitted Value',@foreach ($data_month as $data1) {{ $data1->int_1}} , @endforeach],
          ['Payment Received',@foreach ($data_month as $data1) {{ $data1->int_2}} , @endforeach],
        ],
        type: 'bar'
    },
    axis: {
  x: {
    type: 'category',
    tick: {
            rotate: 85,
            multiline: false
          },
    height: 30
  }
},
}
var chart1 = c3.generate(chart_opts);

</script>
