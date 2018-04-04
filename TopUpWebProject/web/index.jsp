<%-- 
    Document   : index
    Created on : Mar 28, 2018, 3:31:14 PM
    Author     : Riad
--%>
<%@ page import = "java.io.*,java.util.*" %>
<%
    String id;
    String ref;

    if (session.getAttribute("id") != null) {

        id = (String) session.getAttribute("id");
        ref = "ProfileServlet";
    } else {
        id = "Login/SignUp";
        ref = "LogRegServlet";
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
	<title>Shustho Naki?</title>
        
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
	            <a href="index.jsp" class="navbar-brand"><img src="images/logomed.png" alt="logomed"></a>
	        </div>
	        <div class="collapse navbar-collapse" id="myMenu">
	            <ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp">Home</a></li>
                                        <li><a href="<%=ref%>"><%out.print(id); %></a></li>
	                <li class="dropdown">
	                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Order Now <span class="caret"></span>
	                    </a>
	                    <ul class="dropdown-menu">
                                <li><a href="ProductsServlet">Products</a></li>
	                        <li><a href="#">Add to cart</a></li>
	                        <li><a href="#">Upload Prescription</a></li>
	                    </ul>
                            <%
                                if(session.getAttribute("id")!=null){
                                   out.print("<li><a href=\"LogoutProcess\">Logout</a></li>"+"\n"); 
                                }
                            %>
                        
                    </li>
				</ul>
                            
				<input type = "text" placeholder = "Type Medicine name here..." id="searchbox">
                                <input type="button" class="btn btn-default" value = "search" id="stext">
                            
	        </div>
	    </div>
	</nav>
	<!-- ******* Nav Bar end ******** -->	
	<br><br><br>

	<!-- ******* Slider start ******** -->
	<section>
	    <div class="container-fluid">
	        <div class="row">
                <div id="mainSlider" class="carousel slide" data-ride="carousel" data-interval="2200">
                    <ol class="carousel-indicators">
                        <li data-target="#mainSlider" data-slide-to="0" class="active"></li>
                        <li data-target="#mainSlider" data-slide-to="1"></li>
                        <li data-target="#mainSlider" data-slide-to="2"></li>
                        
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="images/slider-1st.jpg" alt="" class="img-responsive">
                            <div class="carousel-caption">
                            <h1>WE CARE FOR YOUR HEALTH</h1>
                        </div>
                        </div>
                        <div class="item">
                            <img src="images/child.jpg" alt="" class="img-responsive">
                            <div class="carousel-caption">
                            <h1>WE CARE FOR YOUR HEALTH</h1>
                        </div>
                        </div>
                        <div class="item">
                            <img src="images/slider-2nd.jpg" alt="" class="img-responsive" >
                            <div class="carousel-caption">
                            <h1>WE CARE FOR YOUR HEALTH</h1>
                        </div>
                        </div>
                        
                    </div>
                    <a href="#mainSlider" class="left carousel-control" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a href="#mainSlider" class="right carousel-control" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
	        </div>
	    </div>
	</section>
	<!-- ******* Slider end ******** -->
        
	<!-- ***** Title and description section start***** -->
	<div class="parallax">
        <section class="title-section">
            
		<div class="container">
			<div class="row">
                            
                            <div class="col-2"></div>
                            <div class="col-8 text-center" id="review">
                                <h1>What's Our Client Say?? </h1>
                            </div>
			</div>
                </div>
            <div class="container" id="customer">
                    <div class="row">
                       
                        <div class="col-4 ">
                            
                            <p>Lorem ipsum dolor sit amet,consectetur adipiscing elit. 
                                Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. <br>Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
</p>
                        </div>
                        <div class="col-4 ">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
</p>
                        </div>
                        <div class="col-4 ">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
</p>
                        </div>
                        </div>
                    </div>
        </section>
		</div>
	
	<!-- ***** Title and description section end***** -->
	
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

