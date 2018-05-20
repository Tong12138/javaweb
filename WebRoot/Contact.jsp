<%@ page language="java" import="java.util.*, java.sql.*, com.bean.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Contact.jsp' starting page</title>
    
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
        String fullname=request.getParameter("name");
         String phone=request.getParameter("phone");
           String email=request.getParameter("email");
             String message=request.getParameter("message");
             
           Connection connection=null;
		connection=DBFactory.getConnection();
      	 String sql="insert into contact (name,phone,email,message) values(?,?,?,?)";
       	 PreparedStatement pstmt =connection.prepareStatement(sql);
      	      	  pstmt.setString(1,fullname);
      	      	        	  pstmt.setString(2,phone);
      	  pstmt.setString(3,email);
      	  pstmt.setString(4,message);
      	  pstmt.executeUpdate();
          DBFactory.closeConnection(null, pstmt, null, connection);
       
       
    %>
    <jsp:forward page="MyHtml.html"></jsp:forward>
  </body>
</html>
