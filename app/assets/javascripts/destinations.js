// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function (){

    function initialize() {
      var myLatLng = new google.maps.LatLng(latitude, longitude);

      var mapOptions = {
      center: myLatLng,
      zoom: 15,
      scrollwheel: false,
      };

      var image = 'http://www.hqraleigh.com/public/hq-raleigh-theme/images/hq-logo-black.png';
      var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
      var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      icon: image,
      animation: google.maps.Animation.DROP,
      opacity: 0.5,
      });

      var contentString = '<h2>' + address + '</h2>' + '<p>' + description + '</p>'
      ;

      var infowindow = new google.maps.InfoWindow({
      content: contentString
      });

      google.maps.event.addListener(marker, 'click', function() {
      infowindow.open(map,marker);
      });

    }

    google.maps.event.addDomListener(window, 'load', initialize);
});
