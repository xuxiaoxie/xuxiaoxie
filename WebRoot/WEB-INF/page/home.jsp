<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="${ctx}/css/easyUI/default/easyui.css">
<script src="${ctx}/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx}/js/jquery.easyui.min.js" type="text/javascript"></script>
</head>
<!-- 设置了class就可在进入页面加载layout -->
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">north region</div>
	<div data-options="region:'west',split:true,title:'West'" style="width:150px;padding:10px;">
	      <div class="easyui-accordion" fit="true" border="false" title="菜单栏">
			<div title="用户权限管理" selected="true">
			<ul>
				<li><a href="#">用户管理</a></li>
				<li><a href="#">权限管理</a></li>
			</ul>
			</div>
			<div title="Demo" selected="true">
			<ul>
				<li><a href="#" onclick="addTab(this)" url="${ctx}/demo/ckEditor">ckEditor</a></li>
			</ul>
			</div>
	     </div>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	<div data-options="region:'center',title:'Main Title'">
	 <div class="easyui-tabs" id="centerTab" fit="true" border="false">
			<div title="欢迎页" style="padding:20px;overflow:hidden;"> 
				<div style="margin-top:20px;">
					<h3>你好，欢迎来到权限管理系统</h3>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function addTab(obj){
		$('#centerTab').tabs('add',{
			title: $(obj).text(),         
			closable:true,
			cache : false,
			//注：使用iframe即可防止同一个页面出现js和css冲突的问题
			content : '<iframe id="'+$(obj).text()+'"src="'+$(obj).attr("url")+'" width="100%" height="100%" frameborder="0" scrolling="auto" ></iframe>'
		});
	}
	</script>
</body>
</html>