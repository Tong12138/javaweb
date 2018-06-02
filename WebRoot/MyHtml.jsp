<%@ page language="java" import="java.util.*,java.sql.*,com.bean.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>
<html lang="en" >

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>One day - Open your today's life</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">




<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/add_list.js"></script>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js">
</script>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- 	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->



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

	<header>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-item active">
					
					<a href="recom3.html"> <img style="background-image"
						src="img/recom3_5.jpg" width=1080/>
					</a>
					<div class="carousel-caption d-none d-md-block">
						<h3>深海鱼真会藏</h3>
						<p>吸掉99.9%的光 近在眼前你都看不见</p>
					</div>
				</div>

				<!-- Slide Two - Set the background image for this slide in the line below -->
				<div class="carousel-item ">
					<a href="recom2.html"> <img style="background-image"
						src="img/recom2_8.jpg" width=1080/>
					</a>
					
					<div class="carousel-caption d-none d-md-block">
						<h3>嘘，前方博物馆戏精出没！</h3>
						<p>每年的5月18日是国际博物馆日。</p>
					</div>
				</div>
				<!-- Slide Three - Set the background image for this slide in the line below -->
				<div class="carousel-item">
					<a href="new_recom1.html"> <img style="background-image"
						src="img/recom1_1.jpg" width=1080/>
					</a>

					<div class="carousel-caption d-none d-md-block">
						<h3>床上运动也是运动！</h3>
						<p>性生活等于走路五公里.</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</header>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h1 class="my-4">
					One Day <small>your life assistant</small>
				</h1>

				<!-- TODO list -->
				
			  <div class="card mb-4">
					<div class="card-body">
						<h2 class="card-title">Todo List</h2>
						<br>	
							<p id="list_para">
				
				<%  
       java.sql.Date date=new java.sql.Date(new java.util.Date().getTime());
       String a=date.toString();
       
          Connection con=DBFactory.getConnection();
    	 String name=(String)session.getAttribute("name");
    	String sql="select * from lists where username= \""+name+"\" and date= \""+a+"\"";
    	Statement statement=con.createStatement();
	    ResultSet rs=statement.executeQuery(sql);
	    int size = 20,i=0;
	    String[] listcontent = new String[size]; 
	    while(rs.next()&&i<size)
	    {
	    
	    listcontent[i] = rs.getString("content");
	    boolean b=rs.getBoolean(3);
	    if(b==true)
	    {
	    %>    
	    		 <input type="checkbox" checked  name="check" id="num" >
					
								<label for="num"><%=listcontent[i] %></label> <br>
		<%
		}
		else
		{
		 %>
		 <input type="checkbox"  name="check" id="num"  >
							<label for="num"><%=listcontent[i] %></label> <br>
							
						
						
					
	<%       
	     } 
	      i++; 
	
	      
	    }
	
	   DBFactory.closeConnection(rs, null, statement, con); 
     

     


   %>
				
		</p>		
	<button class="btn btn-primary btn-lg" data-toggle="modal"
							data-target="#myModal">Add New</button>



					</div>

				</div>












			</div>

			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">Others</h5>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="Recommendation.html">Recommendation</a></li>
									<li><a href="Community.jsp">Community</a></li>
									<li><a href="recom3.html">News Today</a></li>
									
								</ul>
								<br>
								<br>



							</div>

						</div>
						<button class="btn btn-primary btn-lg" data-toggle="modal"
							data-target="#moodModal">Today's Mood?</button>
							<div id="mood"> </div>
							
					</div>

   					
				</div>

				<!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" id="city" name="city" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button" onclick="getweather()" >Go!</button>
                </span>
                <div id="weather"></div>
              </div>
            </div>
          </div>

			</div>



		</div>
		
		

		<div class="row mb-4">
			<div class="col-md-8">
				<p>Maybe you are still dissatisfied with our web design or
					imperfect functions.If you have such confusions,please contact us.</p>
			</div>
			<div class="col-md-4">
				<a class="btn btn-lg btn-secondary btn-block" href="Contact.html">Contact
					us</a>
			</div>
		</div>


	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; One Day
				2018</p>
		</div>
		<!-- /.container -->
	</footer>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
				<h3 class="modal-title" id="myModalLabel" >Add what u want to
						add</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					
				</div>
				<div class="modal-body">
					<label>Add Text: </label><br> <input type="text"
						id="textyyt">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">close
					</button>
					<button onclick="send()" class="btn btn-primary">submit</button>
					
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<div class="modal fade" id="moodModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
				<h3 class="modal-title" id="myModalLabel">Just write it down!
					</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					
				</div>
				<div class="modal-body">
					<label>GO: </label><br> <input type="text" id="mmmood">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">close
					</button>
					<button type="button" onclick="getmoods()" class="btn btn-primary">submit</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- MODAL2 -->
	<div class="modal fade" id="modal-add" tabindex="-1" role="dialog"
		aria-labelledby="modal-add-label" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h3 class="modal-title" id="modal-register-label">Sign in now</h3>
					<p>Fill in the form below to get instant access:</p>
				</div>

				<div class="modal-body">

					<form role="form" action="signup.jsp" method="post"
						class="registration-form">
						<div class="form-group">
							<label class="sr-only" for="form-first-name">Name</label> <input
								type="text" name="form-first-name" placeholder="UserName..."
								class="form-first-name form-control" id="form-first-name">
						</div>
						<div class="form-group">
							<label class="sr-only" for="password">Password</label> <input
								type="text" name="password" placeholder="password..."
								class="form-last-name form-control" id="form-last-name">
						</div>

						<button type="submit" class="btn">Sign me up!</button>
					</form>

				</div>

			</div>
		</div>
	</div>

	<script type="text/javascript">
		var xmlhttp;
		
		function send() {
		
			if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp = new XMLHttpRequest();
			} else { // code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
	      
	var text=document.getElementById("textyyt");
	//	var url = "addlist.jsp?address=" + content;
//  document.getElementById("result").innerHTML="dsfdsf";
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					  
					  var label = document.createElement('label');  //创建input节点
					label.innerHTML=xmlhttp.responseText;
				
					
					
					var input = document.createElement('input');  //创建input节点
					
					input.setAttribute('type', 'checkbox');  //定义类型是checkbox
					input.setAttribute('name', 'check');
					//	alert("xmlhttp.responseText"); 
					//input.setAttribute('value', xmlhttp.responseText);
					input.value=xmlhttp.responseText;
					//input.setAttribute(')
					
				
						alert(input.name); 
					var tt = document.createElement("div");
 				   tt.innerHTML = "<br/>";
 				
					 	document.getElementById('list_para').appendChild(tt);
		        document.getElementById('list_para').appendChild(input); //添加到form中显示
		        
		         document.getElementById('list_para').appendChild(label); //添加到form中显示
		         
		         	
 	         // alert('cnm!');
	            
	        
		// document.getElementById("result").innerHTML=;
					 }
					
					 
				}
			
			xmlhttp.open("GET", "addlist.jsp?text="+text.value, true);
			xmlhttp.send(null);
		location.reload();
		}
		
		function getweather()
		{
		 
			if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
					xmlhttp = new XMLHttpRequest();
				} else { // code for IE6, IE5
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
	      
			var text=document.getElementById("city");
	//document.getElementById("weather").innerHTML=text.value();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			
					 document.getElementById("weather").innerHTML=xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "WeatherServlet?text="+text.value, true);
			xmlhttp.send(null);
		}
		function getmoods()
		{
			if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
					xmlhttp = new XMLHttpRequest();
				} else { // code for IE6, IE5
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
	      
			var text=document.getElementById("mmmood");
	//document.getElementById("weather").innerHTML=text.value();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			
					 document.getElementById("mood").innerHTML=xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "addmood.jsp?text="+text.value, true);
			xmlhttp.send(null);
		}

	</script>



	<!-- Bootstrap core JavaScript -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/test.js"></script>
</body>

</html>
