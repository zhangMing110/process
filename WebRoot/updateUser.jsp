<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改用户名密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="updateOneUser" method="post">
    	用户名 <input type="text" name="name"/><br/><br/>
    	密码 <input type="password" name="password"/><br/><br/>
    	<input type="button" value="确认修改" id="change"/><br/><br/>
    </form>
    <script type="text/javascript">
    	var update = document.getElementById("change");
    	update.onclick = function(){
    		alert("正在修改，请稍等...");
    		update.form.submit();
    	}
    </script>
    <a href="Login.jsp">返回</a>
  </body>
</html>
