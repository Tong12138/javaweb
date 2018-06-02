<%@ page language="java" import="java.util.*,java.sql.*,com.bean.*" pageEncoding="UTF-8"%>
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
      <h1 class="mt-4 mb-3">Community
   
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="MyHtml.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Community</li>
      </ol>

      <!-- Image Header -->
      <img class="img-fluid rounded mb-4" src="img/didi.jpg" alt="">
<%  

Connection con=DBFactory.getConnection();
    	 String name=(String)session.getAttribute("name");
    	String sql="select * from notes where username!= \""+name+"\"";
    	Statement statement=con.createStatement();
	    ResultSet rs=statement.executeQuery(sql);
	    int size = 20,i=0;
	    String[] user_essey_contect = new String[size];
	      String[] user_essey_name = new String[size];
	      int[] note_id=new int[size];
	    while(rs.next()&&i<size)
	    {
	    user_essey_contect[i] = rs.getString("content");
	      user_essey_name[i] = rs.getString("username");   
	      note_id[i]=rs.getInt(1);
	      
	        %>    
	        <form action='addlikes.jsp?bd=<%=note_id[i]%>' method="post">
	          <div class="col-lg-4 mb-4">
          <div class="card h-auto w-10000">
            
            <h4  class="card-header" >  <%=user_essey_name[i] %></h4>
            <div class="card-body">
              <p  class="card-text">   <%=user_essey_contect[i] %></p>
            </div>
            <div class="card-footer">
          
            <input onclick="like(this)" type="submit"  class="btn btn-primary" value='Like' id='likebox'>
            
            </div>
          </div>
        </div>
	        </form>	
	<%       
	      
	      i++; 
	
	      
	    }
	
	   DBFactory.closeConnection(rs, null, statement, con); 
     

     


   %>

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; One Day 2018</p>
      </div>
      <!-- /.container -->
    </footer>

  	<script>
  	
  	
 	  function like()
 	  {
 	  //alert('hello!');
 	  document.getElementById("likebox").value='liked';
 	  var a=document.getElementById("likebox").value;
 	  alert(a);
 	  
 	//this.value="liked";
	}
	
	
 	</script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>

