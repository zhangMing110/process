<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
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
     <form action="update" method="post">
    	姓名 <input type="text" name="name"/><br/><br/>
    	年龄 <input type="text" name="age"/><br/><br/>
    	住址 <input type="text" name="addrs"/><br/><br/>
    	文凭 <input type="text" name="diploma"/><br/><br/>
    	 <input type="button" value="修改" id="change"/>
    </form>
    <script type="text/javascript">
    	var ch = document.getElementById("change");
    	ch.onclick = function(){
    		alert("正在修改，请稍等。。。");
    		ch.form.submit();
    		alert("修改成功");
    	}
    </script>
  </body>
</html>
