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
  <body>
  
	 <div>
		<%@include file="header.jsp" %>
	 </div>
	 
	 <section id ="" class="section-padding">
	 <div class="container">
	  						   <div class="header-section text-center">
				          			  <h2 class="page-heading">All Blogs</h2>
				               </div>
		      					<br/><br/>
							   <div class ="col-sm-12">
								 
											 <div class="col-sm-8">
												 <div>
													<%@include file="blogs.jsp" %>
												 </div>
											 </div>
											 
											 
											 <div class="col-sm-4">
												  <div>
													<%@include file="blogpanel.jsp" %>
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
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>
    
  </body>
</html>