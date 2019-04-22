<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Blog Card with Hover State</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


      <link rel="stylesheet" href="css/style.css">


</head>

@include("dashboard.card.css.style")


<body>
  <div class="my-2 mx-auto p-relative bg-white shadow-1 blue-hover" style="width: 360px; overflow: hidden; border-radius: 1px;">
        <img src="https://images.pexels.com/photos/442559/pexels-photo-442559.jpeg?auto=compress&cs=tinysrgb" alt="Man with backpack"
            class="d-block w-full">

  <div class="px-2 py-2">
    <p class="mb-0 small font-weight-medium text-uppercase mb-1 text-muted lts-2px">
      Travel
    </p>

    <h1 class="ff-serif font-weight-normal text-black card-heading mt-0 mb-1" style="line-height: 1.25;">
      Planning your final summer trip
    </h1>

    <p class="mb-1">
      Summer is coming to a close just around the corner. But it's not too late to squeeze in another weekend trip &hellip;
    </p>

  </div>

  <a href="#0" class="text-uppercase d-inline-block font-weight-medium lts-2px ml-2 mb-2 text-center styled-link">
    Read More
  </a>



</div>

<div class="w-full bg-white py-1 px-2 clearfix" style="border-top: 1px solid rgba(0,0,0,0.12);">
        <span class="float-left">
            Inspiration
            <a href="https://dribbble.com/shots/3786084-Article-Card-Hover-Interaction" class="styled-link">dribbble shot.</a>
        </span>
        <span class="float-right">
            Coded by <a href="https://kalyanlahkar.github.io" class="styled-link">Kalyan Lahkar</a>
        </span>
    </div>

    <script src="js/index.js"></script>

</body>
</html>
