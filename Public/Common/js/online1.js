var $j = jQuery.noConflict();
$j(document).ready(function(){
	$j(window).scroll(function(){});
	$j('#cleft_box').mouseenter(function(){$j(this).animate({'width':'125px'});});
	$j('#cleft_box').mouseleave(function(){$j(this).css({'width':'25px'});});
	
})