<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>lEarn.Tech</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
    <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/custom.css">
    
  </head>
  <body>
  
	 <div>
		<%@include file="header.jsp" %>
	 </div>
	 
	  <section  class="section-padding">
		 <div class="container">
		        <div class ="col-sm-12">
		             <div class="header-section text-center">
				          	<h2 class="page-heading">Blogs</h2>
				    </div>
		        	 <div class ="col-sm-3">
			        	 <div class="blog-category"><br/>
			        		<h3>Blog Categories</h3><hr/>
			                <nav id="filter">
							<ul class="nav">
								<li class="active"><a href="#" class="current btn-theme btn-small" data-filter="*">All</a></li>
								<li><a href="#" class="btn-theme btn-small" data-filter=".java">JAVA</a></li>
								<li><a href="#" class="btn-theme btn-small" data-filter=".sql">SQL</a></li>
							</ul>
						</nav>
			            </div><br/>
			             <div class="blog-category"><br/>
			        		<h3>Popular posts</h3><hr/>
			        		<ul>
			        		<li><a href="#">Data Science</a></li>
			                <li><a href="#">Machine Learning</a></li>
			                <li><a href="#">Java</a></li>
			                </ul>
			        	 </div>
			            
		            </div>
		            
		            
		        
		         <div class="col-sm-9">
							<div class="row">
								<div class="portfolio-items isotopeWrapper clearfix" id="3">

									<article class="col-sm-12 isotopeItem java">
										<div class="portfolio-item ">
											<div class="portfolio-desc align-center">
												<div class="folio-info">
												 <div class="inner blog-border">
					                                   <a href="CollectionCheatsheet.jsp"> <h4>Java Collection Framework Cheat Sheet</h4>
					                                        <span class="inline-block mb16">November 12, 2017</span></a>
					                                    <hr>
					                                    <p>
					                                    	The Java Collections Framework is a collection of interfaces and classes which helps in storing and processing the data efficiently...;
					                                    </p>
					                                    <button class="btn btn-success" onclick="window.open('CollectionCheatsheet.jsp')">Read More &rarr;</button>
					                                <br/><br/>
					                                </div>
												</div>
											</div>
										</div>
									</article>

									<article class="col-sm-12 isotopeItem sql">
										<div class="portfolio-item">
											<div class="portfolio-desc align-center">
												 <div class="inner blog-border">
					                                	<a href="NoSqlConcepts.jsp"><h4>Few Concepts on NoSql </h4>
					                                        <span class="inline-block mb16">November 11, 2017</span>
					                                    </a>
					                                    <hr>
					                                    <p>
					                                    	NoSQL encompasses a wide variety of different database technologies that were developed in response to the demands presented in building modern applications &#8230;
					                                    </p>
					                                    <button class="btn btn-success"  onclick="window.open('NoSqlConcepts.jsp')">Read More &rarr;</button>
					                                 <br/><br/>
					                               </div>
											</div>
										</div>
									</article>


									<article class="col-sm-12 isotopeItem java">
										<div class="portfolio-item">
											<div class="portfolio-desc align-center">
												 <div class="inner blog-border">
				                                       <a href="apache-common-chain.jsp"> <h4>Use of Apache Common Chains</h4>
				                                        <span class="inline-block mb16">November 12, 2017</span></a>
				                                    <hr>
				                                    <p>
				                                    	A popular technique for organizing the execution of complex processing flows is the "Chain of Responsibility" pattern, as described in the classic "Gang of Four" design patterns extremely simple, it is useful to have a base API that facilitates using the pattern, and encouraging composition of command implementations from multiple diverse sources&#8230;
				                                    </p>
				                                    <button class="btn btn-success" onclick="window.open('apache-common-chain.jsp')">Read More &rarr;</button>
				                                 <br/><br/>
				                                </div>
											</div>
										</div>
									</article>

									
								</div>

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
    <script src = "http://ajax.googleapis.com/ajax/libs/angularjs/1.0.3/angular-sanitize.js"></script>
    <script src="js/custom.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.fancybox.pack.js" type="text/javascript"></script>
<iframe width="350" height="430" src="https://console.dialogflow.com/api-client/demo/embedded/09e9e86b-d7bc-41ee-99f1-acddf9e2f177"></iframe>
</body>
</html>