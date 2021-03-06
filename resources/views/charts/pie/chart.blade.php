<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;

// dd($rg_id);
?>

@extends('crudbooster::admin_template')
@section('content')


<!-- C3 Charts scripts -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.6.12/c3.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.6.12/c3.min.js"></script>

<!-- D3 Charts scripts -->
<script src="https://d3js.org/d3.v5.js"></script>

<!--  including jQuery, Moment.js and Date Range Picker's files -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

</script>
<!--  first row header bar -->
<div class="row">
  <div class='col-md-12'>
    <div class="panel panel-primary" style="font-size:20px; text-align: center; height:50px;">
      <div style="height:50px;" class="panel-heading"> WEATHER SUMMERY
        <button type="button" style="float:left;" class="btn btn-warning" onclick="location.href = backTodash()">DASHBOARD</button>
        <!-- <button type="button" style="float: right;" class="btn btn-warning" onclick="window.location='{{ route('print-chart',['download'=>'pdf']) }}'">Export Data</button> -->

      </div>

      </div><!-- /.panel-heading -->

    </div><!-- /.panel panel-primary -->



  <?php

    $start_dateee =  $_COOKIE['start_datee'];
    $end_dateee =  $_COOKIE['end_datee'];

    $n_count = DB::table('rg_non_count')
    ->whereBetween('Date', [$start_dateee,$end_dateee])
    ->where('RG',$rg_id)
    ->sum('count');

    $s_count = DB::table('rg_sunny_count')
    ->whereBetween('Date', [$start_dateee,$end_dateee])
    ->where('RG',$rg_id)
    ->sum('count');

    $c_count = DB::table('rg_cloudy_count')
    ->whereBetween('Date', [$start_dateee,$end_dateee])
    ->where('RG',$rg_id)
    ->sum('count');

    $r_count = DB::table('rg_rain_count')
    ->whereBetween('Date', [$start_dateee,$end_dateee])
    ->where('RG',$rg_id)
    ->sum('count');

    $h_count = DB::table('rg_heavy_count')
    ->whereBetween('Date', [$start_dateee,$end_dateee])
    ->where('RG',$rg_id)
    ->sum('count');

    $n_count = DB::table('rg_night_count')
    ->whereBetween('Date', [$start_dateee,$end_dateee])
    ->where('RG',$rg_id)
    ->sum('count');

  ?>


  <div class='col-md-12' style="padding-left:30px; padding-right:30px;">
    <style media="screen">
    .navbar-nav > li{
      padding-left:30px;
      padding-right:30px;
      margin-left:5px;
      margin-right:5px;
      margin-top: 3px;
    }
    </style>
    <script type="text/javascript">

    function backTodash(){
      var link1 =  "http://127.0.0.1:8000/dashboard/getIndex1/"+{{$rg_id}};
      return link1;
    }

    function Weather_Album(a,c) {
      var link1 =  "http://127.0.0.1:8000/admin/"+a;
      var link3 =  "&return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Frecord_group&foreign_key=rg_id&label="+c;
      var link2 = "?parent_table=record_group&parent_columns=name&parent_columns_alias=&parent_id="+{{$rg_id}}+link3;
      return link1+link2;
    }
    function add_weather(a,b) {
      var link1 =  "http://127.0.0.1:8000/admin/day_status26/add?return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Fday_status26%3Fforeign_key%3Drg_id%26label%3DWeather%26parent_columns%3Dname%26parent_columns_alias%3D%26parent_id%3D";
      var link2 =   link1+a+"%26parent_table%3Drecord_group%26return_url%3Dhttp%253A%252F%252F127.0.0.1%253A8000%252Fadmin%252Frecord_group&parent_id=";
      var link3 =   b+"&parent_field=rg_id";

      return link2+link3;
    }

    </script>
<!--  second row header bar -->
    <nav class="navbar navbar-inverse" style="background-image:url({{url('imgs/weather_1.gif')}})">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand">Weather Status</a>
        </div>
        <ul class="nav navbar-nav" style="letter-spacing: 3px;" >
