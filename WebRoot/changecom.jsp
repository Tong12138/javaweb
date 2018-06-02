<%@ page language="java" import="java.util.*,java.sql.*,com.bean.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String content=request.getParameter("Id");
String tag=request.getParameter("tag");
java.sql.Date date=new java.sql.Date(new java.util.Date().getTime());

//String content=" Do my homework";
  Connection connection=null;
		connection=DBFactory.getConnection();
		String sql =null;
		if(tag.equals("1"))
	
      	  sql="UPDATE lists SET completeness=true WHERE content=\""+content+"\" and date =\""+ date+"\"";
      	  else
      	    sql="UPDATE lists SET completeness=false WHERE content=\""+content+"\" and date =\""+ date+"\"";
      	// String sql="UPDATE lists SET completeness=true WHERE content=\" D//o my homework\"";
       	 PreparedStatement pstmt =connection.prepareStatement(sql);
       	 	  pstmt.executeUpdate();
         DBFactory.closeConnection(null, pstmt, null, connection);

//         out.print(content);

%>
<script>
window.document.location.href="MyHtml.jsp";
</script>
