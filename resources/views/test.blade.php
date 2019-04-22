<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
?>


<?php
if (condition) {
  // code...
} else {
  // code...
}

 ?>

<?php
$rg_id = 4;
$rd = DB::table('record_group')
//  ->select('record_group.updated AS date')
  ->select('record_details.updated AS date')

  ->rightJoin('bd_record_group', 'record_group.id', '=', 'bd_record_group.rg_id')
  ->rightJoin('record_details', 'bd_record_group.id', '=', 'record_details.bd_rg_id')

  ->Where('record_group.id', $rg_id)
  ->orderBy('date', 'DESC')
  ->first();
//  ->get();


dd($rd);

 ?>