<!--  Get weather status from datebase -->

          <li class="list-group-item d-flex justify-content-between align-items-center" style="width: 85px; background-color: #e0e0e0">
            NWH
            <span class="badge badge-pill badge-default" >{{ $n_count }}</span>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-center" style="width: 95px; background-color:  #ff8d33">
            Sunny
            <span class="badge badge-pill badge-default" >{{ $s_count }}</span>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-center" style="width: 105px; background-color: #58574f">
            Cloudy
            <span class="badge badge-pill badge-default" >{{ $c_count }}</span>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-center" style="width: 85px; background-color: #00b0ff">
            Rain
            <span class="badge badge-pill badge-default" >{{ $r_count }}</span>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-center" style="width: 125px; background-color: #1f13ad">
            Heavy Rain
            <span class="badge badge-pill badge-default" >{{ $h_count }}</span>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-center" style="width: 105px; background-color: #0a2d09">
            Night
            <span class="badge badge-pill badge-default" >{{ $n_count }}</span>
          </li>

        </ul>

      </div>
    </nav>
    <nav class="navbar">
      <div class="">
        <button  type="button" class="btn btn-success btn-sm" value="Refresh Page" onClick="location.href = add_weather(<?php echo $rg_id; ?>,<?php echo $rg_id; ?>)"> + Add Data
      </div>
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand">Date Range</a>
        </div>
<!--Filter Form-->
        <ul class="nav navbar-nav">
          <li>
            <input id="reportrange" placeholder='Enter the Date Range'; style="cursor: pointer; padding: 5px 10px; solid #fff; width: 80%">
            <i class="fa fa-calendar"></i>&nbsp;
            <span></span> <i class="fa fa-caret-down"></i>
          </input>
        </li>
        <li>
          <div class="">
            <button  type="button" class="btn btn-info btn-sm" value="Refresh Page" onClick="window.location.reload()"> > Filter <
          </div>
        </li>
        </ul>
      </div>
    </nav>
  </div>
</div>

<!--  Get js variable in to php  -->
<?php
$start_datee =  $_COOKIE['start_datee'];
$end_datee =  $_COOKIE['end_datee'];
?>

<!--  get date from selected date range in the filter  -->
<?php
$dates = DB::table('day_status')
->where('rg_id', $rg_id)
->whereBetween('date', [$start_datee,$end_datee])
->pluck('date')
->toArray();
?>

<div class='row'>
  <div class='col-md25-12'>

    @foreach($dates as $date)
<!-- create charts color and hour releted to database -->
<?php
// convert date and time to seconds
    $sec = strtotime($date);
    $d = date("Ymd", $sec);
    $chart = ['chart'.$d,];
?>

    @foreach($chart as $chart)

    <div class='col-md-4'>
      @include('box.partials.boxheader')
      <h3 class="box-title">--Date {!!$date!!}--</h3>
      @include('box.partials.boxtool')
      <div class="box-body" style="background-color:#cfd8dc">
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
  </style>

