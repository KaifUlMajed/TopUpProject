<%-- 
    Document   : cartView
    Created on : Mar 30, 2018, 8:25:57 PM
    Author     : Riad
--%>

<%-- 
    Document   : products
    Created on : Mar 29, 2018, 4:53:17 PM
    Author     : Kaif Ul Majed
--%>

<%@ include file="header.jsp" %> 	
<br><br><br>
<div class="container-fluid" style="background-image:url(images/cart.png)">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 id="carthead">List of medicines in your cart</h1>
            </div>
        </div>
    </div>
    <section>
        <div class ="container">
            <div class="row">

                <div class ="col-lg-7" >

                    <table class="table table-bordered table-striped" id="cart">
                        <thead>
                            <tr class="bg-primary">
                                <th>Medicine Name</th>                                                   
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Options</th>
                            </tr>
                        </thead>
                        <c:set var="total" value="1"/>
                        <c:forEach items="${cart}" var="cart" varStatus="status">
                            <c:set var="med" value="${meds[status.index]}"/>
                            <tr>
                                <td><c:out value="${med.name}" /></td>
                            <form method="POST" action="CartUpdateServlet">
                                <td>
                                    <input type="number" name="updQuantity" placeholder=<c:out value="${cart.quantity}" /> >
                                    <input type="number" name="updCart" value="${cart.cart_id}" hidden>
                                </td>
                                <td>
                                    <c:out value="${Math.round(med.price * cart.quantity * 100.0)/100.0}"/>
                                </td>
                                <c:set var="total" value="${total + Math.round(med.price * cart.quantity * 100.0)/100.0}"/>
                                <td>
                                    <input type="submit" value="Update">
                            </form>
                            <form action="CartDeleteServlet" method="POST">
                                <input type="number" name="delCart" value="${cart.cart_id}" hidden>
                                <input type="submit" value="Delete">
                            </form>
                            </td>
                            </tr>
                        </c:forEach>
                        <td>Total Price</td>
                        <td></td>
                        <td>${total}</td>
                    </table>
                </div>


            </div>
        </div>
    </section>
    <section>
        <div class="container" id="continue">

            <div class="col-6">
                <a href="ProductsServlet" class="btn btn-primary">Continue Shopping</a>
                <a href="CheckoutServlet" class="btn btn-primary">Proceed to Checkout</a>

            </div>
        </div>
    </section>
</div>




<%@ include file="footer.jsp" %> 
</html>