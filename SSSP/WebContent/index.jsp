<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resource/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="resource/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resource/js/index.js"></script>
<link rel="stylesheet" href="resource/menu/css/menu.css" media="screen" type="text/css" />
<link rel="stylesheet" type="text/css" href="resource/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="/SSSP/resource/angular/angular.js"></script>
<style type="text/css">
	#top{width: 100%;height: 60px;background:url("resource/images/top_bg.jpg") 0px 0px repeat; }
	#logo{font-size: 36px;line-height: 60px;margin-left: 10px;font-weight: bold;color: white;float: left;font-family:"Open Sans","Tahoma","Hiragino Sans GB","Microsoft YaHei"}
	#loginInfo{float: right;margin-right: 10px;height: 60px;}
	#userSpan{font-size: 16px;line-height: 60px;color: white;margin-left: 10px;font-family:"Open Sans","Tahoma","Hiragino Sans GB","Microsoft YaHei"}
	#layoutLeft{width: 230px;float: left;background-color: #507ab1;overflow-x: hidden;overflow-y: auto;}
	#layoutCenter{float: left;}
	.tab_home_page{height: 30px;width: 60px;background-color: rgb(255, 255, 255);}
	#page{overflow: auto;border: 0px solid black;}
</style>
</head>
<body>
	<div id="top">
		<span id="logo">Demo</span>
		<div id="loginInfo">
			<span id="userSpan">用户名：demo</span>
			<span id="userSpan">注销</span>
		</div>
	</div>
	<div id="content">
		<!-- 菜单 -->
		<div id="layoutLeft">
 			<ul id="accordion" class="accordion">
				<li>
					<div class="link"><i class="fa fa-paint-brush"></i>人员管理<i class="fa fa-chevron-down"></i></div>
					<ul class="submenu">
						<li><a href="javascript:void(0)" onclick="showPage('用户管理','user/list.jsp');">用户管理</a></li>
						<li><a href="javascript:void(0)" onclick="showPage('角色管理','role/roleList.jsp');">角色管理</a></li>
						<li><a href="javascript:void(0)">CSS</a></li>
						<li><a href="javascript:void(0)">Maquetacion web</a></li>
					</ul>
				</li>
				<li>
					<div class="link"><i class="fa fa-mobile"></i>Diseño responsive<i class="fa fa-chevron-down"></i></div>
					<ul class="submenu">
						<li><a href="javascript:void(0)">Tablets</a></li>
						<li><a href="javascript:void(0)">Dispositivos mobiles</a></li>
						<li><a href="javascript:void(0)">Medios de escritorio</a></li>
						<li><a href="javascript:void(0)">Otros dispositivos</a></li>
					</ul>
				</li>
				<li>
					<div class="link"><i class="fa fa-globe"></i>Posicionamiento web<i class="fa fa-chevron-down"></i></div>
					<ul class="submenu">
						<li><a href="javascript:void(0)">Google</a></li>
						<li><a href="javascript:void(0)">Bing</a></li>
						<li><a href="javascript:void(0)">Yahoo</a></li>
						<li><a href="javascript:void(0)">Otros buscadores</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- 页面切换 -->
		<div id="layoutCenter">
			<!-- <ol class="breadcrumb">
			  <li><a href="#">人员管理</a></li>
			  <li><a href="#">用户管理</a></li>
			</ol> -->
<!-- 				<iframe id="content" name="content" src="" width="100%" allowtransparency="true" scrolling="no" frameborder="0" style="background: none;"></iframe> -->
			<div id="page">
			</div>
		</div>
	</div>
	<script src="resource/menu/js/menu.js"></script>
</body>
</html>