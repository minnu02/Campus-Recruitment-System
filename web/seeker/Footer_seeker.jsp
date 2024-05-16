<%-- 
    Document   : Footer_seeker
    Created on : Feb 3, 2017, 10:28:10 AM
    Author     : Vishnu S
--%>

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