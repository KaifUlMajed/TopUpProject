<%-- 
    Document   : admin
    Created on : Mar 29, 2018, 3:33:44 PM
    Author     : Riad
--%>

<%@ page import = "java.io.*,java.util.*" %>
<% 
    String id;
    String ref;
    
if(session.getAttribute("id")!=null){
    
    id=(String)session.getAttribute("id");
    ref="profile.jsp";
}else{
    id="Login/SignUp";
    ref="LogRegServlet";
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
	<title>Shustho naki?</title>
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
	            <a href="index.jsp" class="navbar-brand"><img src="images/logomed.png" alt="logomed"></a>
	        </div>
	        <div class="collapse navbar-collapse" id="myMenu">
	            <ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp">Home</a></li>
                                        <li><a href="<%=ref%>"><%out.print(id); %></a></li>
	                
                            <%
                                if(session.getAttribute("id")!=null){
                                   out.print("<li><a href=\"LogoutProcess\">Logout</a></li>"+"\n"); 
                                }
                            %>
                        
                    </li>
				</ul>
				<input type = "text" placeholder = "Type Medicine name here..."/ style="float: left; padding: 6px;border: none;margin-top: 8px;margin-left: 16px;font-size: 17px; width: 50%;">
				<input type="button" value = "search" style="float: left; padding: 6px;border: none;margin-top: 8px;margin-left: 16px;font-size: 17px;"/>
	        </div>
	    </div>
	</nav>
	<!-- ******* Nav Bar end ******** -->	
	<br><br><br>

	<section>
    <div class="container">
       <div class="row">
        <div class="col-lg-6 col-sm-12">
            <h1>Add medicine</h1>
            
            <form action="RegProcess" method="POST">
                <input type="text" name="name" placeholder="Name"/><br>
                <input type="text" name="genericname" placeholder="Generic Name"/><br>
                <input type="text" name="type" placeholder="Type of medicine"/><br>
                <input type="text" name="manufacturer" placeholder="Manufacturer"/><br>
                <input type="number" name="price" placeholder="Price"/><br>
                <input type="number" name="quantity" placeholder="Quantity"/><br><br>
                <input type="file" name="pic" accept="image/*"><br><br>
                <input type="submit" value="Add to store"/><br>
            </form>
        </div>
        <div class="col-lg-6 col-sm-12">
            
            
            <h1>Delete Medicine </h1>
            
            <form action="LoginProcess" method="POST">
                <input type="text" name="name" placeholder="Name"/> <br>
                <input type="text" name="type" placeholder="Type"/> <br><br>
                <input type="submit" value="Delete"/><br>
            </form>                
        </div>
       </div> 
    </div>
</section>
	
	<hr>

	

	<hr>

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
	                <p>Copyright &copy; Team B, From <?php echo date("Y"); ?>.</p>
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
	<!-- ***** Footer start ***** -->



	<script src="js/jquerylib.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>


