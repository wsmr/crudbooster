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
      <?php
        $data4 = DB::table('weather_data')
        ->join('weather_status', 'weather_data.status_id', '=', 'weather_status.id')
        ->where('date', $date)
        ->pluck('color','hour')
        ->toArray();
      ?>


      <?php

        // convert date and time to seconds
        $sec = strtotime($date);

        // convert seconds into a specific format
        //$date = date("Y-m-d H:i", $sec);
        $d = date("Ymd", $sec);

        // append seconds to the date and time
        //$date = $date . ":00";

        // print final date and time
        //echo $d;

      $chart = ['chart'.$d,];
      ?>

      @foreach($chart as $chart)

      <div class='col-md-4'>
        @include('box.partials.boxheader')
        <h3 class="box-title">--Date {!!$date!!}--</h3>
        @include('box.partials.boxtool')
        <div class="box-body">
          <div id="{!!$chart!!}" style="width:300px; height:300px;"></div><!-- /.chart -->
        </div><!-- /.box-body -->
        @include('box.partials.boxfooter')
      </div><!-- /.col-md-4 -->

<span>
  <style media="screen">
  .c3-chart-arc text {
    fill: black;
    font-size: 13px;
  }
  g.c3-chart g.c3-event-rects rect.c3-event-rect {
  pointer-events: none;
  }
  .legend span {
    width: 3.333333%;
    display: inline-block;
    text-align: center;
    cursor: pointer;
    color: white;
}
  </style>
  <script>
    var chart_opts = {
        bindto: '#{{$chart}}',
        @include('charts.pie.partials.chartheader')
        colors: {
              @foreach($data4 as $key => $value)
                {!!$key!!}: '{!!$value!!}',
              @endforeach
            },
        columns: [
              @foreach($data4 as $key => $value)
                ['{!!$key!!}', 1],
              @endforeach
              ],
        @include('charts.pie.partials.chartfooter')
    var {{$chart}} = c3.generate(chart_opts);


    d3.select('.box-body').insert('div', ':first-child')
      .attr('class', 'legend col-md-2')
      .insert('ul').attr('class', 'list-group')
      .selectAll('span')
      .data(['data1', 'data2', 'data3', 'data4'])
      .enter().append('li').attr('class', 'list-group-item')
      .append('div').attr('class', 'legend-label')
      .attr('data-id', function(id) {
        return id;
      })
      .append('div', '.legend-label')
      .html(function(id) {
        var data = chart.data(id);
        return id + '&nbsp&nbsp&nbsp';
      })
      .insert('span', '.legend-label').attr('class', 'badge')
      .each(function(id) {
        d3.select(this).style('background-color', chart.color(id));
      })
      .html(function(id){
        return '&nbsp&nbsp&nbsp&nbsp&nbsp'
    });


  </script>
</span>

      @endforeach
      @endforeach

  </div><!-- /.col-md-12 -->
</div><!-- /.row -->

@endsection
