<%@ page language="java" import="java.util.*,java.sql.*" import="com.bean.*" pageEncoding="UTF-8"%>
<% 
     String content=request.getParameter("text");
     String name=(String)session.getAttribute("name");
      
      
      notes note=new notes(content,0,name,null);
       ArrayList<notes> arryList=null;
       if((ArrayList<notes>)session.getAttribute("notes")==null)
       {
          arryList=new ArrayList<notes>();
          arryList.add(note);
          session.setAttribute("notes",arryList);
         
       }
       else
       {
            arryList=(ArrayList<notes>)session.getAttribute("notes");
            arryList.add(note);
                 session.setAttribute("notes",arryList);
         
       }
       java.sql.Date date=new java.sql.Date(new java.util.Date().getTime());
       //写入到数据库中
         Connection connection=null;
		connection=DBFactory.getConnection();
		
		
      	 String sql="insert into notes (date,content,likes,username,likename) values(?,?,?,?,?)";
       	 PreparedStatement pstmt =connection.prepareStatement(sql);
      	  pstmt.setDate(1, note.getDate());
      	  pstmt.setString(2,note.getContent());
      	  pstmt.setInt(3, note.getCount());
      	  pstmt.setString(4,note.getuserName());
      	  pstmt.setString(5, note.getlikeName());
      	  pstmt.executeUpdate();
          DBFactory.closeConnection(null, pstmt, null, connection);
       
       
        ArrayList<notes> temp=(ArrayList) session.getAttribute("notes");
      if(temp==null||temp.size()==0)
      out.print("shayemeiyou ");
      else
      {
  
      Iterator it=temp.iterator();
      for(int i=0;i<temp.size();i++)
      {
       //  out.print(temp.size());
         notes lis=(notes)it.next();
         out.print(lis.getContent());
      
      }
       }    
%>


