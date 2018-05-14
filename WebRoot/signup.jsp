<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'signup.jsp' starting page</title>
    
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
    	String userName=request.getParameter("form-first-name");
    	String password=request.getParameter("password");
    	
    	try{
    	String url="jdbc:mysql://localhost:3306/oneday";
    	String driver="com.mysql.jdbc.Driver";
    	Connection connection=null;
  
		Class.forName(driver);
		connection=DriverManager.getConnection(url,"root","123456");
	    Statement statement=null;
	    statement=connection.createStatement();
	    String sql="select * from users";
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
	    {%>
	     out.print("log successful"+"<br>");
	        <jsp:forward page="MyHtml.html"></jsp:forward>
	    <%
	  
	    }
	    else
	    {%>
	     out.print("log fail"+"<br>");
	      <jsp:forward page="SignUp.html"></jsp:forward>
<%
} connection.close();
}catch(Exception e){
e.printStackTrace();
}
	  %>
  </body>
</html>
