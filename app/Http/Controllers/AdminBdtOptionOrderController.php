<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminBdtOptionOrderController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {


			$bdt_option_id = Request::get('parent_id');
			//$bdt_option_id = 1;
			$bdt_option = DB::table('bdt_option')
				->Where('bdt_option.id', $bdt_option_id)
				->get();

			$bdt_option_order_id = Request::get('parent_id');
			//$bdt_option_id = 1;
			$bdt_option_order = DB::table('bdt_option_order')
				->join('bdt_option', 'bdt_option.id', '=', 'bdt_option_order.bdt_option_id')
				->Where('bdt_option.id', $bdt_option_order_id)
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
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "bdt_option_order";
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
			$m1[$int1] =["label"=>$bdt_option[0]->int_1_lable,"name"=>"int_1_order","visible"=>boolval($bdt_option[0]->int_1_visible)];
			$m1[$int2] =["label"=>$bdt_option[0]->int_2_lable,"name"=>"int_2_order","visible"=>boolval($bdt_option[0]->int_2_visible)];
			$m1[$int3] =["label"=>$bdt_option[0]->int_3_lable,"name"=>"int_3_order","visible"=>boolval($bdt_option[0]->int_3_visible)];

		 #########################   date   ################################################
		 $m1[$date1] = ["label"=>$bdt_option[0]->date_1_lable,"name"=>"date_1_order","visible"=>boolval($bdt_option[0]->date_1_visible)];
		 $m1[$date2] = ["label"=>$bdt_option[0]->date_2_lable,"name"=>"date_2_order","visible"=>boolval($bdt_option[0]->date_2_visible)];
		 $m1[$date3] = ["label"=>$bdt_option[0]->date_3_lable,"name"=>"date_3_order","visible"=>boolval($bdt_option[0]->date_3_visible)];

		 ########################    varchar   #################################################
		 $m1[$varchar1] = ["label"=>$bdt_option[0]->varchar_1_lable,"name"=>"varchar_1_order","visible"=>boolval($bdt_option[0]->varchar_1_visible)];
		 $m1[$varchar2] = ["label"=>$bdt_option[0]->varchar_2_lable,"name"=>"varchar_2_order","visible"=>boolval($bdt_option[0]->varchar_2_visible)];
		 $m1[$varchar3] = ["label"=>$bdt_option[0]->varchar_3_lable,"name"=>"varchar_3_order","visible"=>boolval($bdt_option[0]->varchar_3_visible)];

		 ########################     textarea   #################################################
		 $m1[$textarea1] = ["label"=>$bdt_option[0]->textarea_1_lable,"name"=>"textarea_1_order","visible"=>boolval($bdt_option[0]->textarea_1_visible)];
		 $m1[$textarea2] = ["label"=>$bdt_option[0]->textarea_2_lable,"name"=>"textarea_2_order","visible"=>boolval($bdt_option[0]->textarea_2_visible)];
		 $m1[$textarea3] = ["label"=>$bdt_option[0]->textarea_3_lable,"name"=>"textarea_3_order","visible"=>boolval($bdt_option[0]->textarea_3_visible)];

		 #########################    attachment   ################################################
		 $m1[$attachment1] = ["label"=>$bdt_option[0]->attachment_1_lable,"name"=>"attachment_1_order","visible"=>boolval($bdt_option[0]->attachment_1_visible)];
		 $m1[$attachment2] = ["label"=>$bdt_option[0]->attachment_2_lable,"name"=>"attachment_2_order","visible"=>boolval($bdt_option[0]->attachment_2_visible)];
		 $m1[$attachment3] = ["label"=>$bdt_option[0]->attachment_3_lable,"name"=>"attachment_3_order","visible"=>boolval($bdt_option[0]->attachment_3_visible)];


			for ($i=1; $i <= $count ; $i++) {
				array_push($this->col ,$m1[$i] );
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



			# START FORM DO NOT REMOVE THIS LINE


			# START FORM DO NOT REMOVE THIS LINE
			$count_form = 0;
			if ($bdt_option[0]->int_1_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->int_2_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->int_3_type !== hidden) { $count_form++ ; }

			if ($bdt_option[0]->date_1_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->date_2_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->date_3_type !== hidden) { $count_form++ ; }

			if ($bdt_option[0]->varchar_1_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->varchar_2_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->varchar_3_type !== hidden) { $count_form++ ; }

			if ($bdt_option[0]->textarea_1_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->textarea_2_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->textarea_3_type !== hidden) { $count_form++ ; }

			if ($bdt_option[0]->attachment_1_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->attachment_2_type !== hidden) { $count_form++ ; }
			if ($bdt_option[0]->attachment_3_type !== hidden) { $count_form++ ; }

			$datas = [];
			$a = 1;
			while ($a <= $count_form) {
				array_push($datas , $a);
				$a++;
			}

			$list[1] = ($bdt_option[0]->int_1_type == 'hidden') ? ['label'=>$bdt_option[0]->int_1_lable,'name'=>'int_1_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->int_1_lable,'name'=>'int_1_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[2] = ($bdt_option[0]->int_2_type == 'hidden') ? ['label'=>$bdt_option[0]->int_2_lable,'name'=>'int_2_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->int_2_lable,'name'=>'int_2_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[3] = ($bdt_option[0]->int_3_type == 'hidden') ? ['label'=>$bdt_option[0]->int_3_lable,'name'=>'int_3_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->int_3_lable,'name'=>'int_3_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];

			$list[4] = ($bdt_option[0]->date_1_type == 'hidden') ? ['label'=>$bdt_option[0]->date_1_lable,'name'=>'date_1_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->date_1_lable,'name'=>'date_1_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[5] = ($bdt_option[0]->date_2_type == 'hidden') ? ['label'=>$bdt_option[0]->date_2_lable,'name'=>'date_2_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->date_2_lable,'name'=>'date_2_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[6] = ($bdt_option[0]->date_3_type == 'hidden') ? ['label'=>$bdt_option[0]->date_3_lable,'name'=>'date_3_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->date_3_lable,'name'=>'date_3_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];

			$list[7] = ($bdt_option[0]->varchar_1_type == 'hidden') ? ['label'=>$bdt_option[0]->varchar_1_lable,'name'=>'varchar_1_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->varchar_1_lable,'name'=>'varchar_1_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[8] = ($bdt_option[0]->varchar_2_type == 'hidden') ? ['label'=>$bdt_option[0]->varchar_2_lable,'name'=>'varchar_2_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->varchar_2_lable,'name'=>'varchar_2_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[9] = ($bdt_option[0]->varchar_3_type == 'hidden') ? ['label'=>$bdt_option[0]->varchar_3_lable,'name'=>'varchar_3_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->varchar_3_lable,'name'=>'varchar_3_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];

			$list[10] = ($bdt_option[0]->textarea_1_type == 'hidden') ? ['label'=>$bdt_option[0]->textarea_1_lable,'name'=>'textarea_1_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->textarea_1_lable,'name'=>'textarea_1_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[11] = ($bdt_option[0]->textarea_2_type == 'hidden') ? ['label'=>$bdt_option[0]->textarea_2_lable,'name'=>'textarea_2_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->textarea_2_lable,'name'=>'textarea_2_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[12] = ($bdt_option[0]->textarea_3_type == 'hidden') ? ['label'=>$bdt_option[0]->textarea_3_lable,'name'=>'textarea_3_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->textarea_3_lable,'name'=>'textarea_3_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];

			$list[13] = ($bdt_option[0]->attachment_1_type == 'hidden') ? ['label'=>$bdt_option[0]->attachment_1_lable,'name'=>'attachment_1_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->attachment_1_lable,'name'=>'attachment_1_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[14] = ($bdt_option[0]->attachment_2_type == 'hidden') ? ['label'=>$bdt_option[0]->attachment_2_lable,'name'=>'attachment_2_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->attachment_2_lable,'name'=>'attachment_2_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];
			$list[15] = ($bdt_option[0]->attachment_3_type == 'hidden') ? ['label'=>$bdt_option[0]->attachment_3_lable,'name'=>'attachment_3_order','type'=>'hidden','validation'=>'','width'=>''] : ['label'=>$bdt_option[0]->attachment_3_lable,'name'=>'attachment_3_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>$datas];


			########################    int   #################################################
			//$list[$int1] =  ['label'=>$bdt_option[0]->int_1_lable,'name'=>'int_1_order','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-4','dataenum'=>'1;2'];
// 			$list[$int1] =  ['label'=>$bdt_option[0]->int_1_lable,'name'=>'int_1_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$int2] =  ['label'=>$bdt_option[0]->int_2_lable,'name'=>'int_2_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$int3] =  ['label'=>$bdt_option[0]->int_3_lable,'name'=>'int_3_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			########################    date   #################################################
// 			$list[$date1] =  ['label'=>$bdt_option[0]->date_1_lable,'name'=>'date_1_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$date2] =  ['label'=>$bdt_option[0]->date_2_lable,'name'=>'date_2_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$date3] =  ['label'=>$bdt_option[0]->date_3_lable,'name'=>'date_3_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			########################    varchar   #################################################
// 			$list[$varchar1] =  ['label'=>$bdt_option[0]->varchar_1_lable,'name'=>'varchar_1_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$varchar2] =  ['label'=>$bdt_option[0]->varchar_2_lable,'name'=>'varchar_2_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$varchar3] =  ['label'=>$bdt_option[0]->varchar_3_lable,'name'=>'varchar_3_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			########################    textarea   #################################################
// 			$list[$textarea1] =  ['label'=>$bdt_option[0]->textarea_1_lable,'name'=>'textarea_1_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$textarea2] =  ['label'=>$bdt_option[0]->textarea_2_lable,'name'=>'textarea_2_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$textarea3] =  ['label'=>$bdt_option[0]->textarea_3_lable,'name'=>'textarea_3_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			########################    attachment   #################################################
// 			$list[$attachment1] =  ['label'=>$bdt_option[0]->attachment_1_lable,'name'=>'attachment_1_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$attachment2] =  ['label'=>$bdt_option[0]->attachment_2_lable,'name'=>'attachment_2_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
// 			$list[$attachment3] =  ['label'=>$bdt_option[0]->attachment_3_lable,'name'=>'attachment_3_order','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-4'];
//
//
// 			for ($ii=1; $ii <=$count ; $ii++) {
// 				array_push($this->form ,$list[$ii] );
// 			}
//
 			//$this->form = [$list[1]];
			$this->form = [$list[1],$list[2],$list[3],$list[4],$list[5],$list[6],$list[7],$list[8],$list[9],$list[10],$list[11],$list[12],$list[13],$list[14],$list[15],];
			$this->form[] = ['label'=>'Bdt Option Id','name'=>'bdt_option_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-4','datatable'=>'bdt_option,id'];
########################    int   #################################################
			$this->form[0] ;
			$this->form[1] ;
			$this->form[2] ;
########################    date   #################################################
			$this->form[3] ;
			$this->form[4] ;
			$this->form[5] ;
########################    varchar   #################################################
			$this->form[6] ;
			$this->form[7] ;
			$this->form[8] ;
########################    textarea   #################################################
			$this->form[9] ;
			$this->form[10] ;
			$this->form[11] ;
########################    attachment   #################################################
			$this->form[12] ;
			$this->form[13] ;
			$this->form[14] ;

			// $this->form[] = ['label'=>'Updated','name'=>'updated','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE






			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Bdt Option Id","name"=>"bdt_option_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"bdt_option,id"];
			//$this->form[] = ["label"=>"Int 1 Visible","name"=>"int_1_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Int 1 Lable","name"=>"int_1_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Int 1 Type","name"=>"int_1_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Int 1 Order","name"=>"int_1_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Int 2 Visible","name"=>"int_2_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Int 2 Lable","name"=>"int_2_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Int 2 Type","name"=>"int_2_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Int 2 Order","name"=>"int_2_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Int 3 Visible","name"=>"int_3_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Int 3 Lable","name"=>"int_3_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Int 3 Type","name"=>"int_3_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Int 3 Order","name"=>"int_3_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Date 1 Visible","name"=>"date_1_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Date 1 Lable","name"=>"date_1_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Date 1 Type","name"=>"date_1_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Date 1 Order","name"=>"date_1_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Date 2 Visible","name"=>"date_2_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Date 2 Lable","name"=>"date_2_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Date 2 Type","name"=>"date_2_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Date 2 Order","name"=>"date_2_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Date 3 Visible","name"=>"date_3_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Date 3 Lable","name"=>"date_3_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Date 3 Type","name"=>"date_3_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Date 3 Order","name"=>"date_3_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Varchar 1 Visible","name"=>"varchar_1_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 1 Lable","name"=>"varchar_1_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 1 Type","name"=>"varchar_1_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 1 Order","name"=>"varchar_1_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Varchar 2 Visible","name"=>"varchar_2_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 2 Lable","name"=>"varchar_2_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 2 Type","name"=>"varchar_2_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 2 Order","name"=>"varchar_2_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Varchar 3 Visible","name"=>"varchar_3_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 3 Lable","name"=>"varchar_3_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 3 Type","name"=>"varchar_3_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Varchar 3 Order","name"=>"varchar_3_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Textarea 1 Visible","name"=>"textarea_1_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 1 Lable","name"=>"textarea_1_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 1 Type","name"=>"textarea_1_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 1 Order","name"=>"textarea_1_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Textarea 2 Visible","name"=>"textarea_2_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 2 Lable","name"=>"textarea_2_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 2 Type","name"=>"textarea_2_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 2 Order","name"=>"textarea_2_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Textarea 3 Visible","name"=>"textarea_3_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 3 Lable","name"=>"textarea_3_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 3 Type","name"=>"textarea_3_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Textarea 3 Order","name"=>"textarea_3_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Attachment 1 Visible","name"=>"attachment_1_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 1 Lable","name"=>"attachment_1_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 1 Type","name"=>"attachment_1_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 1 Order","name"=>"attachment_1_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Attachment 2 Visible","name"=>"attachment_2_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 2 Lable","name"=>"attachment_2_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 2 Type","name"=>"attachment_2_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 2 Order","name"=>"attachment_2_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Attachment 3 Visible","name"=>"attachment_3_visible","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 3 Lable","name"=>"attachment_3_lable","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 3 Type","name"=>"attachment_3_type","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Attachment 3 Order","name"=>"attachment_3_order","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
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
	        $this->index_button = array();



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
