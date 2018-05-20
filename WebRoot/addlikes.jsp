<%@ page language="java" import="java.util.*,java.sql.*,com.bean.*" pageEncoding="UTF-8"%>
<%
 String id=request.getParameter("id");
 %>
 <%=id %>
 sfns,mfns,dn 
 <% 
    String name=(String)session.getAttribute("name");
       java.sql.Date date=new java.sql.Date(new java.util.Date().getTime());
       //写入到数据库中
         Connection connection=null;
		connection=DBFactory.getConnection();
      	 String sql="insert into likes (idnotes,likename,date) values(?,?,?)";
       	 PreparedStatement pstmt =connection.prepareStatement(sql);
      	  pstmt.setString(1,id);
      	  pstmt.setString(2,name);
     	  pstmt.setDate(3, date);
      	  pstmt.executeUpdate();
          DBFactory.closeConnection(null, pstmt, null, connection);
       
%>

