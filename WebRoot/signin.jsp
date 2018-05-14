<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'signin.jsp' starting page</title>
    
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
    String url="jdbc:mysql://localhost:3306/oneday";
    String driver="com.mysql.jdbc.Driver";
    Connection connection=null;
  
	Class.forName(driver);
	connection=DriverManager.getConnection(url,"root","123456");
        
         
       	  String sql="insert into users values(?,?,?,?)";
       	  PreparedStatement pstmt =connection.prepareStatement(sql);
      	  pstmt.setString(1,userName);
      	  pstmt.setString(2,password);
      	  pstmt.setString(3,email);
      	  pstmt.setString(4,about);
      	  pstmt.executeUpdate();
      	  pstmt.close();
      	  connection.close();
   %> 
      <a herf="show.jsp"> display the data</a>
      <%
      out.print("add successfully"+"<br>");
      out.println("user:"+userName+"<br");
       %>

  </body>
</html>
