$(document).on('turbolinks:load', function(){

	$('.menu').click(function(e) {
	  e.stopPropagation();
	  $('#main_nav').toggleClass('active');
	});

});
