$(document).ready(function() {
	$.fn.faceBookAutoComplete = function(options) {
  	var element = $(this);
  	var defaults = {
    	cache: false,
    	json_cache: false,
    	maxshownitems: 10,
    	delay: 300
  	};

  	var opts = $.extend(defaults, options);
  	element.fcbkcomplete(opts);
	};
}