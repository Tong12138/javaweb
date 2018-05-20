<%@ page language="java" import="java.util.*,java.sql.*" import="com.bean.*" pageEncoding="UTF-8"%>
<% 
   String content=request.getParameter("text");
 
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
      	  pstmt.setDate(1, list.getDate());
      	  pstmt.setBoolean(2, list.getCom());
      	  pstmt.setString(3,list.getContent());
      	  pstmt.setString(4,list.getuserName());
      	  pstmt.executeUpdate();
          DBFactory.closeConnection(null, pstmt, null, connection);
         out.print(content);
       
//         ArrayList<Lists> temp=(ArrayList) session.getAttribute("lists");
//       if(temp==null||temp.size()==0)
//       out.print("shayemeiyou ");
//       else
//       {
//     //  out.print(temp);
    
//        Iterator it=temp.iterator();
//        for(int i=0;i<temp.size();i++)
//        {
//           Lists lis=(Lists)it.next();
//           out.print(lis.getContent());
//           out.print("\n");
      
//        }
//        }    
%>


