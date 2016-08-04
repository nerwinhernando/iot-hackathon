// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require interact
//= require Chart.bundle
//= require chartkick
//= require_tree .

$(function(){

	//reservation index
	function formatDate(date) {
	    var d = new Date(date),
	        month = '' + (d.getMonth() + 1),
	        day = '' + d.getDate(),
	        year = d.getFullYear();

	    if (month.length < 2) month = '0' + month;
	    if (day.length < 2) day = '0' + day;

	    return [year, month, day].join('-');
	}

	$(".res-pagination .page-link").click (function() {
		var btn = $(this).attr("aria-label");
		var date = new Date($("form #date").val());
		if(btn == "Next") {
			date.setDate(date.getDate() + 1);
		} else if (btn == "Previous") {
			date.setDate(date.getDate() - 1);
		}
		$("form #date").val(formatDate(date));
		$(this).siblings("form").submit();
	});

	//meeting room status
	

});
