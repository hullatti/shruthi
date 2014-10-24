
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Responsive Slider with Float Text - Jssor Slider, Slideshow</title>
</head>
<body style="font-family:Arial, Verdana;background-color:#fff;">
    <!-- Caption Style -->
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
        .captionOrange, .captionBlack
        {
            color: #fff;
            font-size: 20px;
            line-height: 30px;
            text-align: center;
            border-radius: 4px;
        }
        .captionOrange
        {
            background: #EB5100;
            background-color: rgba(235, 81, 0, 0.6);
        }
        .captionBlack
        {
        	font-size:16px;
            background: #000;
            background-color: rgba(0, 0, 0, 0.4);
        }
        a.captionOrange, A.captionOrange:active, A.captionOrange:visited
        {
        	color: #ffffff;
        	text-decoration: none;
        }
        a.captionOrange:hover
        {
            color: #eb5100;
            text-decoration: underline;
            background-color: #eeeeee;
            background-color: rgba(238, 238, 238, 0.7);
        }
        .bricon
        {
            background: url(../img/browser-icons.png);
        }
    </style>
    <!-- it works the same with all jquery version from 1.x to 2.x -->
    <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
    <!-- use jssor.slider.mini.js (40KB) or jssor.sliderc.mini.js (32KB, with caption, no slideshow) or jssor.sliders.mini.js (28KB, no caption, no slideshow) instead for release -->
    <!-- jssor.slider.mini.js = jssor.sliderc.mini.js = jssor.sliders.mini.js = (jssor.core.js + jssor.utils.js + jssor.slider.js) -->
    <script type="text/javascript" src="../js/jssor.core.js"></script>
    <script type="text/javascript" src="../js/jssor.utils.js"></script>
    <script type="text/javascript" src="../js/jssor.slider.js"></script>
    <script>
        //Reference http://www.jssor.com/development/tip-make-responsive-slider.html

        var _CaptionTransitions = [];
        _CaptionTransitions["CLIP|L"] = { $Duration: 600, $Clip: 1, $Easing: $JssorEasing$.$EaseInOutCubic };
        _CaptionTransitions["RTT|10"] = { $Duration: 600, $Zoom: 11, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8} };
        _CaptionTransitions["ZMF|10"] = { $Duration: 600, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 };
        _CaptionTransitions["FLTTR|R"] = { $Duration: 600, x: -0.2, y: -0.1, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $Opacity: 2, $Round: { $Top: 1.3} };
    </script> 
    <script>
        jQuery(document).ready(function ($) {
            //Reference http://www.jssor.com/development/tip-make-responsive-slider.html

            var _CaptionTransitions = [];
            _CaptionTransitions["CLIP|L"] = { $Duration: 600, $Clip: 1, $Easing: $JssorEasing$.$EaseInOutCubic };
            _CaptionTransitions["RTT|10"] = { $Duration: 600, $Zoom: 11, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8} };
            _CaptionTransitions["ZMF|10"] = { $Duration: 600, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 };
            _CaptionTransitions["FLTTR|R"] = { $Duration: 600, x: -0.2, y: -0.1, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $Opacity: 2, $Round: { $Top: 1.3} };

            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0),

                $CaptionSliderOptions: {                            //[Optional] Options which specifies how to animate caption
                    $Class: $JssorCaptionSlider$,                   //[Required] Class to create instance to animate caption
                    $CaptionTransitions: _CaptionTransitions,       //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                    $PlayInMode: 1,                                 //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                    $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {

                //reserve blank width for margin+padding: margin+padding-left (10) + margin+padding-right (10)
                var paddingWidth = 20;

                //minimum width should reserve for text
                var minReserveWidth = 150;

                var parentElement = jssor_slider1.$Elmt.parentNode;

                //evaluate parent container width
                var parentWidth = parentElement.clientWidth;

                if (parentWidth) {

                    //exclude blank width
                    var availableWidth = parentWidth - paddingWidth;

                    //calculate slider width as 70% of available width
                    var sliderWidth = availableWidth * 0.7;

                    //slider width is maximum 600
                    sliderWidth = Math.min(sliderWidth, 600);

                    //slider width is minimum 200
                    sliderWidth = Math.max(sliderWidth, 200);

                    //evaluate free width for text, if the width is less than minReserveWidth then fill parent container
                    if (availableWidth - sliderWidth < minReserveWidth) {

                        //set slider width to available width
                        sliderWidth = availableWidth;

                        //slider width is minimum 200
                        sliderWidth = Math.max(sliderWidth, 200);
                    }

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
    
    <div style="display: block; margin: 20px auto 0 auto; padding: 35px 5px 5px 10px; width: 96%; max-width:1000px; min-width: 240px; border: 1px solid #ccc; background-color: #fff; box-shadow: 2px 2px 10px 2px #dddddd; -webkit-box-shadow: 0px 0px 5px 0px #dddddd; font-size: .8em; line-height: 1.5em;">
    <!-- Jssor Slider Begin -->
    <!-- You can move inline styles to css file or css block. -->
        <div id="slider1_container" style="position: relative; margin: 0px 5px 5px 0px; float: left; top: 0px; left: 0px; width: 1300px;
            height: 400px; overflow: hidden;">
            <!-- Slides Container -->
            <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1300px; height: 400px;
                overflow: hidden;">
                <div><img u="image" src="../images/expert.jpg" style="width: 100%; height: 100%"/>
                    <div u="caption" t="CLIP|L" style="position:absolute;left:100px;top:80px;width:110px;height:40px;font-size:36px;color:#fff;line-height:40px;">Our</div>
                    <div u="caption" t="CLIP|L" style="position:absolute;left:230px;top:80px;width:120px;height:40px;font-size:36px;color:#fff;line-height:40px;">Expert</div>
                    <div u="caption" t="CLIP|L" style="position:absolute;left:380px;top:80px;width:130px;height:40px;font-size:36px;color:#fff;line-height:40px;">Team!</div>
                </div>
              
            </div>
        <a style="display: none" href="http://www.jssor.com">javascript</a>
            <!-- Trigger -->
        </div>
        <!-- Jssor Slider End -->
       
        <p style="margin-top:0px;">
Technology growing in many direction and many experts are participeting in this growth. In these experts we choose those  best experts for you who they have commitment to spread the skills or technology to the students And these students can make coming shining tomorrow.</p>
        <p style="margin-top:0px;">All of our experts are well qualified and thoroughly practical experienced in their particular discipline. They have undergone an intensive screening process followed by extensive training to equip them with the skills and tools necessary to foster a student's confidence in the subject or project.</p>
        <p style="margin-top:0px;">Each of our tutors is carefully screened and must meet our exceptionally high standards. We only accept applicants who have a true passion for helping students succeed. Every tutor must have an educational background, a degree is his or her field of instruction, and a full background check. Once accepted, there is extensive training to equip them with the skills and tools necessary to foster a student's confidence in each subject. </p>
        
    </div>
</body>
</html>