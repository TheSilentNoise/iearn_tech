<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TheSilentNoise</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/custom.css">
   
   
  </head>
  <body data-ng-app="myApp">
  
	 <div>
		<%@include file="header.jsp" %>
	 </div>
	 
	 <div>
			<section id ="courses" class="section-padding">
				 <div class="container">
				 
				  <div class="header-section text-center">
            			<h2 class="page-heading">Welcome to Home</h2>
       			  </div>
				 
				 	<div class="col-sm-2" id="navbarstudent">
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
					 </div>
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
     <script src="js/student.js"></script>
    
    
    
  </body>
</html>