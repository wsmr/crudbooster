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
$rg_name = DB::table('record_group')
            ->select('name')
            ->where('id',$id)
            ->first();
//            dd($rg_name);

$rg_album = DB::table('album')
            ->where('rg_id',$id)
            ->first();
$rg_weather = DB::table('day_status')
            ->where('rg_id',$id)
            ->first();
$rg_issue = DB::table('issues')
            ->where('rg_id',$id)
            ->first();
$rg_team = DB::table('team')
            ->where('rg_id',$id)
            ->first();


$fn_rg_id = DB::table('bd_record_group')
            ->select('bd_record_group.id AS id')
            ->leftJoin('record_group', 'bd_record_group.rg_id', '=', 'record_group.id')
            ->RightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
            ->Where('record_group.id', $id)
            ->Where('bd_record_group.bd_id', 18)
            ->value('id');
//dd($fn_rg_id);

$rg_financial = DB::table('bd_record_group')
//            ->select('record_details.id AS id')
            ->leftJoin('record_group', 'bd_record_group.rg_id', '=', 'record_group.id')
            ->RightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
            ->Where('record_group.id', $id)
            ->Where('bd_record_group.bd_id', 18)
            ->Where('record_details.bd_rg_id', $fn_rg_id)
//            ->get();
            ->first();
// ->orderBy('date', 'DESC')

$phy_rg_id = DB::table('bd_record_group')
            ->select('bd_record_group.id AS id')
            ->leftJoin('record_group', 'bd_record_group.rg_id', '=', 'record_group.id')
            ->RightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
            ->Where('record_group.id', $id)
            ->Where('bd_record_group.bd_id', 10)
            ->value('id');
$rg_physical = DB::table('bd_record_group')
            ->leftJoin('record_group', 'bd_record_group.rg_id', '=', 'record_group.id')
            ->RightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
            ->Where('record_group.id', $id)
            ->Where('bd_record_group.bd_id', 10)
            ->Where('record_details.bd_rg_id', $phy_rg_id)
            ->first();
$project_name = $rg_name->name;
$labor_rg_id = DB::table('bd_record_group')
            ->select('bd_record_group.id AS id')
            ->leftJoin('record_group', 'bd_record_group.rg_id', '=', 'record_group.id')
            ->RightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
            ->Where('record_group.id', $id)
            ->Where('bd_record_group.bd_id', 16)
            ->value('id');
$rg_labor = DB::table('bd_record_group')
            ->leftJoin('record_group', 'bd_record_group.rg_id', '=', 'record_group.id')
            ->RightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
            ->Where('record_group.id', $id)
            ->Where('bd_record_group.bd_id', 16)
            ->Where('record_details.bd_rg_id', $labor_rg_id)
            ->first();

//dd($rg_financial);
?>

@include("dashboard.sheets.CSSdashboard")


<div class="row">
  <div class='col-md-12'>
    <div class="panel panel-success" style="font-size:20px; text-align: center; height:50px;">
      <div style="height:50px;" class="panel-heading"> <?php echo strtoupper($project_name) ?> PROJECT

        <!-- <button type="button" style="float: right; margin:1px;" class="btn btn-warning" onclick="window.location=''">Export</button> -->
        <button type="button" style="float: left; margin:0px;" class="btn btn-primary" onclick="window.location='http://127.0.0.1:8000/admin'">HOME</button>
      </div>
    </div><!-- /.panel-heading -->
  </div><!-- /.panel panel-primary -->
  </div>

<div class='col-md-6'>
    @include('box.partials.boxheader')
    <h3 class="box-title">Project Overview</h3>
    @include('box.partials.boxtool')
    <div class="box-body" style="background-color:#b8b9ba">
      <div class="col-md-12">

        <table class="table">
    <tbody>
        <tr>
          <th>Row</th>
            <td>1</td>
            <td>2</td>
        </tr>
        <tr>
          <th>First Name</th>
            <td>John</td>
            <td>Peter</td>
        </tr>
        <tr>
          <th>Last Name</th>
            <td>Carter</td>
            <td>Parker</td>
        </tr>
        <tr>
          <th>Email</th>
            <td>johncarter@mail.com</td>
            <td>peterparker@mail.com</td>
        </tr>
    </tbody>
</table>

      </div>
    </div><!-- /.box-body -->
    @include('box.partials.boxfooter')
  </div><!-- /.col-md-4 -->

  <div class='col-md-6'>
    @include('box.partials.boxheader')
    <h3 class="box-title">Status</h3>
    @include('box.partials.boxtool')
    <div class="box-body" style="background-color:#b8b9ba">
      @include("dashboard.sheets.CSSimagedash")
      <div class="col-sm-6">
        <br>
        <div class="card">
          <a title=""><div id="chart4"></div></a>
          <div class="card-block">
            <h4 class="card-title mt-3" style="text-align: center;">Financial</h4>
            <div class="meta">
              <a></a>
            </div>
        </div>
      </div>
    </div>
    <div class="col-sm-6">
      <br>
      <div class="card">
        <a title=""><div id="chart3"></div></a>
        <div class="card-block">
          <h4 class="card-title mt-3" style="text-align: center;">Physical</h4>
          <div class="meta">
            <a></a>
          </div>
      </div>
    </div>
  </div>

  </div><!-- /.box-body -->
  @include('box.partials.boxfooter')

  </div><!-- /.col-md-4 -->
  @include('charts.guage.chart')




<div class="row">
@if ($rg_financial ==!null)
<div class='col-md-6'>
  @include('box.partials.boxheader')
  <h3 class="box-title">Financial S Curve</h3>
  @include('box.partials.boxtool')
  <div class="box-body" style="background-color:#b8b9ba">
    <div id="chart6" style="width:460px; height:300px;"></div><!-- /.chart -->
  </div><!-- /.box-body -->
  @include('box.partials.boxfooter')
