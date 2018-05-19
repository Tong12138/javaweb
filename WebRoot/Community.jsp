<%@ page language="java" import="java.util.*,java.sql.*,com.bean.*" pageEncoding="ISO-8859-1"%>
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
    <link href="css/community_css.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>

 <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="MyHtml.html">One Day</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="SignUp.html">Sign Up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Message.html">Message</a>
            </li>
            
         
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Calendar
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
                <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                <a class="dropdown-item" href="blog-post.html">Blog Home 3</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Weather
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="full-width.html">Full Width Page</a>
                <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Community
   
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="MyHtml.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Community</li>
      </ol>

      <!-- Image Header -->
      <img class="img-fluid rounded mb-4" src="http://placehold.it/1200x300" alt="">
<%  

Connection con=DBFactory.getConnection();
    	
    	String sql="select * from notes";
    	Statement statement=con.createStatement();
	    ResultSet rs=statement.executeQuery(sql);
	    int size = 6;
	    String[] user_essey_contect = new String[size];
		for (int i = 0; i < size; i++) {
    		 user_essey_contect[i] = rs.getString("content");
		}
	     String[] user_essey_name = new String[size];
		for (int i = 0; i < size; i++) {
    		 user_essey_name[i] = rs.getString("username");
		}
	    
     


 %>
      <!-- Marketing Icons Section -->
      <div class="row">
        <div class="col-lg-4 mb-4">
          <div class="card h-50">
 
            <h4 class="card-header">  <%=user_essey_name[0] %></h4>
            <div class="card-body">
         
              <p class="card-text">   <%=user_essey_contect[0] %></p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Like</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-50">
            <h4 class="card-header"><%=user_essey_name[1] %></h4>
            <div class="card-body">
              <p class="card-text"><%=user_essey_contect[1] %></p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Like</a>
            </div>
          </div>
        </div>
         <div class="col-lg-4 mb-4">
          <div class="card h-50">
            <h4 class="card-header"><%=user_essey_name[2] %></h4>
            <div class="card-body">
              <p class="card-text"><%=user_essey_contect[2] %></p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Like</a>
            </div>
          </div>
        </div>
         <div class="col-lg-4 mb-4">
          <div class="card h-50">
            <h4 class="card-header"><%=user_essey_name[3] %></h4>
            <div class="card-body">
              <p class="card-text"><%=user_essey_contect[3] %></p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Like</a>
            </div>
          </div>
        </div>
         <div class="col-lg-4 mb-4">
          <div class="card h-50">
            <h4 class="card-header"><%=user_essey_name[4] %></h4>
            <div class="card-body">
              <p class="card-text"><%=user_essey_contect[4] %></p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Like</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-50">
            <h4 class="card-header"><%=user_essey_name[5] %></h4>
            <div class="card-body">
              <p class="card-text"><%=user_essey_contect[5] %></p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Like</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

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