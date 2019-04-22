<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminDayStatus26Controller extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

				$rg_id = Request::get('parent_id');
				$rg_name = DB::table('record_group')
					->Where('record_group.id', $rg_id)
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
			$this->button_import = true;
			$this->button_export = true;
			$this->table = "day_status";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$visible = true;
			$width = 'col-sm-3';

			$this->col = [];
			$this->col[] = ["label"=>"Project Record","name"=>"rg_id","join"=>"record_group,name"];
			$list1[] = $this->col[] = ["label"=>"Date","name"=>"date"];


			//$list1[] = $this->col[] = ["label"=>"1","name"=>"hour1" ,"visible" => $visible];
			//$list1[] = $this->col[] = ["label"=>"2","name"=>"hour2" ,"visible" => $visible];
			//$list1[] = $this->col[] = ["label"=>"3","name"=>"hour3" ,"visible" => $visible];


			$list1[0];
			$list1[1];
			$list1[2];
			$list1[3];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Project Record',
											 'name'=>'rg_id',
											 'type'=>'select2',
											 'validation'=>'required',
											 'width'=>'col-sm-3',
											 'datatable'=>'record_group,name'
										 ];

			$this->form[] = [
				'label'=>'Date',
				'name'=>'date',
				'type'=>'date',
				'validation'=>'required|date',
				'width'=>$width,
				'placeholder'=>'Enter the Date'
			];
			$this->form[] = ['label'=>'12 am to 1 am','name'=>'hour1','type'=>'select2','validation'=>'','width'=>'col-sm-4','help'=>'Select the Wether Status/ Default Value is Sunny','datatable'=>'weather_status,status'];
			$this->form[] = ['label'=>'1 am to 2 am','name'=>'hour2','type'=>'select2','validation'=>'','width'=>'col-sm-4','datatable'=>'weather_status,status',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'2 am to 3 am','name'=>'hour3','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'3 am to 4 am','name'=>'hour4','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'4 am to 5 am','name'=>'hour5','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'5 am to 6 am','name'=>'hour6','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'6 am to 7 am','name'=>'hour7','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'7 am to 8 am','name'=>'hour8','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'8 am to 9 am','name'=>'hour9','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'9 am to 10 am','name'=>'hour10','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'10 am to 11 am','name'=>'hour11','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'11 am to 12 pm','name'=>'hour12','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'12 pm to 1 pm','name'=>'hour13','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'1 pm to 2 pm','name'=>'hour14','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'2 pm to 3 pm','name'=>'hour15','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'3 pm to 4 pm','name'=>'hour16','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'4 pm to 5 pm','name'=>'hour17','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'5 pm to 6 pm','name'=>'hour18','type'=>'radio','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'4',"datatable_where"=>"id != 5"];
			$this->form[] = ['label'=>'6 pm to 7 pm','name'=>'hour19','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'7 pm to 8 pm','name'=>'hour20','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'8 pm to 9 pm','name'=>'hour21','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'9 pm to 10 pm','name'=>'hour22','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'10 pm to 11 pm','name'=>'hour23','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			$this->form[] = ['label'=>'11 pm to 12 am','name'=>'hour24','type'=>'select2','validation'=>'','width'=>'col-sm-4' ,'datatable'=>'weather_status,status','value'=>'0'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Date','name'=>'date','type'=>'date','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'1','name'=>'1','type'=>'select2','width'=>'col-sm-10','datatable'=>'weather_status,status'];
			//$this->form[] = ['label'=>'2','name'=>'2','type'=>'select2','width'=>'col-sm-10','datatable'=>'weather_status,status'];
			//$this->form[] = ['label'=>'3','name'=>'3','type'=>'select2','width'=>'col-sm-10','datatable'=>'weather_status,status'];
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
					$id = $rg_id;
					$to = "http://127.0.0.1:8000/weather/$id";
	        $this->index_button = array();
					$this->index_button[] = ['label'=>'CHART','url'=>$to,"icon"=>"fa fa-bar-chart"];


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
