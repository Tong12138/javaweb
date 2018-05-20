<%@ page language="java" import="java.util.*,java.sql.*,com.bean.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String content=request.getParameter("Id");
//String content=" Do my homework";
  Connection connection=null;
		connection=DBFactory.getConnection();
      	 String sql="UPDATE lists SET completeness=true WHERE content=\""+content+"\"";
      	// String sql="UPDATE lists SET completeness=true WHERE content=\" D//o my homework\"";
       	 PreparedStatement pstmt =connection.prepareStatement(sql);
       	 	  pstmt.executeUpdate();
         DBFactory.closeConnection(null, pstmt, null, connection);

//         out.print(content);

%>
<a href="javascript:history.back(-1)">添加成功</a>