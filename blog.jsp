<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Blogs | lEarn.Tech</title>
    <meta name="description" content="Learn Today.....Earn Tomorrow">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/custom.css">
    
  </head>
  <body data-ng-app="blogApp">
  
	 <div>
		<%@include file="header.jsp" %>
	 </div>
	 
	  <section  class="section-padding">
		 <div class="container">
		        <div class ="col-md-12">
		             <div class="header-section text-center">
				          	<h2 class="page-heading">Blogs</h2>
				    </div>
		        	 <div class ="col-md-3">
			        	 <div class="blog-category"><br/>
			        		<h4>Blog Categories</h4><hr/>
			                <nav id="filter">
							<ul class="nav">
								<li class="active"><a href="#/" >All</a></li>
								<li><a href="#/java" >JAVA</a></li>
								<li><a href="#/sql" >SQL</a></li>
							</ul>
						</nav>
			            </div><br/>
			             <div class="blog-category"><br/>
			        		<h4>Popular posts</h4><hr/>
			        		<ul>
			        		<li><a href="#">Data Science</a></li>
			                <li><a href="#">Machine Learning</a></li>
			                <li><a href="#">Java</a></li>
			                </ul>
			        	 </div>
			            <br/>
		            </div>
		         <div class="col-md-9">
		         		<div class="col-md-12">
							<ng-view>
							</ng-view>
						</div>
				 </div>
		        
		        </div>
		        
		   </div>
	   </section>
	   
	    <div>
		<%@include file="footer.jsp" %>
	    </div>
   
   
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/angular.min.js" ></script>
     <script src="js/angular-route.min.js" ></script>
    <script src="js/custom.js"></script>
	<script src="js/blogs.js"></script>

</body>
</html>