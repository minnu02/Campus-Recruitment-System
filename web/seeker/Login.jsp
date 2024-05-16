<%-- 
    Document   : Login
    Created on : Apr 28, 2015, 1:55:41 PM
    Author     : cyber
--%>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>PlaceMent</title>

    <!-- Bootstrap -->
    <link href="../MyResume/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../MyResume/css/font-awesome.css">
	<link rel="stylesheet" href="../MyResume/css/animate.css">
        <link href="../MyResume/css/style.css" rel="stylesheet">
	
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
    <!-- =======================================================
        Theme Name: MyResume
        Theme URL: https://bootstrapmade.com/free-html-bootstrap-template-my-resume/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
  </head>
  <body>
	<div class="wrapper" id="wrapper">
		<header>
			<div class="banner row" id="banner">		
				<div class="parallax text-center" style="background-image: url(../MyResume/img/1.jpg);">
					<div class="parallax-pattern-overlay">
						<div class="container text-center" style="height:600px;padding-top:170px;">
							<a href="#"><img id="site-title" class=" wow fadeInDown" wow-data-delay="0.0s" wow-data-duration="0.9s" src="../MyResume/img/2.png" alt=""/></a>
                                                        <h2 class="intro"><a href="../MyResume/index.html">My Resume</a></h2>
						</div>
					</div>
				</div>
			</div>	
			<div class="menu">
				<div class="navbar-wrapper">
					<div class="container">
						<div class="navwrapper">
							<div class="navbar navbar-inverse navbar-static-top">
								<div class="container">
									<div class="navArea">
										<div class="navbar-collapse collapse">
											<ul class="nav navbar-nav">
											<%--	<li class="menuItem active"><a href="#wrapper">Home</a></li>
												<li class="menuItem"><a href="#aboutus">About Us</a></li>
												<li class="menuItem"><a href="#specialties">Skills</a></li>
												<li class="menuItem"><a href="#gallery">Portfolio</a></li>
												<li class="menuItem"><a href="#feedback">Education</a></li>
												<li class="menuItem"><a href="#contact">Contact</a></li>--%>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>	
		</header>
	
		<!--about us-->
	<section class="aboutus" id="aboutus">
		<div class="container">
			<div class="heading text-center">				
				<h2>Login</h2>

                                <form action="login_action.jsp" class="contactForm">
                                    <table border="0" class="table">
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="a1" value=""  class="form-control" required="1" autofocus="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="a2" value=""  class="form-control" required="1"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" class="contact submit"/></td>
                        <td><input type="reset" value="Cancel"  class="contact submit"/></td>
                        <td><a href="Registration.jsp"><font size="3">New user</font></a></td>
                        <td></td>
                    </tr>
                 
                </tbody>
            </table>
                </form>
        
</div>
		  </div>
		</div>
	</section>
  
	<!--footer-->
	<section class="footer" id="footer">
		<p class="text-center">
			<a href="#wrapper" class="gototop"><i class="fa fa-angle-double-up fa-2x"></i></a>
		</p>
		<div class="container">
			<ul>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
				<li><a href="#"><i class="fa fa-flickr"></i></a></li>
			</ul>
			<p>&copy; MyResume Theme. All Rights Reserved.</p>
            <div class="credits">
                <!-- 
                    All the links in the footer should remain intact. 
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=MyResume
                -->
                <a href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
		</div>
	</section>
		
	</div>
        <script src="../MyResume/js/jquery.js"></script>
	<script src="../MyResume/js/modernizr.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../MyResume/js/bootstrap.min.js"></script>
	<script src="../MyResume/js/menustick.js"></script>
	<script src="../MyResume/js/parallax.js"></script>
	<script src="../MyResume/js/easing.js"></script>
	<script src="../MyResume/js/wow.js"></script>
	<script src="../MyResume/js/smoothscroll.js"></script>
	<script src="../MyResume/js/masonry.js"></script>
	<script src="../MyResume/js/imgloaded.js"></script>
	<script src="../MyResume/js/classie.js"></script>
	<script src="../MyResume/js/colorfinder.js"></script>
	<script src="../MyResume/js/gridscroll.js"></script>
	<script src="../MyResume/js/contact.js"></script>
	<script src="../MyResume/js/common.js"></script>
    <script src="https://maps.google.com/maps/api/js?sensor=true"></script>
	<script>wow = new WOW({}).init();</script>	
	<script type="text/javascript">
jQuery(function($) {
$(document).ready( function() {
  //enabling stickUp on the '.navbar-wrapper' class
	$('.navbar-wrapper').stickUp({
		parts: {
		  0: 'banner',
		  1: 'aboutus',
		  2: 'specialties',
		  3: 'gallery',
		  4: 'feedback',
		  5: 'contact'
		},
		itemClass: 'menuItem',
		itemHover: 'active',
		topMargin: 'auto'
		});
	});
    
    //Google Map
    var get_latitude = $('#google-map').data('latitude');
    var get_longitude = $('#google-map').data('longitude');

    function initialize_google_map() {
        var myLatlng = new google.maps.LatLng(get_latitude, get_longitude);
        var mapOptions = {
            zoom: 14,
            scrollwheel: false,
            center: myLatlng
        };
        var map = new google.maps.Map(document.getElementById('google-map'), mapOptions);
        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map
        });
    }
    google.maps.event.addDomListener(window, 'load', initialize_google_map);
});
</script>
<script src="../MyResume/contactform/contactform.js"></script>


</body>
</html>