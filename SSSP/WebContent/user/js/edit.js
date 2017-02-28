$(function(){
	getRoles();
});

function getRoles(){
	$.post("roles",{},function(data){
		for(var i=0; i<data.length; i+=1){
			$("#role").append("<option value='"+data[i].id+"'>"+data[i].roleName+"</option>");
		}
	});
	if(id != null && id != "null"){
		getUser();
	}
}

function getUser(){
	alert("getuser");
	$.post("user",{"id":id},function(data){
		setUserValue(data);
	});
}

function save(){
	var dataStr = getUserValue();
    $.ajax({
	    url : 'saveUser',
	    data : dataStr,
	    type : "POST",
	    async : false,
	    contentType : "application/json;charset=utf-8", //设置请求头信息
	    success : function(data) {
	        alert(data.lastName+"的信息保存成功.");
	    }
	});
}

var user = ["id","lastName","sex","age","birth","email","telephone","role"];
function setUserValue(data){
	for(var i=0; i<user.length; i+=1){
		if(user[i] == "role"){
			$("#role").val(data.role.id);
		}else{
			$("#"+user[i]).val(data[user[i]]);
		}
	}
}

function getUserValue(){
	var json = {};
	var role = {};
	for(var i=0; i<user.length; i+=1){
		if(user[i] == "role"){
			role.id = $("#role").val();
			role.roleName = $("#role").find("option:selected").text();
			json["role"] = role;
		}else{
			json[user[i]] = $("#"+user[i]).val();
		}
	}
	return JSON.stringify(json);
}