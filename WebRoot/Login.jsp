<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
  </head>
  
  <body>
    <form action="login" method="post" id="loginForm">
    	用户名 <input type="text" name="name" id="username"/><br/><br/>
    	密码 <input type="password" name="password" id="password"/><br/><br/>
    	<input type=button value="登录" id="login"/><br/><br/>
    	<span id="errMsgSpan" style="color:red"></span>
    </form>
    <script type="text/javascript">
    	
    		
    	login.onclick = function(){
    			$('#loginForm').submit();
    	}
    	
    	$('#loginForm').form({
			url:"login",
			onSubmit: function(){
				var username = document.getElementById("username");
		    	var password = document.getElementById("password");
		    	if(username.value == null ||username.value == ""){
		    			alert("请输入用户名,再登录");
		    			return false;
		    	}else if(password.value == null|| password.value ==""){
		    			alert("请输入密码");
		    			return false;
		    	}  
			},    
		    success:function(data){        
			   var ajaxObj = eval("("+data+")");
			   if(ajaxObj.loginSucc){
				   window.location.href="index.jsp";
			   } else {
				   document.getElementById("errMsgSpan").innerText = "用户名或密码错误!";
				   
			   }
	        }
		  });
    	 
    </script>
    <a href="insertUser.jsp">注册新用户</a><br><br>
    <a href="updateUser.jsp">修改用户名密码</a><br><br>
    <a href="deleteUser.jsp">注销用户</a><br><br>
  </body>
</html>
