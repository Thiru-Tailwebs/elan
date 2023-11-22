// scrolling animation

document.addEventListener('DOMContentLoaded', function () {
 

  AOS.init({
    duration: 1000, // Animation duration in milliseconds
    delay: 1000,   // Delay before the animation starts
    easing: 'ease', // Easing function
    once: true,    // Whether to only trigger the animation once
    offset: 50
  });
});

var zoomFactor = 1.2;

var set_zoom = function () {
  var zoom_value = 1;
  var windowWidth = window.innerWidth;

  // Define your zoom logic here based on screen size
  if (windowWidth > 2000) {
    zoom_value = windowWidth / 2000;
  } else {
    zoom_value = 1; // Default zoom for smaller screens
  }

  // Apply the zoom to elements with the "zoom" class
  $(".zoom").css("zoom", zoom_value * zoomFactor);
}

// Call set_zoom on page load
$(document).ready(function () {
  set_zoom();
});

// Call set_zoom when the window size changes
$(window).on("resize", function () {
  set_zoom();
});