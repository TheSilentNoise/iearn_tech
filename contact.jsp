<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contact | lEarn.Tech</title>
    <meta name="description" content="Learn Today...Earn Tomorrow">
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
       <div class="header-section text-center">
            <h2 class="page-heading">Contact Us</h2>
       </div>
       <br/><br/>

						 <div class="row">
						 	<div class="col-md-4">
						 		<div class="boxed-content">
						 			<h2 class="section-title"><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;Email</h2>
						 			<p><strong>Office:</strong> <a href="mailto:office@companyname.com">office@companyname.com</a></p>
						 		</div>
						 	</div>
						 	<div class="col-md-4">
						 		<div class="boxed-content">
						 			<h2 class="section-title"><i class="fa fa-phone"></i>&nbsp;&nbsp;Telephone</h2>
						 			<p><strong>Office:</strong> +1 800 321 431</p>
						 		</div>
						 	</div>
						 	<div class="col-md-4">
						 		<div class="boxed-content">
						 			<h2 class="section-title"><i class="fa fa-globe"></i>&nbsp;&nbsp;Social Media</h2>
						 			<div class="social-links">
									<a href="#"><img src="img/icon/linkedin.png" ></a>&nbsp;&nbsp;
									<a href="#"><img src="img/icon/facebook.png" ></a>&nbsp;&nbsp;
									<a href="#"><img src="img/icon/twitter.png" ></a>&nbsp;&nbsp;
									<a href="#"><img src="img/icon/google-plus.png" ></a>
								</div>
						 		</div>
						 	</div>
						 	
						 	
						 </div>
						
						 </div>
    </section>
    <!--/ Pricing-->
    
    <!--Contact-->
    <section id ="contact" class="section-padding">
      <div class="container">
       <div class="text-center">
            <h4>Got a Query, Write to us -</h4>
       </div>
        <div class="row contactdiv">
          <div id="sendmessage">Your message has been sent. Thank you!</div>
          <div id="errormessage"></div>
          <form action="" method="post" role="form" class="contactForm">
              <div class="col-md-6 col-sm-6 col-xs-12 left">
                <div class="form-group">
                    <input type="text" name="name" class="form-control form" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                    <div class="validation"></div>
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                    <div class="validation"></div>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                    <div class="validation"></div>
                </div>
              </div>
              
              <div class="col-md-6 col-sm-6 col-xs-10 right">
                <div class="form-group">
                    <textarea class="form-control" name="message" rows="6" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                    <div class="validation"></div>
                </div>
              </div>
              
              <div class="col-xs-12 text-right">
                <!-- Button -->
                <button type="submit" id="submit" name="submit" class="form contact-form-button light-form-button oswald light">SEND EMAIL</button>
              </div>
          </form>
          
        </div>
      </div>
    </section>
    <!--/ Contact-->
   <div>
		<%@include file="footer.jsp" %>
	</div>
       
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    
  </body>
</html>