<%@ page language="java" import="java.util.*,java.sql.*,com.bean.*" pageEncoding="UTF-8"%>
<%
 //int id=Integer.parseInt(request.getParameter("Id"));
 %>

 <%
     int id=4; 
    String name=(String)session.getAttribute("name");
       java.sql.Date date=new java.sql.Date(new java.util.Date().getTime());
       //写入到数据库中
         Connection connection=null;
		connection=DBFactory.getConnection();
      	 String sql="insert into likes (idnotes,likename,date) values(?,?,?)";
       	 PreparedStatement pstmt =connection.prepareStatement(sql);
      	  pstmt.setInt(1,id);
      	  pstmt.setString(2,name);
     	  pstmt.setDate(3, date);
      	  pstmt.executeUpdate();
          DBFactory.closeConnection(null, pstmt, null, connection);
       
%>

