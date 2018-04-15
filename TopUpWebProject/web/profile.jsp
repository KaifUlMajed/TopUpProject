<%-- 
    Document   : profile
    Created on : Mar 28, 2018, 3:49:39 PM
    Author     : Riad
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %> 
<div class="container-fluid" style="background-image: url(images/cart.png)">
    <div class="container"> 
        <div class="well">
            <div class ="row">
                <h1 class="text-center">Welcome to your profile</h1>
                <h2 class="text-center" style="text-decoration:underline">Order History</h2>
                <br>
                <c:forEach items="${orders}" var="order" varStatus="status">
                    <div class="col-xs-7 col-xs-offset-2 ">
                        
                        <table class="table table-bordered">

                            <thead class="bg-primary" >
                            <th>Delivered to</th>
                            <th>Delivered on</th>
                            <th>Total Price</th>
                            </thead>
                            <tbody class="tpro">
                                <tr>
                                    <td><c:out value="${order.address}"/></td>
                                    <td><c:out value="${order.date}"/></td>
                                    <td><c:out value="${order.price}"/></td>
                                </tr>
                            </tbody>
                        </table>
                                <h1>Order Details</h1>
                        <table class="table table-condensed table-hover">
                            <thead class="bg-primary">
                            <th>Medicine No.</th>
                            <th>Quantity</th>
                            </thead>
                            <c:forEach items="${meds[status.index]}" var="med" varStatus="status1">
                                <tbody class="tpro">
                                    <tr> 
                                        <td><c:out value="${med.name}"/></td>
                                        <td><c:out value="${items.get(status.index).get(status1.index).quantity}"/></td>
                                    </tr>
                                </tbody>
                            </c:forEach>            
                        </table>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %> 
</html>
