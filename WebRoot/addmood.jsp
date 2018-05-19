<%@ page language="java" import="java.util.*,java.sql.*" import="com.bean.*" pageEncoding="UTF-8"%>
<% 
   String content=request.getParameter("text");
  // out.print("content");
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
         
       }
       else
       {
            arryList=(ArrayList<Lists>)session.getAttribute("lists");
            arryList.add(list);
                 session.setAttribute("lists",arryList);
         
       }
       java.sql.Date date=new java.sql.Date(new java.util.Date().getTime());
       //写入到数据库中
         Connection connection=null;
		connection=DBFactory.getConnection();
      	 String sql="insert into lists (date,completeness,content,username) values(?,?,?,?)";
       	 PreparedStatement pstmt =connection.prepareStatement(sql);
      	  pstmt.setDate(1, date);
      	  pstmt.setBoolean(2, false);
      	  pstmt.setString(3,content);
      	  pstmt.setString(4,name);
      	  pstmt.executeUpdate();
          DBFactory.closeConnection(null, pstmt, null, connection);
       
       
        ArrayList<Lists> temp=(ArrayList) session.getAttribute("lists");
      if(temp==null||temp.size()==0)
      out.print("shayemeiyou ");
      else
      {
  
      Iterator it=temp.iterator();
      for(int i=0;i<temp.size();i++)
      {
         Lists lis=(Lists)it.next();
         out.print(lis.getContent());
      
      }
       }    
%>


