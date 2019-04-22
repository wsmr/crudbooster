<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class WeatherChartController extends Controller
{

  public function getIndex(){
    $date = DB::table('raindata')->distinct()->pluck('date')->toArray();
    return view('WeatherChart', compact('date'));
  }
  // public function getIndex1(){
  //   $date = DB::table('weather_data')->distinct()->pluck('date')->toArray();
  //   $status = DB::table('weather_status')->get();
  //   $data = DB::table('weather_data')->get();
  //
  //   return view("charts.pie.chart", compact('date','status','data'));
  // }

  public function getIndex1(){
    $status = DB::table('weather_status')->get();
    $data = DB::table('day_status')->get();

    return view("charts.pie.chart", compact('status','data'));
  }

  public function getIndex2(){
    //return view("charts.testchart");
    //return view("charts.spline.chart");


    $data = DB::table('record_details')->get();
    return view('dashboard.dashboard', compact('data'));

  }
  // public function getIndex1(){
  //   $date = DB::table('day_status')->distinct()->pluck('date')->toArray();
  //   $status = DB::table('weather_status')->get();
  //   $data = DB::table('weather_data')->get();
  //
  //   return view("charts.pie.chart", compact('date','status','data'));
  // }

  // public function getIndex2(){
  //   $date = DB::table('weather_data')
  //           ->whereBetween($input, ['column1','column2'])
  //           ->distinct()
  //           ->pluck('date')
  //           ->toArray();
  //   return view("charts.pie.chart", compact('date'));
  // }
}
