
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Tiled Menu Slider Demo - Jssor Slider, Slideshow with Javascript Source Code</title>
    <style>
    th, td {
    padding: 5px;
    text-align: left;
    font: 8px;	
}
    
        h4{ 
   background: grey;
      color: white;
      padding: 0px 0;
      position: relative;
      top: 0;
     
    }
    
        .appicon01
        {
            background: url(../img/appicon/opts1.png);
        }
        .appicon02
        {
            background: url(../img/appicon/opts2.gif);
        }
        .appicon03
        {
            background: url(../img/appicon/03.png);
        }
        .appicon01, .appicon02, .appicon03
        {
        	display: block;
            position: absolute;
            width: 180px;
            height: 180px;
            left:0px;
        }
        
        
        
        .appicon01:hover, .appicon02:hover, .appicon03:hover
        {
            text-decoration: none;
        }
        .appiconcb
        {
            position: absolute;
            left: 50px;
            bottom: 10px;
            width: 160px;
            height: 25px;
            
        }
        .appiconc
        {
            position: absolute;
            left: 50px;
            bottom: 10px;
        	text-align: center;
            width: 160px;
            height: 25px;
            line-height:25px;
            font-family: Verdana, Arial;
        	color: #fff;
        	font-size:14px;
        	text-decoration:none;
        }
        .appicon01:hover .appiconcb, .appicon02:hover .appiconcb, .appicon03:hover .appiconcb
        {
            background-color: #fff;
            filter: alpha(opacity=30);
            opacity: .3;
        }
        .appicon01:hover .appiconc, .appicon02:hover .appiconc, .appicon03:hover .appiconc
        {
        	color: #000;
        }
    </style>
