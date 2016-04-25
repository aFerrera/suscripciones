$(document).ready(function(){

  // Activate the side menu
$(".button-collapse").sideNav();

$('#login').hide();

$('#loginBtn').click(function(){
  $('#login').slideToggle(700);
});
});
