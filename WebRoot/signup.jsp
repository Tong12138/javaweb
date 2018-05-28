<%@ page language="java" import="java.util.*" import="java.sql.*" import="com.bean.DBFactory" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Sign up</title>
    
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
   <% 
    	String userName=request.getParameter("form-first-name");
    	String password=request.getParameter("password");
    	String email=request.getParameter("form-email");
    	String about=request.getParameter("form-about-yourself");
    %>
    
    <% 
    Connection connection=null;
	connection=DBFactory.getConnection();
    int tag=0;
      String comsql="select name from users";
       Statement statement=null;
	    statement=connection.createStatement();
	  ResultSet rs=statement.executeQuery(comsql);
	  String comName=null;
	    while(rs.next()){
	    comName =rs.getString("name");
	    if(userName.equals(comName))
	    {tag=1;
	      break;
	      }
	    }
	    if(tag==1)
	    {
	     connection.close();
	     
	
	     %>
	       	<script type="text/javascript" language="javascript">
		alert("用户名重复");
		window.document.location.href="SignUp.html";
	</script>	
	    <%
	  
	    }
	    else
	    {         
       	  String sql="insert into users values(?,?,?,?)";
       	  PreparedStatement pstmt =connection.prepareStatement(sql);
      	  pstmt.setString(1,userName);
      	  pstmt.setString(2,password);
      	  pstmt.setString(3,email);
      	  pstmt.setString(4,about);
      	  pstmt.executeUpdate();
          DBFactory.closeConnection(rs, pstmt, null, connection);
   %> 
      	<script type="text/javascript" language="javascript">
		alert("注册成功！请登录");
		window.document.location.href="SignUp.html";
	</script>	
   
       <%} %>

  </body>
</html>