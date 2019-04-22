<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminGalleryController extends \crocodicstudio\crudbooster\controllers\CBController {


// over write the function -> route the index view
		public function getIndex(){
			$title =DB::table('cms_settings')->where('name','appname')->First();
			$data['title'] = $title->content;
			$data['active'] = 'index';
			$data['gallery'] = DB::table('gallery')->orderby('id','desc')->get();
			return view('gallery.index',$data);
		}

	    //By the way, you can still create your own method in here... :)


	}
