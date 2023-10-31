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