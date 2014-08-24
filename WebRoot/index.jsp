<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="${ctx}/css/easyUI/icon.css">
<link rel="stylesheet" type="text/css" href="${ctx}/css/easyUI/default/easyui.css">
<script src="${ctx}/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx}/js/jquery.easyui.min.js" type="text/javascript"></script>
</head>
<body>
<div id="login" style="padding: 5px; width: 400px; height: 220px;">
<table onkeydown="if(event.keyCode==13){doLogin();}" id="loginTable">
	<tr>
		<td align="right"><b style="font: 12px">用户名：</b></td>
		<td><input type="text" class="easyui-validatebox" id="loginCode" style="width:200px;" maxlength="20" required="true"></input></td>
	</tr>
	<tr>
		<td align="right"><b style="font: 12px">密码：</b></td>
		<td><input type="password" class="easyui-validatebox" id="password" style="width:200px;" maxlength="20" required="true"></input></td>
	</tr>
	<tr>
		<td></td>
		<td id="login_msg" style="color: red;font: 12px">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<a href="#" class="easyui-linkbutton" icon="icon-ok" onclick="doLogin();">确定</a>
			<a href="#" class="easyui-linkbutton" icon="icon-redo" onclick="doReset();">重置</a>
		</td>
	</tr>
</table>
</div>
<script type="text/javascript">
$(function(){
	setDialog();
	//进入页面，焦点在用户名文本框上
	$("#loginCode").focus();
});

/**--------------操作弹出框------------------**/
//设置弹出框的属性
function setDialog(){
	$('#login').dialog({
		title : '用户登录',
		modal: true,         //模式窗口：窗口背景不可操作
		collapsible : true,  //可折叠，点击窗口右上角折叠图标将内容折叠起来
		resizable : true,    //可拖动边框大小
		closable : false     //不提供关闭窗口按钮
	});
}
/**
 * 执行reset操作
 */
function doReset(){
	$("#loginCode").val("");
	$("#password").val("");
	$("#login_msg").html("&nbsp;");
}

function doLogin() {
	var validateResult = true;
	//easyui 表单验证
	$('#loginTable input').each(function () {
		if ($(this).attr('required') || $(this).attr('validType')) {
			if (!$(this).validatebox('isValid')) {
				//如果验证不通过，则返回false
				validateResult = false;
				return;
		    }
		}
    });
	if(validateResult==false){
		//如果验证不通过，则不执行登录操作
		return;
	}
	$("#login_msg").html("登录中，请稍后...");
	$.getJSON("${ctx}/login",
	    {
			"userName" : $("#loginCode").val(),
			"passWord" : $("#password").val()
		},
	  function(data){
	      alert(data.code);
		 if (data.code == 1) {
				$("#login_msg").html("登录成功");
				window.location = "${ctx}/home";
			} else {//后台异常处理
				$("#login_msg").html(data.errMsg);
			}      
    });		
}
</script>
</body>
</html>