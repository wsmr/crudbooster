<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Blog Card with Hover State</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


      <link rel="stylesheet" href="css/style.css">


</head>

@include("dashboard.card.css.style")
@include("dashboard.card.scss.style")

<body>
  <div class="blog-card spring-fever">
  <div class="title-content">
    <h3>SPRING FEVER</h3>
    <hr />
    <div class="intro">Yllamco laboris nisi ut aliquip ex ea commodo.</div>
  </div><!-- /.title-content -->
  <div class="card-info">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.
  </div><!-- /.card-info -->
  <div class="utility-info">
    <ul class="utility-list">
      <li class="comments">12</li>
      <li class="date">03.12.2015</li>
    </ul>
  </div><!-- /.utility-info -->
  <!-- overlays -->
  <div class="gradient-overlay"></div>
  <div class="color-overlay"></div>
</div><!-- /.blog-card -->

    <script src="js/index.js"></script>

</body>
</html>
