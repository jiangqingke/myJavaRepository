<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String id = request.getParameter("id");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户编辑</title>
<link rel="stylesheet" type="text/css" href="/SSSP/resource/common.css">
<style type="text/css">
	.mylable{line-height: 34px;}
</style>
<script type="text/javascript">
	var id = '<%=id %>';
</script>
</head>
<body>
 	<input type="hidden" id="id"/>
	<div  class="panel panel-default" >
    	<div class="panel-heading">用户编辑</div>
	    <div class="panel-body" style="overflow: auto;">
	    	<form class="form-inline">
		    	<div class="container-fluid">
		    		<div class="row">
		    			<div class="col-md-6">
						  <div class="form-group">
						    <div class="col-md-4"><label class="mylable" for="" >姓名：</label></div>
						    <div class="col-md-8"><input type="text" class="form-control" id="lastName" ></div>
						  </div>
						</div>
						<div class="col-md-6">
						  <div class="form-group">
						    <div class="col-md-4"><label class="mylable" for="">性别：</label></div>
						    <div class="col-md-8">
						    	<select class="form-control" style="width: 174px;" id="sex">
						    		<option>男</option>
						    		<option>女</option>
						    	</select>
						    </div>
						  </div>
					  	</div>	
		    		</div>
		    		<div class="row">
		    			<div class="col-md-6">
						  <div class="form-group">
						    <div class="col-md-4"><label class="mylable" for="" >年龄：</label></div>
						    <div class="col-md-8"><input type="text" class="form-control" id="age"></div>
						  </div>
						</div>
						<div class="col-md-6">
						  <div class="form-group">
						    <div class="col-md-4"><label class="mylable" for="">出生日期：</label></div>
						    <div class="col-md-8"><input type="text" class="form-control" id="birth" placeholder="格式：yyyy-MM-dd"></div>
						  </div>
					  	</div>	
		    		</div>
		    		<div class="row">
		    			<div class="col-md-6">
						  <div class="form-group">
						    <div class="col-md-4"><label class="mylable" for="" >部门：</label></div>
						    <div class="col-md-8">
						    	<select class="form-control" id="role" style="width: 189px;"></select>
						    </div>
						  </div>
						</div>
						<div class="col-md-6">
						  <div class="form-group">
						    <div class="col-md-4"><label class="mylable" for="">联系电话：</label></div>
						    <div class="col-md-8"><input type="text" class="form-control" id="telephone" placeholder=""></div>
						  </div>
					  	</div>	
		    		</div>
		    		<div class="row">
		    			<div class="col-md-6">
						  <div class="form-group">
						    <div class="col-md-4"><label class="mylable" for="" >邮箱：</label></div>
						    <div class="col-md-8"><input type="text" class="form-control" id="email" placeholder=""></div>
						  </div>
						</div>
		    		</div>
	    		</div>
			</form>
    		<div class="row">
    			<div class="center-block" style="width:120px;">
		    		<button type="button" class="btn btn-primary" onclick="save()">保存</button>&nbsp;
		    		<button type="button" class="btn btn-success">重置</button>
    			</div>
    		</div>
	    </div>
	</div>
	
	<script type="text/javascript" src="/SSSP/user/js/edit.js"></script>
	<script type="text/javascript" src="/SSSP/resource/js/json2.js"></script>
	<script type="text/javascript" src="/SSSP/resource/dialog/showDialog.js"></script>
</body>
</html>