</head>
<body style="font-family:Arial, Verdana;background-color:#fff; background-image: url(../img/back.jpg);">
    <!-- it works the same with all jquery version from 1.x to 2.x -->
    <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
    <!-- use jssor.slider.mini.js (40KB) or jssor.sliderc.mini.js (32KB, with caption, no slideshow) or jssor.sliders.mini.js (28KB, no caption, no slideshow) instead for release -->
    <!-- jssor.slider.mini.js = jssor.sliderc.mini.js = jssor.sliders.mini.js = (jssor.core.js + jssor.utils.js + jssor.slider.js) -->
    <script type="text/javascript" src="../js/jssor.core.js"></script>
    <script type="text/javascript" src="../js/jssor.utils.js"></script>
    <script type="text/javascript" src="../js/jssor.slider.js"></script>
    <script>

        jQuery(document).ready(function ($) {
            var options = {
                $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                                  //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $SpacingX: 25                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth) {
                    var sliderWidth = parentWidth;

                    //keep the slider width no more than 800
                    sliderWidth = Math.min(sliderWidth, 800);

                    jssor_slider1.$SetScaleWidth(sliderWidth);
                }
                else
                    window.setTimeout(ScaleSlider, 30);
            }

            ScaleSlider();

            if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
                $(window).bind('resize', ScaleSlider);
            }


            //if (navigator.userAgent.match(/(iPhone|iPod|iPad)/)) {
            //    $(window).bind("orientationchange", ScaleSlider);
            //}
            //responsive code end
        });
    </script>
    <!-- Jssor Slider Begin -->
    <!-- You can move inline styles to css file or css block. -->
    
     <div style="width: 1000px">	
		<h4 class="right-only"> <table style="width: 100%">
 <tr>
    <th><a href = "http://localhost:8080/edupro/jsp/home.jsp" style="color: white"> Home </a></th>
    <th> <a href = "#" style="color: white">Projects </a> </th>		
    <th> <a href = "http://localhost:8080/edupro/jsp/techcourses.jsp" style="color: white">Technical Courses </a> </th>
      <th> <a href = "#" style="color: white">Workshop</a> </th>
    <th><a href = "http://localhost:8080/edupro/services.html" style="color: white">Services </a> </th>		
    <th><a href = "http://localhost:8080/edupro/jsp/expert.jsp" style="color: white">Our Expert Team </a></th>
      <th>  <a href='#' onclick='javascript:window.open("http://localhost:8080/edupro/jsp/contactus.jsp", "_blank", "scrollbars=1,resizable=1,height=300,width=450");' title='Pop Up' style="color: white">Contact Us </a>	 </th>
  </tr>
  </table></h4>
		
		</div>
		
		<style>
                @media only screen and (max-width: 980px) {
                    .qr_code {
                       
                    }
                }
            </style>
            <img u="image" class="qr_code" src="../img/logo/edu.png" style="position: absolute; width: 300px;top: 0px;  height: 80px; bottom: 20px; right: 0px; opacity: 1; filter: alpha(opacity=100);" />
            <!-- Example to add fixed static QR code in slider END -->
    
    <div align="center" style="width: 100%">
    <div id="slider1_container" style="position: relative; top: 0px; left: 0px; width: 800px; height: 500px; overflow: hidden; " align="center">
        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                background-color: #000000; top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
            <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center;
                top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
        </div>
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 800px; height: 500px;
            overflow: hidden;">
            <div>
                <a class=appicon01 style="left: 0px; top: 0px; background-position:0px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Mechanical</div>
                </a>
                <a class=appicon01 style="left: 180px; top: 0px; background-position:-180px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Embedded Systems</div>
                </a>
                <a class=appicon01 style="left: 360px; top: 0px; background-position:-360px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Electrical</div>
                </a>
                <a class=appicon01 style="left: 540px; top: 0px; background-position:-540px 0px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Computer Science</div>
                </a>
                <a class=appicon01 style="left: 0px; top: 180px; background-position:0px -180px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>C++</div>
                </a>
                                
                <a class=appicon01 style="left: 180px; top: 180px; background-position:-180px -180px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>C</div>
                </a>
                <a class=appicon01 style="left: 360px; top: 180px; background-position:-360px -180px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>PCB</div>
                </a>
                <a class=appicon01 style="left: 540px; top: 180px; background-position:-540px -180px;" href="#">
                    <div class=appiconcb></div>
                    <div class=appiconc>Matlab</div>
                </a>
               
            </div>
                            
          
        </div>
        <!-- Bullet Navigator Skin Begin -->
        <style>
            /* jssor slider bullet navigator skin 18 css */
            /*
            .jssorb18 div           (normal)
            .jssorb18 div:hover     (normal mouseover)
            .jssorb18 .av           (active)
            .jssorb18 .av:hover     (active mouseover)
            .jssorb18 .dn           (mousedown)
            */
            .jssorb18 div, .jssorb18 div:hover, .jssorb18 .av
            {
                background: url(../img/b18.png) no-repeat;
                overflow:hidden;
                cursor: pointer;
            }
            .jssorb18 div { background-position: -3px -3px; }
            .jssorb18 div:hover, .jssorb18 .av:hover { background-position: -33px -3px; }
            .jssorb18 .av { background-position: -63px -3px; }
            .jssorb18 .dn, .jssorb18 .dn:hover { background-position: -93px -3px; }
            
            .jssorb18 .n
            {
                display: none;
                color: #000;
            }
            .jssorb18 div:hover .n, .jssorb18 .av .n, .jssorb18 .av:hover .n, .jssorb18 .dn .n { display: block; }
        </style>
        <!-- bullet navigator container -->
        <div u="navigator" class="jssorb18" style="position: absolute; bottom: 16px; right: 6px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype" style="position: absolute; width: 24px; height: 24px; text-align: center;
                line-height: 24px; font-size: 16px;">
                <Numbertemplate class=n></Numbertemplate>
            </div>
        </div>
        <!-- Bullet Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">javascript</a>
    </div>
    <!-- Jssor Slider End -->
    </div>
</body>
</html>