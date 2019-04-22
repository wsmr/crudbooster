<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
?>

@extends('crudbooster::admin_template')
@section('content')


<!-- C3 Charts scripts -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.6.12/c3.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.6.12/c3.min.js"></script>

<!-- D3 Charts scripts -->
<script src="https://d3js.org/d3.v5.js"></script>

<?php
  $data4 = DB::table('weather_data')
  ->join('weather_status', 'weather_data.status_id', '=', 'weather_status.id')
  ->where('date', $date)
  ->pluck('color','hour')
  ->toArray();
?>




<div class="row">

  <div class='col-md-12'>
    <div class="panel panel-primary" style="font-size:30px; text-align: center;">
      <div class="panel-heading"> WEATHER SUMMERY - <?php echo date('Y-M-d');?>
        <button type="button" style="float: right;" class="btn btn-warning" onclick="window.location='{{ route('print-chart',['download'=>'pdf']) }}'">Export Data</button>
      </div><!-- /.panel-heading -->
    </div><!-- /.panel panel-primary -->
  </div>

  <div class='row'>
    <div class='col-md-12'>

      @foreach($date as $date)
      <div>
        {!!$date!!}
      </div>

      <?php
      $chart = ['chart1','chart2'];
      ?>

      @foreach($chart as $chart)

      <div class='col-md-4'>
        @include('box.partials.boxheader')
        <h3 class="box-title">C3 pie Chart</h3>
        @include('box.partials.boxtool')
        <div class="box-body">
          <div id="{!!$chart!!}" style="width:300px; height:300px;"></div><!-- /.chart -->
        </div><!-- /.box-body -->
        @include('box.partials.boxfooter')
      </div><!-- /.col-md-4 -->

<span>
  <script>

    var chart_opts = {
        bindto: '#{{$chart}}',
        @include('charts.pie.partials.chartheader')

        colors: {
              data1: '#000000',
              data2: '#1f77b4',
              data3: '#008000'
            },
        columns: [
          ['data1', 1,20],          //data values sum to data1
          ['data2', 30],
          ['data3', 40]
        ],


        @include('charts.pie.partials.chartfooter')
    var {{$chart}} = c3.generate(chart_opts);
  </script>
</span>

      @endforeach
      @endforeach

  </div><!-- /.col-md-12 -->
</div><!-- /.row -->

@endsection
