<%-- 
    Document   : loginregistration
    Created on : Mar 24, 2018, 5:21:04 PM
    Author     : Riad
--%>
<%@ page import = "java.io.*,java.util.*" %>
<%
String msg=(String)session.getAttribute("registration");
if(msg==null){
    msg=" ";
}
String s=(String)session.getAttribute("loginstatus");
if(s==null){
    s=" ";
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
        
        <title>Shustho naki? - Login/SignUp</title>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
</head>
<body>
    
	<!-- ******* Nav Bar start ******** -->
	<nav class="header navbar navbar-default navbar-fixed-top">
	    <div class="container-fluid">
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myMenu">
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	            <a href="index.php" class="navbar-brand"><img src="images/logomed.png" alt="logomed"></a>
	        </div>
	        <div class="collapse navbar-collapse" id="myMenu">
	            <ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="loginregistration.jsp">Login/SignUp</a></li>
	                <li class="dropdown">
	                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Order Now <span class="caret"></span>
	                    </a>
	                    <ul class="dropdown-menu">
	                        <li><a href="#">Add to cart</a></li>
	                        <li><a href="#">Upload Prescription</a></li>
	                    </ul>
						
                    </li>
				</ul>
				<input type = "text" placeholder = "Type Medicine name here..." id="searchbox">
                                <input type="button" class="btn btn-default" value = "search" id="stext">  
                </div>
	    </div>
	</nav>
	<!-- ******* Nav Bar end ******** -->	
	<br><br><br>

        <section>
        <div class="container-fluid" style="background-image:url(images/reg.jpg)">
    <div class="container" id="reg">
        <div class="well">
  <h2 id="registration">Registration form</h2>
  <h2><%=msg%></h2>
  <%session.setAttribute("registration", null);%>
  <form class="form-horizontal" action="RegProcess" id="reg" method="POST">
     <div class="form-group">
      <label class="control-label col-xs-2" for="pwd">Name:</label>
      <div class="col-xs-7">          
        <input type="text" class="form-control" placeholder="Enter Name" name="username">
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-xs-7">
        <input type="email" class="form-control" placeholder="Enter email" name="email">
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-xs-7">          
        <input type="password" class="form-control" placeholder="Enter password" name="password">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Re-enter Password:</label>
      <div class="col-xs-7">          
        <input type="password" class="form-control" placeholder="Re-enter password" name="repass">
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Address:</label>
      <div class="col-xs-7">          
        <input type="text" class="form-control" placeholder="Enter Address" name="address">
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Mobile no:</label>
      <div class="col-xs-7">          
        <input type="text" class="form-control"  placeholder="Mobile no." name="mobile">
      </div>
    </div>
      
    
    <div class="form-group">        
      <div class="col-xs-11 text-center">
        <button type="submit" class="btn btn-primary" value="Register">Register</button>
      </div>
    </div>
  </form>
    </div>
    </div>

        
        <div class="container">
            <div class="well-lg">
                <h2 id="registration">Login</h2>
                <h2><%=s%></h2>
                <form class="formhorizontal" action="LoginProcess" method="POST" id="reg">
                   <div class="form-group" id="signup">
      <label class="control-label col-sm-2" for="pwd">Name:</label>
      <div class="col-xs-7">          
          <input type="text" class="form-control" placeholder="Enter Name" name="username"> 
      </div>
    </div>
                    <br>
                    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-xs-7">          
        <input type="password" class="form-control" placeholder="Enter password" name="password" id="pass">
      </div>
    </div>
                    <br><br>
                    <div class="form-group">        
      <div class="col-xs-11 text-center">
        <button type="submit" class="btn btn-primary" value="Register">Login</button>
      </div>
    </div>
                </form>
            </div>
        </div>
        </div>
        </section>
     


	<!-- ***** Big footer start ***** -->
	<section class="big-footer-section">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
	                <h3>Emergency Contact</h3>
	                <hr>
	                <span><b>Flat: </b>A1</span><br>
	                <span><b>House: </b>37</span><br>
	                <span><b>Road: </b>27</span><br>
	                <span>Block A, Banani</span><br>
	                <span>Dhaka-1213</span><br>
	                <span class="glyphicon glyphicon-phone"></span> : +8801511111111<br>
	                <span class="glyphicon glyphicon-envelope"></span> : mother.child@gmail.com<br>
	            </div>
	            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
	                <h3>Why choose us</h3>
	                <hr>
	                <p>Some content goes here about why choose us
	                    Some content goes here about why choose us
	                    Some content goes here about why choose us
	                </p>
	                <p>Some content goes here about why choose us
	                    Some content goes here about why choose us
	                </p>
	            </div>
	            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
	                <h3>Popular links</h3>
	                <hr>
	                <ul class="popular-link">
	                    <li><a href="index.jsp">Home</a></li>
	                    <li><a href="about.jsp">About us</a></li>
	                    <li><a href="contact.jsp">Contact us</a></li>
	                    <li><a href="">FAQ</a></li>
	                    <li><a href="https://www.google.com.bd/maps/place/BRAC+University/@23.7801728,90.4050027,17z/data=!3m1!4b1!4m5!3m4!1s0x3755c7715a40c603:0xec01cd75f33139f5!8m2!3d23.7801679!4d90.4071914?hl=en" target="_blank">Site map</a></li>
	                </ul>
	            </div>
	            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
	                <h3>Subscribe with us</h3>
	                <hr>
	                <form action="" method="post">
	                    <div class="form-group">
	                        <input type="email" class="form-control" placeholder="Email">
	                    </div>
	                    <div class="form-group">
	                        <textarea name="" class="form-control" placeholder="Your comment" id="" cols="" rows="" style="resize: none;"></textarea>
	                    </div>
	                    <div class="form-group">
	                        <input type="submit" name="btn" value="Subscribe" class="btn btn-success btn-block">
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</section> 
	<!-- ***** Big footer end ***** -->

	<!-- ***** Footer start ***** -->
	<section class="footer-section">
	    <div class="container">
	        <div class="row">
	            <div class="col-sm-6 col-xs-6">
	                <p>Copyright &copy; Team B.</p>
	            </div>
	            <div class="col-sm-6 col-xs-6">
	                <div class="social-link" style="float: right;" >
	                    <a href="" class="fb"><i class="fa fa-3x fa-facebook-square"></i></a>
	                    <a href="" class="yt"><i class="fa fa-3x fa-youtube-square"></i></a>
	                    <a href="" class="gp"><i class="fa fa-3x fa-google-plus-square"></i></a>
	                </div> 
	            </div>
	        </div>
	    </div>
	</section>
	<!-- ***** Footer end ***** -->
    <script src="js/jquerylib.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>


