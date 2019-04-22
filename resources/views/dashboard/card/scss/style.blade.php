<style media="screen">
@import url(http://fonts.googleapis.com/css?family=Roboto:400,500,700);
@import url(http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic);

// variables
$card-width:  350px;
$card-height: 500px;
$h-color:     #9CC9E3;
$yellow:      #D0BB57;
$txt-color:   #DCE3E7;

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body{
  background: #323c41;
}

.blog-card{
  width: $card-width;
  height: $card-height;
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -250px 0 0 -175px;
  overflow: hidden;
  border-radius: 10px;
  box-shadow: 3px 3px 20px rgba(0, 0, 0, .5);
  text-align: center;

  &.spring-fever{
    background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1765/bg-blog-card.jpg) no-repeat;
  }

  .color-overlay{
    /* Rectangle 11: */
    background: rgba(84,104,110,0.4);
    width: $card-width;
    height: $card-height;
    position: absolute;
    z-index: 10;
    top: 0;
    left: 0;
    transition: background .3s cubic-bezier(.33,.66,.66,1);
  }
  .gradient-overlay{
    /* bg-gradient: */
    background-image: -webkit-linear-gradient(rgba(0,0,0,0.00) 0%, rgba(0,0,0,.6) 21%);
    background-image: -moz-linear-gradient(rgba(0,0,0,0.00) 0%, rgba(0,0,0,.6) 21%);
    background-image: -o-linear-gradient(rgba(0,0,0,0.00) 0%, rgba(0,0,0,.6) 21%);
    background-image: linear-gradient(rgba(0,0,0,0.00) 0%, rgba(0,0,0,.6) 21%);
    width: $card-width;
    height: $card-height;
    position: absolute;
    top: 350px;
    left: 0;
    z-index: 15;
  }

  &:hover{

    .card-info{
      opacity: 1;
      bottom: 120px;
    }
    .color-overlay{
      background: rgba(84,104,110,0.8);
    }
  }
}

.title-content{
  text-align: center;
  margin: 70px 0 0 0;
  position: absolute;
  z-index: 20;
  width: 100%;
  top: 0;
  left: 0;
}
h3{
  font-size: 20px;
  font-weight: 500;
  letter-spacing: 2px;
  color: $h-color;
  font-family: 'Roboto', sans-serif;
  margin-bottom: 0;
}
hr{
  width: 50px;
  height: 3px;
  margin: 20px auto;
  border: 0;
  background: $yellow;
}
.intro{
  width: 170px;
  margin: 0 auto;
  color: $txt-color;
  font-family: 'Droid Serif', serif;
  font-size: 13px;
  font-style: italic;
  line-height: 18px;
}
.card-info{
  width: 100%;
  position: absolute;
  bottom: 100px;
  left: 0;
  margin: 0 auto;
  padding: 0 50px;
  color: $txt-color;
  font-family: 'Droid Serif', serif;
  font-style: 16px;
  line-height: 24px;
  z-index: 20;
  opacity: 0;
  transition: bottom .3s, opacity .3s cubic-bezier(.33,.66,.66,1);
}

.utility-info{
  position: absolute;
  bottom: 0px;
  left: 0;
  z-index: 20;
}
.utility-list{
  list-style-type: none;
  margin: 0 0 30px 20px;
  padding: 0;
  width: 100%;

  li{
    margin: 0 15px 0 0;
    padding: 0 0 0 22px;
    display: inline-block;
    color: $txt-color;
    font-family: 'Roboto', sans-serif;

    &.comments{
      background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1765/icon-chat.svg) no-repeat 0 .1em;
    }
    &.date{
      background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1765/icon-calendar.svg) no-repeat 0 .1em;
    }
  }
}
</style>
