$(function(){	
	getUsers();
});
function getUsers(){
	var users = null;
	$.post("users", {}, function(data){
		for(var i=0; i<data.length; i++){
			$("#userList").append("<tr>" +
					"<td>"+data[i].id+"</td>" +
					"<td>"+data[i].lastName+"</td>" +
					"<td>"+data[i].sex+"</td>" +
					"<td>"+data[i].age+"</td>" +
					"<td>"+data[i].birth+"</td>" +
					"<td>"+data[i].role.roleName+"</td>" +
					"<td>"+data[i].email+"</td>" +
					"<td>"+data[i].telephone+"</td>" +
					"<td>" +
					"<button type='button' class='btn btn-info' onclick='showPage(\"修改\",\"user/edit.jsp?id="+data[i].id+"\")'>修改</button>&nbsp;&nbsp;" +
					"<button type='button' class='btn btn-danger'>删除</button>" +
					"</td>" +
					"</tr>");
		}
		$("#userList").DataTable({
			"language": {
                "lengthMenu": "每页 _MENU_ 条记录",
                "zeroRecords": "没有找到记录",
                "info": "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )",
                "infoEmpty": "无记录",
                "infoFiltered": "(从 _MAX_ 条记录过滤)",
                "sSearch":"搜索:",
                "sEmptyTable":"表中数据为空",
            	"sLoadingRecords":"载入中...",
                "oPaginate":{
                	"sFirst":"首页",
                	"sPrevious":"上页",
                	"sNext":"下页",
                	"sLast":"末页"
                },
                "oAria":{
                	"sSortAscending":":以升序排列此列",
                	"sSortDescending":":以降序排列此列"
                }
            }
		});
	});
}