<!--Navigation bar-->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" style="padding: 0px 0px 0px 29px;">I<span>Earn.Tech</span></a>
        </div>
        <div class="collapse navbar-collapse" style="padding: 0px 29px 0px 0px;">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="course.jsp">Courses</a></li>
          <li><a href="blog.jsp">Blogs</a></li>
          <!--  <li class="dropdown">
						<a  class="dropdown-toggle" data-toggle="dropdown">Blogs <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="blog.jsp">All Blogs</a></li>
							<li><a href="sql.html">SQL</a></li>
							<li><a href="#">UNIX</a></li>
							<li><a href="java.jsp">JAVA</a></li>
							<li><a href="hadoop.html">Big Data & Hadoop</a></li>
							<li><a href="#">Data Warehouse</a></li>
							<li><a href="#">Talend</a></li>
							<li><a href="#">Machine Learning</a></li>
							<li><a href="#">Python</a></li>
						</ul>
		  </li> -->
		  <li><a href="contact.jsp">Contact</a></li>
          <li><a href="#" data-target="#login" data-toggle="modal">Sign in</a></li>
          <li class="btn-trial"><a href="enroll.jsp">Enroll Now</a></li>

        </ul>
        </div>
      </div>
    </nav>
<!--/ Navigation bar-->
    
    
    
    <!--Modal box-->
    <div class="modal fade" id="login" role="dialog">
      <div class="modal-dialog modal-sm">
      
        <!-- Modal content no 1-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title text-center form-title">Login</h4>
          </div>
          <div class="modal-body padtrbl">

            <div class="login-box-body">
              <p class="login-box-msg">Sign in to start your session</p>
              <div class="form-group">
                <form name="" id="loginForm">
                 <div class="form-group has-feedback"> <!----- username -------------->
                      <input class="form-control" placeholder="Username"  id="loginid" type="text" autocomplete="off" /> 
            		  <span style="display:none;font-weight:bold; position:absolute;color: red;position: absolute;padding:4px;font-size: 11px;background-color:rgba(128, 128, 128, 0.26);z-index: 17;  right: 27px; top: 5px;" id="span_loginid"></span><!---Alredy exists  ! -->
                      <span class="glyphicon glyphicon-user form-control-feedback"></span>
                 </div>
                 
                  <div class="form-group has-feedback"><!----- password -------------->
                      <input class="form-control" placeholder="Password" id="loginpswd" type="password" autocomplete="off" />
                      <span style="display:none;font-weight:bold; position:absolute;color: grey;position: absolute;padding:4px;font-size: 11px;background-color:rgba(128, 128, 128, 0.26);z-index: 17;  right: 27px; top: 5px;" id="span_loginpsw"></span><!---Alredy exists  ! -->
                      <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                  </div>
                  
                  <div class="row">
                      <div class="col-xs-12">
                          <div class="checkbox icheck">
                              <label><input type="checkbox" id="loginrem" > Remember Me</label>
                          </div>
                      </div>
                      <div class="col-xs-12">
                          <button type="button" class="btn btn-green btn-block btn-flat" onclick="UserSignIn();">Sign In</button>
                      </div>
                  </div>
                
                </form>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
    <!--/ Modal box-->
    
    
    <script>
    function UserSignIn(){
    	var loginId =  $('#loginid').val();
    	var password = $('#loginpswd').val();
    	
    	if(loginId==="admin" && password==="admin") {
    		window.location.replace("admin.jsp");
    	}
    	else if(loginId==="student" && password==="student"){
    		window.location.replace("student.jsp");
    	}
    	
    	
    }
    
    
    
    </script>