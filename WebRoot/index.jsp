<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息查询</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	  function query2(){
		    window.location.href = "show.jsp";
	  }
	</script>
  </head>
  
  <body>
    <form action="SelectAll.do" method="post">
    	<input type="submit" value="查询"/>
    </form>
    <form action="SelectOther.do">
    	<!-- <input type="button" value="查询二"  onclick="query2();"/> -->
    	<input type="submit" value="查询二"  />
    </form>
    <form action="query.do">
    	<input type="submit" value="查询三"/>
    </form>
    <form action="One.do">
    	<input type="submit" value="查询四"/>
    </form>
    <a href="show.jsp"><button>跳转</button></a><br/><br/>
    <a href="insert.jsp"><button>添加用户</button></a><br/><br/>
    <a href="delete.jsp"><button>铲除用户</button></a><br/><br/>
    <a href="update.jsp"><button>修改用户</button></a><br/><br/>
  </body>
</html>
