<%-- 
    Document   : checkout
    Created on : Mar 31, 2018, 5:49:46 PM
    Author     : Kaif Ul Majed
--%>
<%@ page import = "java.io.*,java.util.*" %>
<%
    String id;
    String ref;

    if (session.getAttribute("id") != null) {

        id = (String) session.getAttribute("id");
        ref = "profile.jsp";
    } else {
        id = "Login/SignUp";
        ref = "LogRegServlet";
    }
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">        
        <title>ShusthoNaki? - Checkout</title>
    </head>
    <body>
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
                                <li><a href="cartServlet">View cart</a></li>
                                <li><a href="#">Upload Prescription</a></li>
                            </ul>
                            <%
                                if (session.getAttribute("id") != null) {
                                    out.print("<li><a href=\"LogoutProcess\">Logout</a></li>" + "\n");
                                }
                            %>

                        </li>
                    </ul>
                            
                            <form action="ProductsServlet" method="POST" style="float: left; padding: 6px;border: none;margin-top: 8px;margin-left: 16px;font-size: 17px;">      
                            <input type = "text" name="medname" placeholder = "Type Medicine name here..." style="float: left; padding: 6px;border: none;margin-top: 8px;margin-left: 16px;font-size: 17px; width: 30%;"/>
                                <select name="searchby" style="float: left; padding: 6px;border: none;margin-top: 8px;margin-left: 16px;font-size: 17px;">
                                       <option value="name">By Name</option>
                                         <option value="genericname">By Generic Name</option>
                                        <option value="type">By Type</option>
                                        
                            </select>
                            
                                <input type="submit" value="Search"/><br>
                            </form>
                            
                </div>
            </div>
        </nav>
<section>                        
    <div class="container">                    
        <h1>Billing Details</h1>
        <form action="CheckoutServlet" method="POST">
            <input type="text" name="name" placeholder="Full Name"/><br>
            <input type="text" name="street" placeholder="Street Address"/><br>
            <input type="text" name="city" placeholder="City"/>
            <input type="text" name="district" placeholder="District"/>
            <input type="text" name="zip" placeholder="Postcode/ZIP"/><br>
            <input type="text" name="phone" placeholder="Contact Number"/><br>
            <h2>Your Order Details Below</h2>
            <table>
                <tr>
                    <th>Medicine Name</th>                                                   
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
                <c:set var="total" value="1"/>
                <c:forEach items="${cart}" var="cart" varStatus="status">
                    <c:set var="med" value="${meds[status.index]}"/>
                    <tr>
                        <td><c:out value="${med.name}" /></td>
                        <td><c:out value="${cart.quantity}" /></td>
                        <td><c:out value="${Math.round(med.price * cart.quantity * 100.0)/100.0}"/></td>
                        <c:set var="total" value="${total + Math.round(med.price * cart.quantity * 100.0)/100.0}"/>
                    </tr>
                </c:forEach>
                <td>Total Price</td>
                <td></td>
                <td>${total}</td>
            </table>
            <input type="submit" value="Place Order" class="btn btn-lg"/>
        </form>
    </div>
</section>            
            
            
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
