<%@ page language="java" import="java.util.*" import="com.bean.DBFactory" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Sign in</title>
    
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
       int tag=0;
    	String userName=request.getParameter("form");
    	String password=request.getParameter("password");
              Object a=request.getAttribute("form-first-name");
              
    	Connection con=DBFactory.getConnection();
    	
    	String sql="select * from users";
    	Statement statement=con.createStatement();
	    ResultSet rs=statement.executeQuery(sql);
	 %> 
	 <%
	  String comName=null;
	  String compassword=null; 
	    while(rs.next()){ 
	    comName =rs.getString("name");
 	    compassword=rs.getString("password"); 
 	    if(userName.equals(comName)&&password.equals(compassword)) 
 	    {tag=1; 
	      break; 
      } 
	    } 
	    if(tag==1) 
	    {  
	   
	     session.setAttribute("name",userName);
	     session.removeAttribute("lists");
	     out.print("log successful"+"<br>"); 
	    out.print((String)session.getAttribute("name"));
	      %>
	      <jsp:forward page="MyHtml.html"></jsp:forward>
<%  
	    
	  
 	    }
   else
	    {
	     out.print("log fail"+"<br>");
	     %>
	      <jsp:forward page="SignUp.html"></jsp:forward>
<% 
 } 
    	DBFactory.closeConnection(rs, null, statement, con);
    	
    	%>
  </body>
</html>
