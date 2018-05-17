<%@ page language="java" import="java.util.*,java.sql.*" import="com.bean.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addlist.jsp' starting page</title>
    
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
       String content=request.getParameter("textyyt");
       String name=(String)session.getAttribute("name");
       //Connection con=null;
      //con=DBFactory.getConnection();
      //Statement 
         Lists list=new Lists(false,content,name);
       ArrayList<Lists> arryList=null;
       if((ArrayList<Lists>)session.getAttribute("lists")==null)
       {
          arryList=new ArrayList<Lists>();
          arryList.add(list);
          session.setAttribute("lists",arryList);
          response.sendRedirect("test.jsp");
       }
       else
       {
            arryList=(ArrayList<Lists>)session.getAttribute("lists");
            arryList.add(list);
                 session.setAttribute("lists",arryList);
                  response.sendRedirect("test.jsp");
       }
     %>  
  </body>
</html>
