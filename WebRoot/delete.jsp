<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete.jsp' starting page</title>
    
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
    <form action="delete" method="post">
    	<input type="text" name="name" placeholder="请输入要删除的用户名"/>
    	<button id="del">铲除</button>
    </form>
    <script type="text/javascript">
    	var del = document.getElementById("del");
    	del.onclick = function(){
    		alert("请稍等，正在铲除...");
    		del.form.submit();
    		alert("铲除成功");
    	}
    </script>
  </body>
</html>
