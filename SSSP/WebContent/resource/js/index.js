var width = $(this).width();
var height  = $(this).height();
$(function(){
	init();
});
var navtab = null;
function init(){
	$("#layoutLeft").height(height-60);
	$("#layoutCenter").width(width-230);
}

function showPage(title,url){
	$("#page").load(url);
}