<script>

  var chart_opts = {
        bindto: '#{{$chart}}',
        @include('charts.pie.partials.chartheader')
        colors: {

<?php
$datas = DB::table('day_status')
          ->where('rg_id', $rg_id)
          ->where('date',$date)
          ->get();
 ?>

          @foreach ($datas as $key => $value)
<?php
$hr1 = $value->hour1;
$data1 = DB::table('weather_status')
  ->orWhere('id', $hr1)
  ->value('color');

$hr2 = $value->hour2;
$data2 = DB::table('weather_status')
  ->where('id', $hr2)
  ->value('color');

$hr3 = $value->hour3;
$data3 = DB::table('weather_status')
  ->where('id', $hr3)
  ->value('color');
$hr4 = $value->hour4;
$data4 = DB::table('weather_status')
  ->where('id', $hr4)
  ->value('color');

$hr5 = $value->hour5;
$data5 = DB::table('weather_status')
  ->where('id', $hr5)
  ->value('color');

$hr6 = $value->hour6;
$data6 = DB::table('weather_status')
  ->where('id', $hr6)
  ->value('color');

$hr7 = $value->hour7;
$data7 = DB::table('weather_status')
  ->where('id', $hr7)
  ->value('color');

$hr8 = $value->hour8;
$data8 = DB::table('weather_status')
  ->where('id', $hr8)
  ->value('color');

$hr9 = $value->hour9;
$data9 = DB::table('weather_status')
  ->where('id', $hr9)
  ->value('color');

$hr10 = $value->hour10;
$data10 = DB::table('weather_status')
  ->where('id', $hr10)
  ->value('color');

$hr11 = $value->hour11;
$data11 = DB::table('weather_status')
  ->where('id', $hr11)
  ->value('color');

$hr12 = $value->hour12;
$data12 = DB::table('weather_status')
  ->where('id', $hr12)
  ->value('color');

$hr13 = $value->hour13;
$data13 = DB::table('weather_status')
  ->where('id', $hr13)
  ->value('color');

$hr14 = $value->hour14;
$data14 = DB::table('weather_status')
  ->where('id', $hr14)
  ->value('color');

$hr15 = $value->hour15;
$data15 = DB::table('weather_status')
  ->where('id', $hr15)
  ->value('color');

$hr16 = $value->hour16;
$data16 = DB::table('weather_status')
  ->where('id', $hr16)
  ->value('color');

$hr17 = $value->hour17;
$data17 = DB::table('weather_status')
  ->where('id', $hr17)
  ->value('color');

$hr18 = $value->hour18;
$data18 = DB::table('weather_status')
  ->where('id', $hr18)
  ->value('color');

$hr19 = $value->hour19;
$data19 = DB::table('weather_status')
  ->where('id', $hr19)
  ->value('color');

$hr20 = $value->hour20;
$data20 = DB::table('weather_status')
  ->where('id', $hr20)
  ->value('color');

$hr21 = $value->hour21;
$data21 = DB::table('weather_status')
  ->where('id', $hr21)
  ->value('color');

$hr22 = $value->hour22;
$data22 = DB::table('weather_status')
  ->where('id', $hr22)
  ->value('color');

$hr23 = $value->hour23;
$data23 = DB::table('weather_status')
  ->where('id', $hr23)
  ->value('color');

$hr24 = $value->hour24;
$data24 = DB::table('weather_status')
  ->where('id', $hr24)
  ->value('color');

?>
            1: '{{$data1}}',
            2: '{{$data2}}',
            3: '{{$data3}}',
            4: '{{$data4}}',
            5: '{{$data5}}',
            6: '{{$data6}}',
            7: '{{$data7}}',
            8: '{{$data8}}',
            9: '{{$data9}}',
            10: '{{$data10}}',
            11: '{{$data11}}',
            12: '{{$data12}}',
            13: '{{$data13}}',
            14: '{{$data14}}',
            15: '{{$data15}}',
            16: '{{$data16}}',
            17: '{{$data17}}',
            18: '{{$data18}}',
            19: '{{$data19}}',
            20: '{{$data20}}',
            21: '{{$data21}}',
            22: '{{$data22}}',
            23: '{{$data23}}',
            24: '{{$data24}}'
            @endforeach
        },
        columns: [
          ['1' , 1],
          ['2' , 1],
          ['3' , 1],
          ['4' , 1],
          ['5' , 1],
          ['6' , 1],
          ['7' , 1],
          ['8' , 1],
          ['9' , 1],
          ['10' , 1],
          ['11' , 1],
          ['12' , 1],
          ['13' , 1],
          ['14' , 1],
          ['15' , 1],
          ['16' , 1],
          ['17' , 1],
          ['18' , 1],
          ['19' , 1],
          ['20' , 1],
          ['21' , 1],
          ['22' , 1],
          ['23' , 1],
          ['24' , 1]
        ],
        @include('charts.pie.partials.chartfooter')
  var {{$chart}} = c3.generate(chart_opts);
</script>

</span>

@endforeach
@endforeach

  </div><!-- /.col-md-12 -->
</div><!-- /.row -->

@include('datepicker.daterangepicker')

@endsection
