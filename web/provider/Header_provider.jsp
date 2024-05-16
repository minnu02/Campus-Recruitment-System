<%-- 
    Document   : Header_provider
    Created on : Feb 3, 2017, 8:56:59 AM
    Author     : Vishnu S
--%>


<!DOCTYPE html>
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
                                                        <h2 class="intro"><a href="../MyResume/index.html"><%=session.getAttribute("name")%></a></h2>
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
                                                                                            <li class="menuItem     "><a href="Home.jsp" style="color: blue;">Home Page</a></li>
                                                                                                <li class="menuItem"><a href="addvaccancies.jsp" style="color: blue;">Vacancy</a></li>
                                                                                                <li class="menuItem"><a href="Addnotification.jsp" style="color: blue;">Info</a></li>
                                                                                                <li class="menuItem"><a href="Viewseeker.jsp" style="color: blue;">Seeker</a></li>
                                                                                                <li class="menuItem"><a href="Question.jsp" style="color: blue;">Add Question</a></li>
                                                                                                <li class="menuItem"><a href="View Qusetions.jsp" style="color: blue;">View Question</a></li>
                                                                                                    <li class="menuItem"><a href="../index.jsp" style="color: blue;">Log Out</a></li>                                                                                                   
                                                                                                    
                                                                                                    
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
		<!--about us-->
	<section class="aboutus" id="aboutus">
		<div class="container">
			<div class="heading text-center">				
				