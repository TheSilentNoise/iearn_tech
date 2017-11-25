<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mentor Education Bootstrap Theme</title>
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
    
    <!--Pricing-->
    
    <section id ="pricing" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="header-section text-center">
            <h2 class="page-heading">All Courses</h2>
          </div>
        </div>
        <br/><br/>
        <div class="col-md-4 col-sm-6 padleft-right">
            <figure class="imghvr-fold-up">
              <img src="img/data-2.jpg" class="img-responsive">
              <figcaption>
              <h4>Course Name : Data Engineering Fundamentals</h4>
                 <p> Duration: 22 sessions of 3 hours duration.</p>
				 <p>Course Fees: 6000INR</p>
				 <p>Start Date:</p>
              </figcaption>
            </figure>
             <button class="btn btn-success" onclick="window.location.href='data-engineering-course.jsp'">Course Details</button>
          </div>
      </div>
    </section>
    <!--/ Pricing-->
   
   
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