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
     
  	<link rel="stylesheet" type="text/css" href="css/slick/slick.css">
  	<link rel="stylesheet" type="text/css" href="css/slick/slick-theme.css">
  	<link rel="stylesheet" type="text/css" href="css/custom.css">
  
  </head>
  <body>
  
	 <div>
		<%@include file="header.jsp" %>
	 </div>
    
    <!--Banner-->
    <div class="banner">
      <div class="bg-color">
        <div class="container">
          <div class="row">
            <div class="banner-text text-center">
              <div class="text-border">
                <h2 class="text-dec">learn & Earn</h2>
              </div>
              <div class="intro-para text-center quote">
                <p class="big-text">Learn Today . . . Earn Tomorrow.</p>
                <p class="small-text"></p>
                <a href="#testimonial" class="btn get-quote">Upcoming Courses</a>
              </div>
              <a href="#feature" class="mouse-hover"><div class="mouse"></div></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--/ Banner-->
    <!--Feature-->
    <section id ="feature" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="header-section text-center">
            <h2 class="header-border">What we provide</h2>
             <hr class="bottom-line">
          </div>
          <br/><br/><br/>
          <div class="feature-info">
            <div class="col-md-4 col-sm-6 padleft-right">
            <figure class="border">
              <img src="img/home/interactive-live-training.png" class="img-responsive"><br/>
              <p><h4>Interactive Live Training</h4></p>
            </figure>
          </div>
         </div>
           
            <div class="feature-info">
            <div class="col-md-4 col-sm-6 padleft-right">
            <figure class="border">
              <img src="img/home/24-learning-platform.png" class="img-responsive"><br/>
              <p><h4>24x7 Learning Platform</h4></p>
            </figure>
          </div>
         </div>
         
          <div class="feature-info">
            <div class="col-md-4 col-sm-6 padleft-right">
            <figure class="border">
              <img src="img/home/live-project.png" class="img-responsive"><br/>
              <p><h4>Live Industry Projects</h4></p>
            </figure>
          </div>
         </div>
         
         <div class="feature-info">
            <div class="col-md-4 col-sm-6 padleft-right">
            <figure class="border">
              <img src="img/home/latest-course-curriculum.png" class="img-responsive"><br/>
              <h4>Latest Course Curriculum</h4>
            </figure>
          </div>
         </div>
         
         <div class="feature-info">
            <div class="col-md-4 col-sm-6 padleft-right">
            <figure class="border">
              <img src="img/home/trainers-across-globe.png" class="img-responsive"><br/>
              <p><h4>Trainers across globe</h4></p>
            </figure>
          </div>
         </div>
         
         <div class="feature-info">
            <div class="col-md-4 col-sm-6 padleft-right">
            <figure class="border">
              <img src="img/home/hands-on-experience.png" class="img-responsive"><br/>
              <p><h4>Hands on Experience</h4></p>
            </figure>
          </div>
         </div>
        </div>
        </div>
   
    </section>
    <!--/ feature-->
    
    
    <!--subjects-->
    <section id ="subjects" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="header-section text-center">
            <h2 class="header-border">Start Learning</h2>
             <hr class="bottom-line">
          </div>
          <br/><br/><br/>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-6 padleft-right">
	        <div class="course-div">
	            <figure class="imghvr-fold-up">
	              <img src="img/courses/data-engg.png" class="img-responsive">
	               <figcaption>
	                  <p><b>Data Engineering Fundamentals</b></p>
	                  <p><i class="fa fa-check" aria-hidden="true"></i>Database concepts<br/>
						<i class="fa fa-check" aria-hidden="true"></i>Scenario based SQL Queries<br/>
						<i class="fa fa-check" aria-hidden="true"></i>Database Optimization Techniques<br/>
						<i class="fa fa-check" aria-hidden="true"></i>Data warehouse Fundamentals<br/>
						<i class="fa fa-check" aria-hidden="true"></i>Extract, Transform and Load Operations<br/>
						And many more.....
	                  </p>
	              </figcaption>
	            </figure>
	            <h4 class="text-center">Data Engineering Fundamentals</h4><hr/>
	            <p>Duration : XXXX </p>
	            <p>Course Fees : XXXX </p><hr/>
	            <a href='data-engg-course.jsp'>Course Details</a>
	            <div class="pull-right">
	            <button class="btn btn-success" onclick="window.location.href='data-engg-course.jsp'">Enroll</button>
	            </div>
	         </div>
         </div>
         
         
          <div class="col-md-4 col-sm-6 padleft-right">
	        <div class="course-div">
	            <figure class="imghvr-fold-up">
	              <img src="img/courses/ProgrammingFundamentals.jpg" class="img-responsive">
	              <figcaption>
	                  <p><b>Programming Fundamentals</b></p>
	                  <p><i class="fa fa-check" aria-hidden="true"></i>Object Oriented Programming concepts<br/>
						<i class="fa fa-check" aria-hidden="true"></i>Design Patterns<br/>
						<i class="fa fa-check" aria-hidden="true"></i>File and Database Operations<br/>
						<i class="fa fa-check" aria-hidden="true"></i>XML and JSON parsing<br/>
						<i class="fa fa-check" aria-hidden="true"></i>Collections <br/>
						And many more.....
	                  </p>
	              </figcaption>
	            </figure>
	            <h4 class="text-center">Programming Fundamentals</h4><hr/>
	            <p>Duration : XXXX </p>
	            <p>Course Fees : XXXX </p><hr/>
	            <a href='data-engg-course.jsp'>Course Details</a>
	            <div class="pull-right">
	            <button class="btn btn-success" onclick="window.location.href='data-engg-course.jsp'">Enroll</button>
	            </div>
	         </div>
         </div>
        
          <div class="col-md-4 col-sm-6 padleft-right">
	        <div class="course-div">
	            <figure class="imghvr-fold-up">
	              <img src="img/courses/machine_learning-logo.jpg" class="img-responsive">
	              <figcaption>
	                  <p><b>Machine Learning</b></p>
	                  <p><i class="fa fa-check" aria-hidden="true"></i>Basic Statistics<br/>
						<i class="fa fa-check" aria-hidden="true"></i>Exploratory Data Analysis<br/>
						<i class="fa fa-check" aria-hidden="true"></i>Modeling Distributions<br/>
						<i class="fa fa-check" aria-hidden="true"></i>Clustering Techniques <br/>
						<i class="fa fa-check" aria-hidden="true"></i>Classification Techniques <br/>
						<i class="fa fa-check" aria-hidden="true"></i>Regression Techniques <br/>
						And many more.....
	                  </p>
	              </figcaption>
	            </figure>
	            <h4 class="text-center">Machine Learning</h4><hr/>
	            <p>Duration : XXXX </p>
	            <p>Course Fees : XXXX </p><hr/>
	            <a href='data-engg-course.jsp'>Course Details</a>
	            <div class="pull-right">
	            <button class="btn btn-success" onclick="window.location.href='data-engg-course.jsp'">Enroll</button>
	            </div>
	         </div>
         </div>
         
          
        </div>
      </div>
      <div class="text-center">
      		<button type="button" class="btn btn-success" onclick="window.location.href='course.jsp'">View All Courses</button>
      </div>
     
    </section>
    <!--/ subjects-->
    
  
   
  <section id ="testimonial" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="header-section text-center">
            <h2 class="header-border">Upcoming Courses</h2>
             <hr class="bottom-line">
          </div>
          
          <div class="regular-new slider">
			   <div class="blog-scroll blog-border col-sm-12">
						   <div class="col-sm-3">
						   		<img src="img/Com+Icon+Blue+2.png" class="img-responsive">
						   </div>
						   <div class="col-sm-9">
							    <h4 >Course Name : Data Engineering Fundamentals</h4>
							    <p>Duration : </p>
							    <p>Start Date : </p>
							    <p><a href="">View Course Details</a></p>
						   </div>
				</div>
				
				<div class="blog-scroll blog-border col-sm-12">
						   <div class="col-sm-3">
						   		<img src="img/program.png" class="img-responsive">
						   </div>
						   <div class="col-sm-9">
							    <h4 >Course Name : Programming Fundamentals (Java+ Scala + Python)</h4>
							    <p>Duration : </p>
							    <p>Start Date : </p>
							    <p><a href="">View Course Details</a></p>
						   </div>
				</div> 
					   
			    <div class="blog-scroll blog-border col-sm-12">
						   <div class="col-sm-3">
						   		<img src="img/hadoop-128.png" class="img-responsive">
						   </div>
						   <div class="col-sm-9">
							    <h4 >Course Name : Big Data & Hadoop</h4>
							    <p>Duration : </p>
							    <p>Start Date : </p>
							    <p><a href="">View Course Details</a></p>
						   </div>
				</div>
				</div>
        </div>
        </div>
   
    </section>
    <!--/ feature-->
    

