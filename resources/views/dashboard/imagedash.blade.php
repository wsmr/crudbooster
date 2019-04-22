<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use CRUDBooster;
use Session;

//$user_id = CRUDBooster::myId();
$user_id = 1;
$user_photo = DB::table('cms_users')->where('id', $user_id)->get();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>RINSIGHT:DESIGN BUILD</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


@include("dashboard.sheets.CSSimagedash")


</head>

<body>  
    <div class="pull-{{ trans('crudbooster.right') }}">
      <?php echo date('Y-M-d');?>
      <button title='USER:{{ CRUDBooster::myPrivilegeName() }}' style="background-color: white; color: black; border: 2px solid #555555;"> {{ CRUDBooster::myName()}} </button>
      <a title='Lock Screen' href="{{ route('getLockScreen') }}" class='btn btn-default btn-flat'><i class='fa fa-key'></i></a>
      <a title='Logout' href="{{ route('getLogout') }}" class='btn btn-default btn-flat'><i class='fa fa-power-off'></i></a>
    </div>


    
      <div class="panel panel-success" style="font-size:20px; text-align: left; height:50px;">  
      <div class="panel-heading">
        <div class="panel-heading"><img style=' height: 6%; width: 6%;'src="{!! asset('imgs/ECL-LOGO.png') !!}"> ENGINEERING CONSULTANTS (PVT) LTD </div>
      </div>
    </div>
  
 

<div class="container" style="margin-top:30px">
  <div class="row">
      <div class='col-md-12'>
        <div class="panel panel-success" style="font-size:20px; text-align: center; height:50px;">
          <div style="height:50px;" class="panel-heading"> PROJECTS
          <button type="button" style="float: right; margin:1px;background-color:#7283a7; border: none;" class="btn btn-info float-right btn-sm" onclick="window.location='http://127.0.0.1:8000/admin/record_group'">ADD PROJECT</button>
          </div>
        </div><!-- /.panel-heading -->
      </div><!-- /.panel panel-primary -->
  </div>
  <div class="row">

    @foreach($user_photo as $date2)
    @foreach($data as $date1)

    <?php
    $rg_id = $date1->id;
    $rd = DB::table('record_group')
      ->select('record_details.updated AS date')
      ->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
      ->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')
      ->Where('record_group.id', $rg_id)
      ->orderBy('date', 'DESC')
      ->first();
    // print_r($rd);

    $rg_cctv = DB::table('camera')
    ->Where('rg_id', $rg_id)
    ->first();
    ?>

    <?php if ($rd ==!null){

      foreach ($rd as $key => $value): ?>

      <div class="col-sm-3">
        <!-- <br> -->
        <div class="card">

          <a href="http://127.0.0.1:8000/admin/bd_record_group?parent_table=record_group&parent_columns=name&parent_columns_alias=&parent_id={{ $date1->id }}&return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Frecord_group&foreign_key=rg_id&label=bd+Record+Group"
            title=""><img class="card-img-top" style='height: 200px; width: 230px; object-fit:contain' src="{{ $date1->image }}"></a>
            <div class="card-block">
              <figure class="profile">
                <img src="" class="profile-avatar" alt="">
              </figure>
              <h4 class="card-title mt-3">{{ $date1->name }}</h4>
              <small>{{ $date1->value }} LKR</small>
              <div class="meta">
                <!-- <a></a> -->
              </div>
              <!-- <div class="card-text">
                Project Description.
              </div> -->
            </div>
            <div class="card-footer">
              <small>STARTED <tab2 >{{ $date1->start_date }}</tab2></small>
              <br>
              <small>END    <tab2 style="margin-left: 32px;">{{ $date1->end_date }}</tab2></small>
              <br>
              <small>LAST UPDATED <tab1><?php echo date('Y-m-d', strtotime($value)); ?></tab1></small>
              <br>
              <br>
              @if ($rg_cctv ==!null)
                  <button onclick="window.location ='http://127.0.0.1:8000/CCTV/{{ $date1->id }}'"
                    class="btn btn-success float-left btn-sm" style="margin:1px;background-color:#2e7d32; border: none;">CCTV</button>
                    @endif
              
                    <button onclick="window.location ='http://127.0.0.1:8000/dashboard/getIndex1/{{ $date1->id }}'"
                  class="btn btn-primary float-left btn-sm" style="margin:1px;background-color:#45526e; border: none;">DASHBOARD</button>

              <button onclick="window.location ='http://127.0.0.1:8000/admin/bd_record_group?parent_table=record_group&parent_columns=name&parent_columns_alias=&parent_id={{ $date1->id }}&return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Frecord_group&foreign_key=rg_id&label=bd+Record+Group'"
              class="btn btn-info float-left btn-sm" style="margin:1px;background-color:#546e7a; border: none;">DATA</button>
                  </div>
                </div>
              </div>

            <?php endforeach;

          } ?>


          @endforeach
          @endforeach

    </div>
    
    
</div>
<br>
<footer>
      <p style="text-align: center;">Powered by <b><span style="color: #b71c1c">Rinsight</span></b> | Copyright © 2019 | All Rights Reserved | <a><a href="http://www.mgconsultants.lk/"> <img style='height: 1.5%; width: 1.5%; object-fit: contain' src="{!! asset('imgs/MG-CONSULTANTS.png') !!}"> <span style="color: #000000"> MG Consultants (pvt) Ltd.</span></p>
    </footer>
</body>
</html>
