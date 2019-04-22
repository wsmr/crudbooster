<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;

?>
@extends('crudbooster::admin_template')
@section('content')
<?php
//dd($cctv_data[0]->name);
 ?>
<script type="text/javascript" src="JS/header.js"></script>
<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />

<div class="row">
  <div class='col-md-12'>
    <div class="panel panel-danger" style="font-size:30px; text-align: center; height:50px;">
      <div style="height:50px;" class="panel-heading"> {{$cctv_data[0]->name}}
      <button type="button" style="float:left;" class="btn btn-warning" onclick="location.href = backTodash()">DASHBOARD</button>
    </div>
    </div><!-- /.panel-heading -->
  </div><!-- /.panel panel-primary -->
</div>
<div class="row">
 <div class='col-md-12'>
   <div class="panel panel-success" style="font-size:20px; text-align: center; height:50px;">
     <div style="height:50px;" class="panel-heading"> {{$cctv_data[0]->description}} </div>
   </div><!-- /.panel-heading -->
 </div><!-- /.panel panel-primary -->
</div>

<div class="row">
  <div class='col-md-12'>
    <div class="panel panel-info" style="font-size:20px; text-align: center; height:50px;">
      <div style="height:50px;" class="panel-heading">  Live Camera <?php echo "(".date('Y-M-d').")";?>
      </div>
    </div><!-- /.panel-heading -->
    </div><!-- /.panel panel-primary -->

  <div class="col-md-4">
    <!-- <div class="iframe" style="position:fixed;top:62px; left:0; width:100%; height:100%;" >
        <iframe src="https://www.constructioncamtv.com/" width="100%" height="600" ></iframe>
    </div> -->
    <h1>Sample View 1</h1>
    <iframe src="{{$cctv_data[0]->url}}" style="width:350px; height:350px"></iframe>
  </div>
  <div class="col-md-4">
    <h1>Sample View 2</h1>
    <iframe src="{{$cctv_data[0]->url}}" style="width:350px; height:350px" ></iframe>
  </div>
  <div class="col-md-4">
    <h1>Sample View 3</h1>
    <iframe src="https://www.constructioncamtv.com/" style="width:350px; height:350px" ></iframe>
  </div>
</div>


<script type="text/javascript">

function backTodash(){
  var link1 =  "http://127.0.0.1:8000/dashboard/getIndex1/"+{{$cctv_data[0]->rg_id}};
  return link1;
}

</script>




@endsection
