<%-- 
    Document   : header
    Created on : Apr 13, 2018, 5:06:56 PM
    Author     : Kaif Ul Majed
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
                            <li><a href="CartServlet">View cart</a></li>
                            <li><a href="#">Upload Prescription</a></li>
                        </ul>
                        <%
                            if (session.getAttribute("id") != null) {
                                out.print("<li><a href=\"LogoutProcess\">Logout</a></li>" + "\n");
                            }
                        %>

                    </li>
                </ul>

                <form action="ProductsServlet" method="POST" style="width: 50%;margin-top: 10px">      
                    <input type = "text" name="medname" placeholder = "Type Medicine name here..." style="float: left;border: none;font-size: 17px; padding:7px"/>
                    <select name="searchby" style="float: left;margin-left: 16px;border: none;font-size: 17px; padding: 8px">
                        <option value="name">By Name</option>
                        <option value="genericname">By Generic Name</option>
                        <option value="type">By Type</option>
                    </select>
                    <button type="submit" class="btn btn-default" value="Search" style="margin-left: 10px;">Search</button>
                </form>


            </div>
        </div>
    </nav>