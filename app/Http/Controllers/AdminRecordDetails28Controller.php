<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminRecordDetails28Controller extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {


			$bd_rg_id = Request::get('parent_id');

			$bdt_option = DB::table('bdt_option')
				->join('basicdata', 'basicdata.bdt_id', '=', 'bdt_option.bdt_id')
		    ->join('bd_record_group', 'bd_record_group.bd_id', '=', 'basicdata.id')
				->Where('bd_record_group.id', $bd_rg_id)
				->get();
/////////////////////////////////////////////////////////////////////////////////////////////

$bdt_option_id = DB::table('bdt_option')
	->select('bdt_option.id AS bdt_option_id')
	->join('basicdata', 'basicdata.bdt_id', '=', 'bdt_option.bdt_id')
	->join('bd_record_group', 'bd_record_group.bd_id', '=', 'basicdata.id')
	->Where('bd_record_group.id', $bd_rg_id)
	->value('id');


$bdt_option_order = DB::table('bdt_option_order')
	->Where('bdt_option_order.bdt_option_id', $bdt_option_id)
	->get();

////////////////////////////////////////////////////////////////////////////////////////////
$rg_id = DB::table('bd_record_group')
	->leftjoin('record_group', 'bd_record_group.rg_id', '=', 'record_group.id')
	->Where('bd_record_group.id', $bd_rg_id)
	->get();


			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = true;
			$this->button_export = true;
			$this->table = "record_details";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE

			$count = 0;
			if ($bdt_option_order[0]->int_1_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->int_2_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->int_3_order !== NULL) { $count++ ; }

			if ($bdt_option_order[0]->date_1_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->date_2_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->date_3_order !== NULL) { $count++ ; }

			if ($bdt_option_order[0]->varchar_1_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->varchar_2_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->varchar_3_order !== NULL) { $count++ ; }

			if ($bdt_option_order[0]->textarea_1_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->textarea_2_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->textarea_3_order !== NULL) { $count++ ; }

			if ($bdt_option_order[0]->attachment_1_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->attachment_2_order !== NULL) { $count++ ; }
			if ($bdt_option_order[0]->attachment_3_order !== NULL) { $count++ ; }

			$int1 = ($bdt_option_order[0]->int_1_order == NULL) ? 915 : $bdt_option_order[0]->int_1_order ;
			$int2 = ($bdt_option_order[0]->int_2_order == NULL) ? 914 : $bdt_option_order[0]->int_2_order ;
			$int3 = ($bdt_option_order[0]->int_3_order == NULL) ? 913 : $bdt_option_order[0]->int_3_order ;

			$date1 = ($bdt_option_order[0]->date_1_order == NULL) ? 912: $bdt_option_order[0]->date_1_order;
			$date2 = ($bdt_option_order[0]->date_2_order == NULL) ? 911: $bdt_option_order[0]->date_2_order;
			$date3 = ($bdt_option_order[0]->date_3_order == NULL) ? 910: $bdt_option_order[0]->date_3_order;

			$varchar1 = ($bdt_option_order[0]->varchar_1_order == NULL) ?  99: $bdt_option_order[0]->varchar_1_order ;
			$varchar2 = ($bdt_option_order[0]->varchar_2_order == NULL) ?  98: $bdt_option_order[0]->varchar_2_order ;
			$varchar3 = ($bdt_option_order[0]->varchar_3_order == NULL) ?  97: $bdt_option_order[0]->varchar_3_order ;

			$textarea1 = ($bdt_option_order[0]->textarea_1_order == NULL) ?  96: $bdt_option_order[0]->textarea_1_order ;
			$textarea2 = ($bdt_option_order[0]->textarea_2_order == NULL) ?  95: $bdt_option_order[0]->textarea_2_order ;
			$textarea3 = ($bdt_option_order[0]->textarea_3_order == NULL) ?  94: $bdt_option_order[0]->textarea_3_order ;

			$attachment1 = ($bdt_option_order[0]->attachment_1_order == NULL) ?  93: $bdt_option_order[0]->attachment_1_order ;
			$attachment2 = ($bdt_option_order[0]->attachment_2_order == NULL) ?  92: $bdt_option_order[0]->attachment_2_order ;
			$attachment3 = ($bdt_option_order[0]->attachment_3_order == NULL) ?  91: $bdt_option_order[0]->attachment_3_order ;


			//$this->col[] = ["label"=>"BasicDataRecordGroup Id","name"=>"bd_rg_id","join"=>"bd_record_group,id"];
			########################    int   #################################################
			$m1[$int1] =["label"=>$bdt_option[0]->int_1_lable,"name"=>"int_1","visible"=>boolval($bdt_option[0]->int_1_visible)];
			$m1[$int2] =["label"=>$bdt_option[0]->int_2_lable,"name"=>"int_2","visible"=>boolval($bdt_option[0]->int_2_visible)];
			$m1[$int3] =["label"=>$bdt_option[0]->int_3_lable,"name"=>"int_3","visible"=>boolval($bdt_option[0]->int_3_visible)];

		 #########################   date   ################################################
		 $m1[$date1] = ["label"=>$bdt_option[0]->date_1_lable,"name"=>"date_1","visible"=>boolval($bdt_option[0]->date_1_visible)];
		 $m1[$date2] = ["label"=>$bdt_option[0]->date_2_lable,"name"=>"date_2","visible"=>boolval($bdt_option[0]->date_2_visible)];
		 $m1[$date3] = ["label"=>$bdt_option[0]->date_3_lable,"name"=>"date_3","visible"=>boolval($bdt_option[0]->date_3_visible)];

		 ########################    varchar   #################################################
		 $m1[$varchar1] = ["label"=>$bdt_option[0]->varchar_1_lable,"name"=>"varchar_1","visible"=>boolval($bdt_option[0]->varchar_1_visible),];
		 $m1[$varchar2] = ["label"=>$bdt_option[0]->varchar_2_lable,"name"=>"varchar_2","visible"=>boolval($bdt_option[0]->varchar_2_visible),];
		 $m1[$varchar3] = ["label"=>$bdt_option[0]->varchar_3_lable,"name"=>"varchar_3","visible"=>boolval($bdt_option[0]->varchar_3_visible),];

		 ########################     textarea   #################################################
		 $m1[$textarea1] = ["label"=>$bdt_option[0]->textarea_1_lable,"name"=>"textarea_1","visible"=>boolval($bdt_option[0]->textarea_1_visible)];
		 $m1[$textarea2] = ["label"=>$bdt_option[0]->textarea_2_lable,"name"=>"textarea_2","visible"=>boolval($bdt_option[0]->textarea_2_visible)];
		 $m1[$textarea3] = ["label"=>$bdt_option[0]->textarea_3_lable,"name"=>"textarea_3","visible"=>boolval($bdt_option[0]->textarea_3_visible)];

		 #########################    attachment   ################################################
		 $m1[$attachment1] = ["label"=>$bdt_option[0]->attachment_1_lable,"name"=>"attachment_1","visible"=>boolval($bdt_option[0]->attachment_1_visible)];
		 $m1[$attachment2] = ["label"=>$bdt_option[0]->attachment_2_lable,"name"=>"attachment_2","visible"=>boolval($bdt_option[0]->attachment_2_visible)];
		 $m1[$attachment3] = ["label"=>$bdt_option[0]->attachment_3_lable,"name"=>"attachment_3","visible"=>boolval($bdt_option[0]->attachment_3_visible)];

		 //$m1[$attachment3] = ["label"=>$bdt_option[0]->attachment_3_lable,"name"=>"attachment_3","visible"=>boolval($bdt_option[0]->attachment_3_visible),"image"=>true];




			for ($i=1; $i <= $count ; $i++) {
				array_push($this->col ,$m1[$i] );
				// array_push($this->form ,$list[$i] );
			}

			//$this->col = [["label"=>$bdt_option[0]->int_1_lable,"name"=>"int_1_order","visible"=>boolval($bdt_option[0]->int_1_visible)],["label"=>$bdt_option[0]->int_2_lable,"name"=>"int_2_order","visible"=>boolval($bdt_option[0]->int_2_visible)]];
			$this->col[0] ;
			$this->col[1] ;
			$this->col[2] ;
			$this->col[3] ;
			$this->col[4] ;
			$this->col[5] ;
			$this->col[6] ;
			$this->col[7] ;
			$this->col[8] ;
			$this->col[9] ;
			$this->col[10] ;
			$this->col[11] ;
			$this->col[12] ;
			$this->col[13] ;
			$this->col[14] ;

			// $this->col = [];
			// ########################    int   #################################################
			//
			// $this->col[] = ["label"=>$bd_option[0]->int_1_lable,"name"=>"int_1","visible"=>boolval($bd_option[0]->int_1_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->int_2_lable,"name"=>"int_2","visible"=>boolval($bd_option[0]->int_2_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->int_3_lable,"name"=>"int_3","visible"=>boolval($bd_option[0]->int_3_visible)];
			//
			// // #########################   date   ################################################
			// $this->col[] = ["label"=>$bd_option[0]->date_1_lable,"name"=>"date_1","visible"=>boolval($bd_option[0]->date_1_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->date_2_lable,"name"=>"date_2","visible"=>boolval($bd_option[0]->date_2_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->date_3_lable,"name"=>"date_3","visible"=>boolval($bd_option[0]->date_3_visible)];
			//
			// // ########################    varchar   #################################################
			// $this->col[] = ["label"=>$bd_option[0]->varchar_1_lable,"name"=>"varchar_1","visible"=>boolval($bd_option[0]->varchar_1_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->varchar_2_lable,"name"=>"varchar_2","visible"=>boolval($bd_option[0]->varchar_2_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->varchar_3_lable,"name"=>"varchar_3","visible"=>boolval($bd_option[0]->varchar_3_visible)];
			//
			// // ########################     textarea   #################################################
			// $this->col[] = ["label"=>$bd_option[0]->textarea_1_lable,"name"=>"textarea_1","visible"=>boolval($bd_option[0]->textarea_1_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->textarea_2_lable,"name"=>"textarea_2","visible"=>boolval($bd_option[0]->textarea_2_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->textarea_1_lable,"name"=>"textarea_3","visible"=>boolval($bd_option[0]->textarea_3_visible)];
			//
			// // #########################    attachment   ################################################
			// $this->col[] = ["label"=>$bd_option[0]->attachment_1_lable,"name"=>"attachment_1","visible"=>boolval($bd_option[0]->attachment_1_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->attachment_2_lable,"name"=>"attachment_2","visible"=>boolval($bd_option[0]->attachment_2_visible)];
			// $this->col[] = ["label"=>$bd_option[0]->attachment_3_lable,"name"=>"attachment_3","visible"=>boolval($bd_option[0]->attachment_3_visible)];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE



			########################    int   #################################################
			// $list[$int1] =  ['label'=>$bdt_option[0]->int_1_lable,'name'=>'int_1','type'=>$bdt_option[0]->int_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$int2] =  ['label'=>$bdt_option[0]->int_2_lable,'name'=>'int_2','type'=>$bdt_option[0]->int_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$int3] =  ['label'=>$bdt_option[0]->int_3_lable,'name'=>'int_3','type'=>$bdt_option[0]->int_3_type,'validation'=>'','width'=>'col-sm-4'];
			//
			// ########################    date   #################################################
			// $list[$date1] =  ['label'=>$bdt_option[0]->date_1_lable,'name'=>'date_1','type'=>$bdt_option[0]->date_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$date2] =  ['label'=>$bdt_option[0]->date_2_lable,'name'=>'date_2','type'=>$bdt_option[0]->date_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$date3] =  ['label'=>$bdt_option[0]->date_3_lable,'name'=>'date_3','type'=>$bdt_option[0]->date_3_type,'validation'=>'','width'=>'col-sm-4'];
			//
			// ########################    varchar   #################################################
			// $list[$varchar1] =  ['label'=>$bdt_option[0]->varchar_1_lable,'name'=>'varchar_1','type'=>$bdt_option[0]->varchar_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$varchar2] =  ['label'=>$bdt_option[0]->varchar_2_lable,'name'=>'varchar_2','type'=>$bdt_option[0]->varchar_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$varchar3] =  ['label'=>$bdt_option[0]->varchar_3_lable,'name'=>'varchar_3','type'=>$bdt_option[0]->varchar_3_type,'validation'=>'','width'=>'col-sm-4'];
			//
			// ########################    textarea   #################################################
			// $list[$textarea1] =  ['label'=>$bdt_option[0]->textarea_1_lable,'name'=>'textarea_1','type'=>$bdt_option[0]->textarea_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$textarea2] =  ['label'=>$bdt_option[0]->textarea_2_lable,'name'=>'textarea_2','type'=>$bdt_option[0]->textarea_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$textarea3] =  ['label'=>$bdt_option[0]->textarea_3_lable,'name'=>'textarea_3','type'=>$bdt_option[0]->textarea_3_type,'validation'=>'','width'=>'col-sm-4'];
			//
			// ########################    attachment   #################################################
			// $list[$attachment1] =  ['label'=>$bdt_option[0]->attachment_1_lable,'name'=>'attachment_1','type'=>$bdt_option[0]->attachment_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$attachment2] =  ['label'=>$bdt_option[0]->attachment_2_lable,'name'=>'attachment_2','type'=>$bdt_option[0]->attachment_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[$attachment3] =  ['label'=>$bdt_option[0]->attachment_3_lable,'name'=>'attachment_3','type'=>$bdt_option[0]->attachment_3_type,'validation'=>'','width'=>'col-sm-4'];

			// for ($i=1; $i <= $count ; $i++) {
			// 	array_push($this->form ,$list[$i] );
			// }
			// array_push($this->form, ['label'=>'BasicDataRecordGroup Id','name'=>'bd_rg_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'bd_record_group,id']);


			// $list[1] =  ['label'=>$bdt_option[0]->int_1_lable,'name'=>'int_1','type'=>$bdt_option[0]->int_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[2] =  ['label'=>$bdt_option[0]->int_2_lable,'name'=>'int_2','type'=>$bdt_option[0]->int_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[3] =  ['label'=>$bdt_option[0]->int_3_lable,'name'=>'int_3','type'=>$bdt_option[0]->int_3_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[4] =  ['label'=>$bdt_option[0]->date_1_lable,'name'=>'date_1','type'=>$bdt_option[0]->date_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[5] =  ['label'=>$bdt_option[0]->date_2_lable,'name'=>'date_2','type'=>$bdt_option[0]->date_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[6] =  ['label'=>$bdt_option[0]->date_3_lable,'name'=>'date_3','type'=>$bdt_option[0]->date_3_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[7] =  ['label'=>$bdt_option[0]->varchar_1_lable,'name'=>'varchar_1','type'=>$bdt_option[0]->varchar_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[8] =  ['label'=>$bdt_option[0]->varchar_2_lable,'name'=>'varchar_2','type'=>$bdt_option[0]->varchar_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[9] =  ['label'=>$bdt_option[0]->varchar_3_lable,'name'=>'varchar_3','type'=>$bdt_option[0]->varchar_3_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[10] =  ['label'=>$bdt_option[0]->textarea_1_lable,'name'=>'textarea_1','type'=>$bdt_option[0]->textarea_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[11] =  ['label'=>$bdt_option[0]->textarea_2_lable,'name'=>'textarea_2','type'=>$bdt_option[0]->textarea_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[12] =  ['label'=>$bdt_option[0]->textarea_3_lable,'name'=>'textarea_3','type'=>$bdt_option[0]->textarea_3_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[13] =  ['label'=>$bdt_option[0]->attachment_1_lable,'name'=>'attachment_1','type'=>$bdt_option[0]->attachment_1_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[14] =  ['label'=>$bdt_option[0]->attachment_2_lable,'name'=>'attachment_2','type'=>$bdt_option[0]->attachment_2_type,'validation'=>'','width'=>'col-sm-4'];
			// $list[15] =  ['label'=>$bdt_option[0]->attachment_3_lable,'name'=>'attachment_3','type'=>$bdt_option[0]->attachment_3_type,'validation'=>'','width'=>'col-sm-4'];
			// for ($i=1; $i <= $count ; $i++) {
			// 	array_push($this->form ,$list[$i] );
			// }
			// array_push($this->form, ['label'=>'BasicDataRecordGroup Id','name'=>'bd_rg_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'bd_record_group,id']);




			//$this->form = [$list[1],$list[2],$list[3],];
			//$this->form[] = ['label'=>'Bdt Option Id','name'=>'bdt_option_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-4','datatable'=>'bdt_option,id'];

			# END FORM DO NOT REMOVE THIS LINE



			# OLD START FORM
			$this->form = [];
			$this->form[] =  ['label'=>'BasicDataRecordGroup Id','name'=>'bd_rg_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'bd_record_group,id'];
			$this->form[] =  ['label'=>$bdt_option[0]->int_1_lable,'name'=>'int_1','type'=>$bdt_option[0]->int_1_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->int_2_lable,'name'=>'int_2','type'=>$bdt_option[0]->int_2_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->int_3_lable,'name'=>'int_3','type'=>$bdt_option[0]->int_3_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->date_1_lable,'name'=>'date_1','type'=>$bdt_option[0]->date_1_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->date_2_lable,'name'=>'date_2','type'=>$bdt_option[0]->date_2_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->date_3_lable,'name'=>'date_3','type'=>$bdt_option[0]->date_3_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->varchar_1_lable,'name'=>'varchar_1','type'=>$bdt_option[0]->varchar_1_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->varchar_2_lable,'name'=>'varchar_2','type'=>$bdt_option[0]->varchar_2_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->varchar_3_lable,'name'=>'varchar_3','type'=>$bdt_option[0]->varchar_3_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->textarea_1_lable,'name'=>'textarea_1','type'=>$bdt_option[0]->textarea_1_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->textarea_2_lable,'name'=>'textarea_2','type'=>$bdt_option[0]->textarea_2_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->textarea_3_lable,'name'=>'textarea_3','type'=>$bdt_option[0]->textarea_3_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->attachment_1_lable,'name'=>'attachment_1','type'=>$bdt_option[0]->attachment_1_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->attachment_2_lable,'name'=>'attachment_2','type'=>$bdt_option[0]->attachment_2_type,'validation'=>'','width'=>'col-sm-4'];
			$this->form[] =  ['label'=>$bdt_option[0]->attachment_3_lable,'name'=>'attachment_3','type'=>$bdt_option[0]->attachment_3_type,'validation'=>'','width'=>'col-sm-4'];

			//$this->form[] = ["label"=>"Ref Id","name"=>"ref_id","type"=>"select2","required"=>TRUE,"validation"=>"required|min:1|max:255","datatable"=>"ref,id"];
			//$this->form[] = ["label"=>"Bd Id","name"=>"bd_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"bd,id"];
			//$this->form[] = ["label"=>"Int 1","name"=>"int_1","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Int 2","name"=>"int_2","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Int 3","name"=>"int_3","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Date 1","name"=>"date_1","type"=>"date","required"=>TRUE,"validation"=>"required|date"];
			//$this->form[] = ["label"=>"Date 2","name"=>"date_2","type"=>"date","required"=>TRUE,"validation"=>"required|date"];
			//$this->form[] = ["label"=>"Date 3","name"=>"date_3","type"=>"date","required"=>TRUE,"validation"=>"required|date"];
			//$this->form[] = ["label"=>"Varchar 1","name"=>"varchar_1","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 2","name"=>"varchar_2","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 3","name"=>"varchar_3","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 1","name"=>"textarea_1","type"=>"textarea","required"=>TRUE,"validation"=>"required|string|min:5|max:5000"];
			//$this->form[] = ["label"=>"Textarea 2","name"=>"textarea_2","type"=>"textarea","required"=>TRUE,"validation"=>"required|string|min:5|max:5000"];
			//$this->form[] = ["label"=>"Textarea 3","name"=>"textarea_3","type"=>"textarea","required"=>TRUE,"validation"=>"required|string|min:5|max:5000"];
			//$this->form[] = ["label"=>"Attachment 1","name"=>"attachment_1","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 2","name"=>"attachment_2","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 3","name"=>"attachment_3","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Active","name"=>"active","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Editor","name"=>"editor","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Updated","name"=>"updated","type"=>"datetime","required"=>TRUE,"validation"=>"required|date_format:Y-m-d H:i:s"];
			# OLD END FORM

			/*
	        | ----------------------------------------------------------------------
	        | Sub Module
	        | ----------------------------------------------------------------------
			| @label          = Label of action
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        |
	        */
	        $this->sub_module = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        |
	        */
	        $this->addaction = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add More Button Selected
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button
	        | Then about the action, you should code at actionButtonSelected method
	        |
	        */
	        $this->button_selected = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------
	        | @message = Text of message
	        | @type    = warning,success,danger,info
	        |
	        */
	        $this->alert        = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add more button to header button
	        | ----------------------------------------------------------------------
	        | @label = Name of button
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        |
	        */
					$id = $rg_id[0]->id;
					$to1 = "http://127.0.0.1:8000/admin/bd_record_group?parent_table=record_group&parent_columns=name&parent_columns_alias=&parent_id=5&return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Frecord_group&foreign_key=rg_id&label=bd+Record+Group";
					$to = "http://127.0.0.1:8000/dashboard/getIndex1/$id";
					$message = "redirect";
					$type = "warning, info, primary, success, danger";

					$this->index_button = array();
					//$this->index_button[] = ['label'=>'DASHBOARD','url'=>CRUDBooster::redirect($to,$message,warning),"icon"=>"fa fa-bar-chart"];
					$this->index_button[] = ['label'=>'DASHBOARD','url'=>$to,"icon"=>"fa fa-bar-chart"];

					//$this->index_button[] = ['label'=>'DASHBOARD',"callback_php" => ,"icon"=>"fa fa-bar-chart"];



	        /*
	        | ----------------------------------------------------------------------
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.
	        |
	        */
	        $this->table_row_color = array();


	        /*
	        | ----------------------------------------------------------------------
	        | You may use this bellow array to add statistic at dashboard
	        | ----------------------------------------------------------------------
	        | @label, @count, @icon, @color
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add javascript at body
	        | ----------------------------------------------------------------------
	        | javascript code in the variable
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code before index table
	        | ----------------------------------------------------------------------
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code after index table
	        | ----------------------------------------------------------------------
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include Javascript File
	        | ----------------------------------------------------------------------
	        | URL of your javascript each array
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add css style at body
	        | ----------------------------------------------------------------------
	        | css code in the variable
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;



	        /*
	        | ----------------------------------------------------------------------
	        | Include css File
	        | ----------------------------------------------------------------------
	        | URL of your css each array
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();


	    }


	    /*
	    | ----------------------------------------------------------------------
	    | Hook for button selected
	    | ----------------------------------------------------------------------
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here

	    }


	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate query of index result
	    | ----------------------------------------------------------------------
	    | @query = current sql query
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate row of index table html
	    | ----------------------------------------------------------------------
	    |
	    */
	    public function hook_row_index($column_index,&$column_value) {
	    	//Your code here
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before add data is execute
	    | ----------------------------------------------------------------------
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after add public static function called
	    | ----------------------------------------------------------------------
	    | @id = last insert id
	    |
	    */
	    public function hook_after_add($id) {
	        //Your code here


		// 			public function hook_after_add($id) {
    // //in this example, i want insert data to other table after data inserted
		//
    // $news = DB::table('news')->where('id',$id)->first();
		//
    // $data = array();
    // $data['description'] = "I just insert new data for modul news with title '$title'";
    // DB::table("somelogs")->insert($data);
			}



	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before update data is execute
	    | ----------------------------------------------------------------------
	    | @postdata = input post data
	    | @id       = current id
	    |
	    */
	    public function hook_before_edit(&$postdata,$id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_edit($id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }





	    //By the way, you can still create your own method in here... :)


	}
