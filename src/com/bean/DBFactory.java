package com.bean;

import java.sql.*;
public class DBFactory {
	 private static String url="jdbc:mysql://localhost:3306/oneday";
	   private static String driver="com.mysql.jdbc.Driver";
	   private static Connection conn=null;
	   public static Connection getConnection() throws ClassNotFoundException,
	   SQLException{
		   Class.forName(driver);
		   conn=DriverManager.getConnection(url,"root","123456");
		   return conn;
	   }
	   public static void closeConnection(ResultSet rst,PreparedStatement pst, Statement st,Connection conn) throws SQLException{
		   if(rst!=null)
		   {
			   rst.close();
		   }
		   if(pst!=null)
		   {
			   pst.close();
		   }
		   if(st!=null)
		   {
			   st.close();
		   }
		   if(conn!=null)
		   {
			   conn.close();
		   }
	   }

}
