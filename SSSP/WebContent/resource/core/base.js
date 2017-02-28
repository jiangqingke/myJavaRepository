function postJson(url, args, callback){
	$.post(url, args, callback);
}

function showPage(title,url){
	$("#page").load(url);
}