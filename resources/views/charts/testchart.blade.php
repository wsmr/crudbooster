<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <!-- C3 Charts scripts -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.6.12/c3.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.6.12/c3.min.js"></script>

    <!-- D3 Charts scripts -->
    <script src="https://d3js.org/d3.v5.js"></script>
  </head>
  <body>
    <div id="chart"></div>
  </body>
  <div class="row">
    <div class='col-md-5'>
      @include('box.partials.boxheader')
      <h3 class="box-title">--Date--</h3>
      @include('box.partials.boxtool')
      <div class="box-body" style="background-color:#b8b9ba">
        <div id="chart" style="width:350px; height:300px;"></div><!-- /.chart -->
      </div><!-- /.box-body -->
      @include('box.partials.boxfooter')
    </div><!-- /.col-md-4 -->
  </div>



  <script>
  var chart = c3.generate({
      data: {
        x : 'x',
          columns: [
            ['x',"A","B","C","D","E"],
            ['Count_Open',30, 200, 100, 400, 150, 250],
            ['Count_Inprogress',130, 100, 140, 200, 150, 50],
          ],
          type: 'spline'
      },
      axis: {
    x: {
      type: 'category',
      tick: {
              rotate: 75,
              multiline: false
            },
      height: 130
    }
  },
  });
  </script>

  
</html>
