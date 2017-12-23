<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Enroll | lEarn.Tech</title>
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
     <section id ="pricing" class="section-padding">
     <div class="container">
    <!--Contact-->
   
      <div class="row">
      <div class="header-section text-center">
            <h2 class="header-border">Register Yourself</h2>
            <p></p>
            <hr class="bottom-line">
          </div>
				
    <div class="col-md-6 col-sm-12 col-lg-6 col-md-offset-3">
		<div class="panel panel-success">
			
			<div class="panel-body">
				<form name="myform">
					<div class="form-group">
						<label for="myName">Full Name *</label>
						<input id="myName" name="myName" class="form-control" type="text" required>
					</div>
					<div class="form-group">
						<label for="lastname">Email *</label>
						<input type="email" id="email" class="form-control" required>
					</div>
					<div class="form-group">
						<label for="age">Phone no *</label>
						<input id="age" name="age"  class="form-control" type="number"  required>
					</div>
					
					<div class="form-group">
						<label for="password">Password</label>
						<input id="password" name="password"  class="form-control" type="password" required>
					</div>
					 <div class="col-xs-12 text-right">
					<button id="submit" type="submit" value="submit" class="btn btn-success">Submit</button>
			</div>
				</form>

			</div>
		</div>
	</div>
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