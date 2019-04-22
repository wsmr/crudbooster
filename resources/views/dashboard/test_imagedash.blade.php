<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;

//$user_id = CRUDBooster::myId();
$user_id = 1;
$user_photo = DB::table('cms_users')->where('id', $user_id)->get();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  </style>
  @include("dashboard.CSSimagedash")
</head>
<body>
  <div class="container" style="margin-top:30px">

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
        </ul>
      </div>
    </nav>
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
        <br>
        <div class="card">

          <a href="http://127.0.0.1:8000/admin/bd_record_group?parent_table=record_group&parent_columns=name&parent_columns_alias=&parent_id={{ $date1->id }}&return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Frecord_group&foreign_key=rg_id&label=bd+Record+Group"
            title=""><img class="card-img-top" style='height: 200px; width: 230px; object-fit:contain' src="{{ $date1->image }}"></a>
            <div class="card-block">
              <figure class="profile">
                <img src="{{ $date2->photo }}" class="profile-avatar" alt="">
              </figure>
              <h4 class="card-title mt-3">{{ $date1->name }}</h4>
              <div class="meta">
                <a></a>
              </div>
              <div class="card-text">
                Project Description.
              </div>
            </div>
            <div class="card-footer">
              <small>STARTED AT <tab1>{{ $date1->start_date }}</tab1></small>
              <br>
              <small>UPDATED AT <tab1><?php echo date('Y-m-d', strtotime($value)); ?></tab1></small>
              <br>
              <small>END <tab2>{{ $date1->end_date }}</tab2></small>
              <br>
              <br>
              <button onclick="window.location ='http://127.0.0.1:8000/admin/bd_record_group?parent_table=record_group&parent_columns=name&parent_columns_alias=&parent_id={{ $date1->id }}&return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Frecord_group&foreign_key=rg_id&label=bd+Record+Group'"
                class="btn btn-info float-right btn-sm">show</button>
                <button onclick="window.location ='http://127.0.0.1:8000/dashboard/getIndex1/{{ $date1->id }}'"
                  class="btn btn-primary float-right btn-sm">DASHBOARD</button>

                  @if ($rg_cctv ==!null)
                  <button onclick="window.location ='http://127.0.0.1:8000/CCTV/{{ $date1->id }}'"
                    class="btn btn-success float-right btn-sm">LIVE</button>
                    @endif
                  </div>
                </div>
              </div>

            <?php endforeach;

          } ?>


          @endforeach
          @endforeach

    </div>

        </div>


        </div>
      </body>
      </html>
