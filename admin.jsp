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
    
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    
     <link rel="stylesheet" href="css/stylesheet.css">
   
    <!-- =======================================================
        Theme Name: Mentor
        Theme URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
        Author: BootstrapMade.com
        Author URL: https://bootstrapmade.com
    ======================================================= -->
  </head>
  <body>
  
	 <div>
		<%@include file="header.jsp" %>
	 </div>
	 
	 <section id ="courses" class="section-padding">
     <center><h2>Admin</h2></center>
     <div class="container">
	<div class="col-sm-2">
    <nav class="nav-sidebar">
		<ul class="nav tabs">
          <li class="active"><a href="#tab1" data-toggle="tab">Create Blog</a></li>
          <li class=""><a href="#tab2" data-toggle="tab">View all blogs </a></li>
          <li class=""><a href="#tab3" data-toggle="tab">Create Course</a></li> 
          <li class=""><a href="#tab4" data-toggle="tab">Create curriculam</a></li> 
                                        
		</ul>
	</nav>
</div>
<div class="col-sm-10">
<!-- tab content -->
<div class="tab-content">
<div class="tab-pane active text-style" id="tab1">

  <div>
		<%@include file="createblog.jsp" %>
	 </div>
	 
</div>

<div class="tab-pane text-style" id="tab2">
  <h2>Object Oriented Programming Features</h2>
  <hr>
</div>

<div class="tab-pane text-style" id="tab3">
  <h2>Stet clita</h2>
  <p>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum 
    iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla 
    facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit 
    augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet,</p>
    <hr>
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
    
    
    <script src="js/wysihtml.min.js"></script>
    <script src="js/wysihtml.all-commands.min.js"></script>
    <script src="js/wysihtml.table_editing.min.js"></script>
    <script src="js/wysihtml.toolbar.min.js"></script>
    <script src="js/advanced_and_extended.js" ></script>
    
     <script>
      var editor = new wysihtml.Editor("wysihtml-editor", {
        toolbar:     "wysihtml-editor-toolbar",
        stylesheets: ["css/reset-min.css", "css/editor.css"],
        parserRules: wysihtmlParserRules
      });
      
      editor.on("load", function() {
        var composer = editor.composer,
            h1 = editor.composer.element.querySelector("h1");
        if (h1) {
          composer.selection.selectNode(h1);
        }
      });
      
      function fun(){
    	//  console.log(document.getElementById("wysihtml-editor").value);
    	
    	  var html = editor.getValue();
    	  console.log(html);
      }
      
    </script>
    
    
    
    
  </body>
</html>