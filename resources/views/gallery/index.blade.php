<?php //dd($record_group[0]->rg_id); ?>
@extends('gallery.layout')
@section('content')
<!-- start content -->
<div id="fh5co-main">
	<div class="container">
		<div class="row">
		  <div class='col-md-9'>
		    <div class="panel panel-primary" style="font-size:30px; text-align: center;">
		      <div class="panel-heading"><?php echo $record_group[0]->name; ?> GALLERY SUMMERY - <?php echo date('Y-M-d');?>

		        <!-- <button type="button" style="height: 60px; width: 300px;" class="btn btn-warning" onclick="window.location='http://127.0.0.1:8000/admin/album'">Back to Album</button> -->

		      </div><!-- /.panel-heading -->
		    </div><!-- /.panel panel-primary -->
		  </div>
			<div class='col-md-3'>
				<button type="button" style="height: 50px; width: 250px;" class="btn btn-warning" onclick="location.href = backToalbum()">
					<span class="btn-label"><i class="glyphicon glyphicon-chevron-left"></i></span>Back to Album</button>
			</div>
		</div>

		<div class="row">
	        <div id="fh5co-board" data-columns>
	        	@foreach($gallery as $q)
	        	<div class="item">
	        		<div class="animate-box">
		        		<a href="{{asset('/')}}{{$q->image}}" class="image-popup fh5co-board-img" title="{{$q->description}}">
		        			<img src="{{asset('/')}}{{$q->image}}" alt="">
		        		</a>
	        		</div>
	        		<div class="fh5co-desc">{{$q->description}}</div>
	        	</div>
	        	@endforeach
	        </div>
        </div>
    </div>
</div>
<!-- end content -->

<script type="text/javascript">

	function backToalbum() {
    var link1 =  "http://127.0.0.1:8000/admin/album?parent_table=record_group&parent_columns=name&parent_columns_alias=&parent_id="+'{{$record_group[0]->rg_id}}';
    var link2 = "&return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Frecord_group&foreign_key=rg_id&label=Album";
    return link1+link2;
  }
</script>
@endsection
