<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
<link rel="stylesheet" type="text/css" href="/SSSP/resource/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/SSSP/resource/dataTables/media/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="/SSSP/resource/common.css">
<script type="text/javascript" src="/SSSP/resource/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/SSSP/resource/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/SSSP/resource/dataTables/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="/SSSP/resource/core/base.js"></script>
<script type="text/javascript" src="/SSSP/user/js/list.js"></script>
</head>
<body>
	<div class="panel panel-default" >
    	<div class="panel-heading">用户管理</div>
	    <div class="panel-body" style="overflow: auto;">
			<div id="buttonArea">
				<button type="button" class="btn btn-primary" onclick="showPage('新增','user/edit.jsp')">新增</button>
			</div>
			<br/>
			<table cellpadding="0" cellspacing="0" border="0" class="display" id="userList">
				<thead>
					<tr>
						<th width="40px;">编号</th>
						<th width="100px;">姓名</th>
						<th width="40px;">性别</th>
						<th width="40px;">年龄</th>
						<th width="100px;">生日</th>
						<th width="50px;">部门</th>
						<th width="100px;">邮箱</th>
						<th width="100px;">联系电话</th>
						<th width="100px;">操作</th>
					</tr>
				</thead>
			</table>
	    </div>
	</div>
</body>
</html>