<section id ="feature" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="header-section text-center">
            <h2 class="header-border">Latest Blog Posts</h2>
             <hr class="bottom-line">
          </div>
          
          <div class="regular slider">
			   <div class="blog-scroll blog-border">
				   <h4 class="entry-title"><a href="">Top 5 Python Libraries for Data Visualization</a></h4>
										<div class="entry-summary">
											<p>Data visualization is a pictorial or graphical format of the presentation of data. 
											This graphical representation helps  decision makers to see analytics presented visually. 
											So, they can get difficult concepts [&hellip;]</p>
										</div>   
				</div>
					    
				<div class="blog-scroll blog-border">
				   <h4 class="entry-title"><a href="">Top 5 Python Libraries for Data Visualization</a></h4>
										<div class="entry-summary">
											<p>Data visualization is a pictorial or graphical format of the presentation of data. 
											This graphical representation helps  decision makers to see analytics presented visually. 
											So, they can get difficult concepts [&hellip;]</p>
										</div>   
				</div>
			    
			    <div class="blog-scroll blog-border">
				  <h4 class="entry-title"><a href="">Top 5 Python Libraries for Data Visualization</a></h4>
										<div class="entry-summary">
											<p>Data visualization is a pictorial or graphical format of the presentation of data. 
											This graphical representation helps  decision makers to see analytics presented visually. 
											So, they can get difficult concepts [&hellip;]</p>
										</div>    
				</div>
				 <div class="blog-scroll blog-border">
				  <h4 class="entry-title"><a href="">Top 5 Python Libraries for Data Visualization</a></h4>
										<div class="entry-summary">
											<p>Data visualization is a pictorial or graphical format of the presentation of data. 
											This graphical representation helps  decision makers to see analytics presented visually. 
											So, they can get difficult concepts [&hellip;]</p>
										</div>    
				</div>
				 <div class="blog-scroll blog-border">
				  <h4 class="entry-title"><a href="">Top 5 Python Libraries for Data Visualization</a></h4>
										<div class="entry-summary">
											<p>Data visualization is a pictorial or graphical format of the presentation of data. 
											This graphical representation helps  decision makers to see analytics presented visually. 
											So, they can get difficult concepts [&hellip;]</p>
										</div>    
				</div>
				
			     <div class="blog-scroll blog-border">
				  <h4 class="entry-title"><a href="">Top 5 Python Libraries for Data Visualization</a></h4>
										<div class="entry-summary">
											<p>Data visualization is a pictorial or graphical format of the presentation of data. 
											This graphical representation helps  decision makers to see analytics presented visually. 
											So, they can get difficult concepts [&hellip;]</p>
										</div>    
				</div>
				
				</div>
        </div>
        </div>
   
    </section>
    <!--/ feature-->


 <!--Cta-->
    <section id="cta-2">
      <div class="container">
        <div class="row">
            <div class="col-lg-12">
              <h2 class="text-center">Subscribe Now</h2><hr class="bottom-line">
              <h4 class="text-center">Subscribe to stay updated about the latest news letters and upcoming courses.</h4><br/>
             <div class="cta-2-form text-center">
              <form action="#" method="post" id="workshop-newsletter-form">
                    <input name="" placeholder="Enter Your Email Address" type="email">
                    <input class="cta-2-form-submit-btn" value="Subscribe" type="submit">
                </form>
             </div>   
            </div>
        </div>
      </div>
    </section>
    <!--/ Cta-->    
	   
    
	<div>
		<%@include file="footer.jsp" %>
	</div>
    
   
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/custom.js"></script>
    <script type="text/javascript">
    $(".regular").slick({
  	  dots: true,
		infinite: false,
		speed: 300,
		slidesToShow: 3,
		touchMove: false,
		slidesToScroll: 1
    });
    
    $(".regular-new").slick({
    	dots: true,
  		infinite: false,
  		speed: 300,
  		slidesToShow: 2,
  		touchMove: false,
  		slidesToScroll: 1
      });
    
    $(".variable").slick({
        dots: true,
        infinite: true,
        variableWidth: true
      });
    </script>
   
  </body>
</html>