<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminBdtOptionController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

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
			$this->table = "bdt_option";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$visible=false;
			$show = true;

			$this->col = [];
			$this->col[] = ["label"=>"Id","name"=>"id"];
			$this->col[] = ["label"=>"Basic Data Type","name"=>"bdt_id","join"=>"bd_type,name"];
			$this->col[] = ["label"=>"Editor","name"=>"editor","visible" => $visible ];
			$this->col[] = ["label"=>"Active","name"=>"active","visible" => $visible];
			$this->col[] = ["label"=>"Updated","name"=>"updated","visible" => true];

########################    int   #################################################
// 			$this->col[] = ["label"=>"Int 1 Visible","name"=>"int_1_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Int 1 Lable","name"=>"int_1_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Int 1 Type","name"=>"int_1_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Int 2 Visible","name"=>"int_2_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Int 2 Lable","name"=>"int_2_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Int 2 Type","name"=>"int_2_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Int 3 Visible","name"=>"int_3_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Int 3 Lable","name"=>"int_3_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Int 3_type","name"=>"int_3_type","visible" => $visible ];
//
// #########################   date   ################################################
// 			$this->col[] = ["label"=>"Date 1 Visible","name"=>"date_1_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Date 1_lable","name"=>"date_1_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Date 1_type","name"=>"date_1_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Date 2 Visible","name"=>"date_2_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Date 2_lable","name"=>"date_2_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Date 2_type","name"=>"date_2_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Date 3 Visible","name"=>"date_3_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Date 3_lable","name"=>"date_3_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Date 3_type","name"=>"date_3_type","visible" => $visible ];
//
// ########################    varchar   #################################################
// 			$this->col[] = ["label"=>"Varchar 1 Visible","name"=>"varchar_1_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Varchar 1_lable","name"=>"varchar_1_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Varchar 1_type","name"=>"varchar_1_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Varchar 2 Visible","name"=>"varchar_2_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Varchar 2_lable","name"=>"varchar_2_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Varchar 2_type","name"=>"varchar_2_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Varchar 3 Visible","name"=>"varchar_3_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Varchar 3_lable","name"=>"varchar_3_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Varchar 3_type","name"=>"varchar_3_type","visible" => $visible ];
//
// ########################     text area   #################################################
// 			$this->col[] = ["label"=>"Textarea 1 Visible","name"=>"textarea_1_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Textarea 1_lable","name"=>"textarea_1_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Textarea 1_type","name"=>"textarea_1_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Textarea 2 Visible","name"=>"textarea_2_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Textarea 2_lable","name"=>"textarea_2_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Textarea 2_type","name"=>"textarea_2_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Textarea 3 Visible","name"=>"textarea_3_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Textarea 3_lable","name"=>"textarea_3_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Textarea 3_type","name"=>"textarea_3_type","visible" => $visible ];
//
// #########################    attachment   ################################################
// 			$this->col[] = ["label"=>"Attachment 1 Visible","name"=>"attachment_1_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Attachment 1_lable","name"=>"attachment_1_lable","visible" => $visible ];
// 			$this->col[] Int= ["label"=>"Attachment 1_type","name"=>"attachment_1_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Attachment 2 Visible","name"=>"attachment_2_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Attachment 2_lable","name"=>"attachment_2_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Attachment 2_type","name"=>"attachment_2_type","visible" => $visible ];
//
// 			$this->col[] = ["label"=>"Attachment 3 Visible","name"=>"attachment_3_visible","visible" => $show ];
// 			$this->col[] = ["label"=>"Attachment 3_lable","name"=>"attachment_3_lable","visible" => $visible ];
// 			$this->col[] = ["label"=>"Attachment 3_type","name"=>"attachment_3_type","visible" => $visible ];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE


				// code...
			$type = 'hidden';
			$var = 'text';
			$sel = 'select2';

			$this->form = [];
			$this->form[] = ['label'=>'Basic Data Type','name'=>'bdt_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'bd_type,name'];
			//$this->form[] = ['label'=>'Active','name'=>'active','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Editor','name'=>'editor','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];

########################    int   #################################################
			$this->form[] = ['label'=>'Text Type 1 Visible','name'=>'int_1_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 1 Type','name'=>'int_1_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 1 Lable','name'=>'int_1_lable','type'=> $var,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 2 Visible','name'=>'int_2_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 2 Type','name'=>'int_2_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 2 Lable','name'=>'int_2_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 3 Visible','name'=>'int_3_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 3 Type','name'=>'int_3_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 3 Lable','name'=>'int_3_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

#########################   date   ################################################
			$this->form[] = ['label'=>'Text Type 4 Visible','name'=>'date_1_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 4 Type','name'=>'date_1_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 4 Lable','name'=>'date_1_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 5 Visible','name'=>'date_2_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 5 Type','name'=>'date_2_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 5 Lable','name'=>'date_2_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 6 Visible','name'=>'date_3_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 6 Type','name'=>'date_3_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 6 Lable','name'=>'date_3_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

########################    varchar   #################################################
			$this->form[] = ['label'=>'Text Type 7 Visible','name'=>'varchar_1_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 7 Type','name'=>'varchar_1_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 7 Lable','name'=>'varchar_1_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 8 Visible','name'=>'varchar_2_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 8 Type','name'=>'varchar_2_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 8 Lable','name'=>'varchar_2_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 9 Visible','name'=>'varchar_3_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 9 Type','name'=>'varchar_3_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 9 Lable','name'=>'varchar_3_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

########################     text area   #################################################
			$this->form[] = ['label'=>'Text Type 10 Visible','name'=>'textarea_1_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 10 Type','name'=>'textarea_1_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 10 Lable','name'=>'textarea_1_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 11 Visible','name'=>'textarea_2_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 11 Type','name'=>'textarea_2_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 11 Lable','name'=>'textarea_2_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 12 Visible','name'=>'textarea_3_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 12 Type','name'=>'textarea_3_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 12 Lable','name'=>'textarea_3_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

#########################    attachment   ################################################
			$this->form[] = ['label'=>'Text Type 13 Visible','name'=>'attachment_1_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 13 Type','name'=>'attachment_1_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 13 Lable','name'=>'attachment_1_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 14 Visible','name'=>'attachment_2_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 14 Type','name'=>'attachment_2_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 14 Lable','name'=>'attachment_2_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];

			$this->form[] = ['label'=>'Text Type 15 Visible','name'=>'attachment_3_visible','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'1|True;0|False',"help"=>"true-visible / false-in_visible",'value'=>'0'];
			$this->form[] = ['label'=>'Text Type 15 Type','name'=>'attachment_3_type','type'=> $sel,'validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'hidden;number;date;datetime;text;textarea;upload',"help"=>"",'value'=>'hidden'];
			$this->form[] = ['label'=>'Text Type 15 Lable','name'=>'attachment_3_lable','type'=> $var ,'validation'=>'min:0|max:255','width'=>'col-sm-10'];


			//$this->form[] = ['label'=>'Updated','name'=>'updated','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Bd Name','name'=>'bd_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'basicdata,name'];
			//$this->form[] = ['label'=>'Int 1 Lable','name'=>'int_1_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Int 1 Type','name'=>'int_1_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Int 2 Lable','name'=>'int_2_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Int 2 Type','name'=>'int_2_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Int 3 Lable','name'=>'int_3_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Int 3 Type','name'=>'int_3_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Date 1 Lable','name'=>'date_1_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Date 1 Type','name'=>'date_1_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Date 2 Lable','name'=>'date_2_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Date 2 Type','name'=>'date_2_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Date 3 Lable','name'=>'date_3_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Date 3 Type','name'=>'date_3_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Varchar 1 Lable','name'=>'varchar_1_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Varchar 1 Type','name'=>'varchar_1_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Varchar 2 Lable','name'=>'varchar_2_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Varchar 2 Type','name'=>'varchar_2_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Varchar 3 Lable','name'=>'varchar_3_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Varchar 3 Type','name'=>'varchar_3_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Textarea 1 Lable','name'=>'textarea_1_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Textarea 1 Type','name'=>'textarea_1_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Textarea 2 Lable','name'=>'textarea_2_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Textarea 2 Type','name'=>'textarea_2_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Textarea 3 Lable','name'=>'textarea_3_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Textarea 3 Type','name'=>'textarea_3_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Attachment 1 Lable','name'=>'attachment_1_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Attachment 1 Type','name'=>'attachment_1_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Attachment 2 Lable','name'=>'attachment_2_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Attachment 2 Type','name'=>'attachment_2_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Attachment 3 Lable','name'=>'attachment_3_lable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Attachment 3 Type','name'=>'attachment_3_type','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Active','name'=>'active','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Editor','name'=>'editor','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Updated','name'=>'updated','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
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
					//$this->sub_module[] = ['label'=>'Action Items','path'=>'action_items','foreign_key'=>'objectives_id','button_color'=>'primary','button_icon'=>'fa fa-tags','parent_columns'=>'name'];
					$this->sub_module[] = ['label'=>'Order','path'=>'bdt_option_order','foreign_key'=>'bdt_option_id','button_color'=>'primary','button_icon'=>'fa fa-tags','parent_columns'=>'id'];


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

					//in this example, i want insert data to other table after data inserted



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
