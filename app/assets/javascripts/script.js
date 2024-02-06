// scrolling animation

document.addEventListener('DOMContentLoaded', function () {
  // Check if the screen width is less than or equal to a certain threshold (e.g., 768 pixels for mobile)
  if (window.innerWidth > 768) {
    AOS.init({
      duration: 1000,
      delay: 700,
      easing: 'ease',
      once: true,
      offset: 50
    });
  } else {
    AOS.init({
      disable: true
    });
  }
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