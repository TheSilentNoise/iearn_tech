<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>lEarn.Tech</title>
    <meta name="description" content="Learn Today...Earn Tomorrow">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/custom.css">
   
   
  </head>
  <body data-ng-app="myApp">
  
	<!--Navigation bar-->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand">I<span>Earn.Tech</span></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown">Courses<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#/mycourses">My Courses</a></li>
							<li><a href="course.jsp">All Courses</a></li>
						</ul>
		 </li>
          <li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown">Username <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#/de">My Profile</a></li>
							<li><a href="#">Update Password</a></li>
							<li><a href="#">Submit Feedback</a></li>
							<li><a href="#">Logout</a></li>
						</ul>
					</li>

        </ul>
        </div>
      </div>
    </nav>
<!--/ Navigation bar-->
	 
	 <div>
			<section id ="courses" class="section-padding">
				 <div class="container">
				 
				  <div class="header-section text-center">
            			<h2 class="page-heading">Welcome to Student Portal</h2>
       			  </div>
       			  
       			   <div class="col-sm-12">
							<div data-ng-view></div>
					</div>
				 
				 	<!-- <div class="col-sm-2" id="navbarstudent">
				 				<nav>
		   							 <ul class="nav">
		   							    
		                    			<li class="active"><a href="#/"><i class="fa fa-user" aria-hidden="true"></i>	Profile</a></li><hr>
		                                <li>
		                                		<a  id="btn-1" data-toggle="collapse" data-target="#submenu1" aria-expanded="false"><i class="fa fa-graduation-cap" aria-hidden="true"></i>My Courses	</a>
		                                                <ul class="nav collapse submenu" id="submenu1" role="menu" aria-labelledby="btn-1">
		                                                                <li><a data-toggle="collapse" data-target="#submenu2" aria-expanded="false" ></i>Data Engineering Fundamentals</a>
					                                                              <ul class="nav collapse submenu" id="submenu2" role="menu" aria-labelledby="btn-1">
					                                                                <li><a href="#/de" ><i class="fa fa-book" aria-hidden="true"></i>Study Materials</a></li>
					                                                                <li><a href="#" ><i class="fa fa-calendar" aria-hidden="true"></i>Course Schedule</a></li>
					                                                              </ul>
		                                                                </li>
		                                                </ul>
		                                </li><hr>
		                                <li><a href="#/">	Link2</a></li><hr>
		                                <li><a href="#/">	Link3</a></li><hr>
		                            </ul>
		                       </nav>
			        </div>
			    
					 <div class="col-sm-10">
							<div data-ng-view></div>
					 </div> -->
				 </div>
			</section>
	 </div>
	 
	 
	 <div>
		<%@include file="footer.jsp" %>
	</div>
   
   
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/angular.min.js" ></script>
     <script src="js/angular-route.min.js" ></script>
    <script src =  "js/angular-sanitize.js"></script>
      <script src="js/static.js"></script>
     <script src="js/student.js"></script>
    
    
    
  </body>
</html>