<%@ page language="java" import="java.util.*,java.sql.*" import="com.bean.*" pageEncoding="ISO-8859-1"%>
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
         // response.sendRedirect("test.jsp");
       }
       else
       {
            arryList=(ArrayList<Lists>)session.getAttribute("lists");
            arryList.add(list);
                 session.setAttribute("lists",arryList);
              //    response.sendRedirect("test.jsp");
       }
       
       
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


