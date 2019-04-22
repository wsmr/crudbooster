<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

?>
@extends('crudbooster::admin_template')
@section('content')

  <script src=https://cdnjs.cloudflare.com/ajax/libs/echarts/4.0.2/echarts-en.min.js charset=utf-8></script>

@foreach($date as $date)
  <div>

    <?php
      $data4 = DB::table('raindata')->where('date', $date)->pluck('color','hour')->toArray();
    ?>
    <div class="col-md-2">

      <div id="{!!$date!!}" style="width: 500px;height:200px;"></div>

<script type="text/javascript">
  var myChart = echarts.init(document.getElementById('{!!$date!!}'));
  var option = {
      title : {
        text: 'Rain - {!!$date!!}',
        subtext: 'daily by 1hour period',
        x:'center'
      },

      series : [
        {
          name: 'raindata',
          type: 'pie',
          radius : '55%',
          center: ['50%', '60%'],

          data:[
            @foreach($data4 as $key => $value)
              {
                value:1,
                name:'{!!$key!!}',
                itemStyle: {
                  color: '{!!$value!!}',
                  borderColor: 'black'
                }
              },
            @endforeach
          ],

            itemStyle: {
              emphasis: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
              }
            }
          }
        ]
      };
    myChart.setOption(option);
</script>
    </div>
  </div>


@endforeach
@endsection
