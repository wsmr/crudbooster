<?php
namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use Hash;
	use CRUDBooster;

class AdminDashboardController extends Controller
{

  public function getIndex1($a){
		// $rdfn_id = 22;
		$id = $a;
		$data = DB::table('record_details')
//							->where('rg_id',$id)
							->get();

		$rdfn3_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',3)
								->first();
		$rdfn5_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',5)
								->first();
		$rdfn9_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',9)
								->first();
		$rdfn10_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',10)
								->first();
		$rdfn11_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',11)
								->first();
		$rdfn12_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',12)
								->first();
		$rdfn13_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',13)
								->first();
		$rdfn14_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',14)
								->first();
		$rdfn16_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',16)
								->first();
		$rdfn17_id = DB::table('bd_record_group')
								->select('id')
								->where('rg_id',$id)
								->where('bd_id',17)
								->first();
		return view('dashboard.dashboard', compact('data','id','rdfn3_id','rdfn5_id','rdfn9_id','rdfn10_id','rdfn11_id','rdfn12_id','rdfn13_id','rdfn14_id','rdfn16_id','rdfn17_id'));
	}

	public function getIndex2(){
			return view('dashboard.iframe');
		}

	public function getdash(){
			$data = DB::table('record_group')->get();
			return view('dashboard.imagedash',compact('data'));
			//return view('dashboard.card.index',compact('data'));

		}

	public function weather_view($rg_id){
		$rg_id = $rg_id;
    $status = DB::table('weather_status')->get();
    $data = DB::table('day_status')
						->where('rg_id',$rg_id)
						->get();

    return view("charts.pie.chart", compact('status','data','rg_id'));
  }
	public function camera_view($rg_id){
		$rg_cctv_id = $rg_id;
    $cctv_data = DB::table('camera')
						->where('rg_id',$rg_id)
						->get();

    return view("dashboard.iframe", compact('cctv_data','rg_cctv_id'));
  }







	public function getIndextoWeather_Album($id){
		//Create an Auth
		if(!CRUDBooster::isRead() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {
			CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
		}
		$title =DB::table('cms_settings')->where('name','appname')->First();
		$data = [];
		$data['title'] = $title->content;
		$data['gallery'] = DB::table('gallery')->where('album_id',$id)->get();

		//Please use cbView method instead view method from laravel
		$this->cbView('gallery.index',$data);
	}

	}
?>
