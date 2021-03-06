<%@ page language="java" import="java.util.*,java.sql.*,com.bean.*,java.sql.Date.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

  <head>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>

   <!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="MyHtml.jsp">One Day</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="SignUp.html">Sign
							Up</a></li>
					<li class="nav-item"><a class="nav-link" href="Message.jsp">Message</a>
					</li>


					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Calendar </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
							<a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
							<a class="dropdown-item" href="blog-post.html">Blog Home 3</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Weather </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="full-width.html">Full Width
								Page</a> <a class="dropdown-item" href="sidebar.html">Sidebar
								Page</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
   

    <!-- Page Content -->
    <div class="container">
    
      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Message
 
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="MyHtml.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Message</li>
      </ol>

      <!-- Blog Post -->
     
            
              <%  

Connection con=DBFactory.getConnection();
    	
      String name=(String)session.getAttribute("name");
    	String sql="select likes.date ,likes.likename,notes.content from likes,notes where likes.idnotes=notes.idnotes and notes.username=\""+name+"\"";
    	Statement statement=con.createStatement();
	    ResultSet rs=statement.executeQuery(sql);
	    int size = 10;
	    String[] user_essey_contect = new String[size];
	     String[] user_liked_name = new String[size];
	    java.util.Date[] user_liked_date = new java.util.Date[size];
	    
	    int i=0;
	     while(rs.next()&&i<size)
	    {
	    user_essey_contect[i] = rs.getString("content");
	     user_liked_name[i] = rs.getString("likename");
	      user_liked_date[i] = rs.getDate("date");
	      %>
	       <div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="#">
                <img class="img-fluid rounded" src="img/didi.jpg" alt="">
              </a>
            </div>
            <div class="col-lg-6">
            
	        <h2 class="card-title">Someone Likes you!</h2>
              <p class="card-text"><%=user_essey_contect[0] %></p>
              <a href="#" class="btn btn-primary">Read More &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
        
          <%=user_liked_date[0].toString() %> by
          <a href="#"><%=user_liked_name[0] %></a>
        </div>
      </div>
	         
	      
	      <% 
	      
	    i++;
	    }
	    
	   
    	
	  
	   
	
	   DBFactory.closeConnection(rs, null, statement, con); 
     
	    
     


 %>
            
            
            
            
            

      <!-- Blog Post -->
      <div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <a href="#">
                <img class="img-fluid rounded" src="img/didi.jpg" alt="">
              </a>
            </div>
            <div class="col-lg-6">
              <h2 class="card-title">System Information</h2>
              <p class="card-text">欢迎您来到我们的网站，心情愉悦，天天开心！</p>
              <a href="#" class="btn btn-primary">Read More &rarr;</a>
            </div>
          </div>
        </div>
        <div class="card-footer text-muted">
          16:33, January 1, 2017 by
          <a href="#">One day</a>
        </div>
      </div>


     

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; One Day 2018</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>