</div><!-- /.col-md-4 -->
@endif
@if ($rg_physical ==!null)
  <div class='col-md-6'>
    @include('box.partials.boxheader')
    <h3 class="box-title">Physical S Curve</h3>
    @include('box.partials.boxtool')
    <div class="box-body" style="background-color:#b8b9ba">
      <div id="chart2" style="width:460px; height:300px;"></div><!-- /.chart -->
    </div><!-- /.box-body -->
    @include('box.partials.boxfooter')
  </div><!-- /.col-md-4 -->
@endif
@if ($rg_labor ==!null)
  <div class='col-md-6'>
    @include('box.partials.boxheader')
    <h3 class="box-title">Skilled Labor S Curve</h3>
    @include('box.partials.boxtool')
    <div class="box-body" style="background-color:#b8b9ba">
      <div id="chart14" style="width:460px; height:300px;"></div><!-- /.chart -->
    </div><!-- /.box-body -->
    @include('box.partials.boxfooter')
  </div><!-- /.col-md-4 -->
  <div class='col-md-6'>
    @include('box.partials.boxheader')
    <h3 class="box-title">Un-Skilled Labor S Curve</h3>
    @include('box.partials.boxtool')
    <div class="box-body" style="background-color:#b8b9ba">
      <div id="chart24" style="width:460px; height:300px;"></div><!-- /.chart -->
    </div><!-- /.box-body -->
    @include('box.partials.boxfooter')
  </div><!-- /.col-md-4 -->
@endif
@include('charts.spline.chart')
@include('charts.multi.chart')
</div>

@include("dashboard.sheets.JSdashboard")

<div class="row">
  <div class='col-md-12'>
  <div style="float:left; margin:0px;" class="dropup">
    <button onclick="myFunction()" class="dropbtn">+ Add Data</button>
    <div id="myDropup" class="dropup-content">
      <a onclick="window.location = bd_rg_add()">Basic Data Records</a>
      <a onclick="window.location = weather_add()">Weather</a>
      <a onclick="window.location = album_add()">Album</a>
      <a onclick="window.location = cctv_add()">CCTV</a>
      <a onclick="window.location = issue_add()">Genaral Issue</a>
      <a onclick="window.location = staff_add()">Staff</a>
    </div>
  </div>
</div>
</div>
<br>

<div class="row">
@if ($rdfn10_id->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id" name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Record10_Details()">
    <img style='height: 50%; width: 20%; object-fit: contain'src="{!! asset('imgs/physical_png.png') !!}"> Physical Progress
  </button>
</div>

@endif
@if ($rdfn11_id->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id"  name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Record11_Details()">
    <img style='height: 50%; width: 20%; object-fit: contain'src="{!! asset('imgs/financial.png') !!}"> Financial Progress
  </button>
</div>
@include('charts.bar.chart')
@endif
@if ($rdfn3_id->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id"  name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Record3_Details()">
    <img style='height: 50%; width: 20%; object-fit: contain' src="{!! asset('imgs/confirmation.png') !!}"> Confirmation Of verbal Report
  </button>
</div>
@endif
@if ($rdfn12_id->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id" name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Record12_Details()">
    <img style='height: 50%; width: 20%; object-fit: contain'src="{!! asset('imgs/request.png') !!}"> Request of information Report
  </button>
</div>
@endif
@if ($rdfn16_id->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id" name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Record16_Details()" >
    <img style='height: 50%; width: 20%; object-fit: contain'src="{!! asset('imgs/labour.png') !!}"> Labour Details
  </button>
</div>
@endif
@if ($rg_weather->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id" name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Weather()">
    <img style='height: 50%; width: 20%; object-fit: contain'src="{!! asset('imgs/weather.png') !!}"> Weather
  </button>
</div>
<!-- <div class="col-md-2">
  <button type="submit" id="my-id" name="btn_add"
    onclick="location.href = Weather_Album('day_status26','Weather')">
    <img style='height: 20%; width: 20%; object-fit: contain'src="{!! asset('imgs/weather.png') !!}"> Weather
  </button>
</div> -->
@endif
@if ($rg_album->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id" name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Weather_Album('album','Album')">
    <img style='height: 50%; width: 20%; object-fit: contain'src="{!! asset('imgs/album.png') !!}"> Album
  </button>
</div>
@endif
@if ($rg_issue->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id" name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Isssue('issues','Issue')">
    <img style='height: 50%; width: 20%; object-fit: contain'src="{!! asset('imgs/issues.png') !!}"> Genaral Issues
  </button>
</div>
@endif


@if ($rg_team->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id" name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Team('team','Team')">
    <img style='height: 50%; width: 20%; object-fit: contain'src="{!! asset('imgs/staff.png') !!}"> Staff
  </button>
</div>
@endif

@if ($rdfn17_id->id ==!null)
<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
  <button type="submit" id="my-id" name="btn_add" style="height:50px; margin-bottom:10px"
    onclick="location.href = Record17_Details()">
    <img style='height: 50%; width: 20%; object-fit: contain'src="{!! asset('imgs/report.png') !!}"> Test Reports
  </button>
</div>
@endif

  <!-- <div class="col-md-2">
    <button type="submit" id="my-id" name="btn_add" style="height:50px;width:150px"
    onclick="window.location='http://127.0.0.1:8000/ '"><img style='height: 55%; width: 55%; object-fit: contain'src="{!! asset('imgs/weather.png') !!}"> Weather </button>
  </div> -->

</div>

@endsection
