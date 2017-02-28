<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门列表</title>
<link rel="stylesheet" type="text/css" href="resource/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="resource/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="resource/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">
	table{border-collapse: collapse;}
	th,td{border: 1px solid #dddddd;padding: 5px;}
</style>
</head>
<body>
	<c:if test="${empty requestScope.roles }">
		没有部门信息
	</c:if>
	<c:if test="${!empty requestScope.roles }">
		<table>
			<tr>
				<th>编号</th>
				<th>名称</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${requestScope.roles }" var="role">
				<tr>
					<td>${role.id}</td>
					<td>${role.roleName}</td>
					<td>
						<button type="button" class="btn btn-primary btn-sm">修改</button>
						<button type="button" class="btn btn-danger btn-sm">删除</button>
					</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>