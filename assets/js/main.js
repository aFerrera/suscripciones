$(document).ready(function(){

  // Activate the side menu
$(".button-collapse").sideNav();

$('#login').hide();
$('#login').slideDown(700);

$('#myFormCard').card({
    // a selector or DOM element for the container
    // where you want the card to appear
    container: '.creditCard', // *required*

    // all of the other options from above
});

$('.edit-icon').hide();
});
