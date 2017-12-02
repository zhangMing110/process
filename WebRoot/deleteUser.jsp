<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注销用户</title>
    
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
    <form action="deleteOneUser" method="post">
    	<input type="text" name="name" placeholder="请输入要注销的用户名"/><br/><br/>
    	<input type="button" value="注销" id="delete"/><br/><br/>
    </form>
    <script type="text/javascript">
    	var drop = document.getElementById("delete");
    	drop.onclick = function(){
    		alert("删除中，请稍后...");
    		drop.form.submit();
    	}
    </script>
    <a href="Login.jsp">返回</a>
  </body>
</html>
