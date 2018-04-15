<%@ include file="header.jsp" %> 
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
                        <img src="images/slider-1st.jpg" alt=""  class="img-responsive">
                        <div class="carousel-caption">
                            <h3>We Care For Your Health</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/child.jpg" alt="" class="img-responsive">
                        <div class="carousel-caption">

                            <h3> Delivering medicine right to your door-step</h3>

                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider-2nd.jpg" alt=""  class="img-responsive" >
                        <div class="carousel-caption">
                            <h3>Fast and Quality Delivery</h3>
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
                    <h1>Explore our vast range of Products</h1>
                </div>
            </div>
        </div>
        <div class="container" id="customer">
            <div class="row">

                <div class="col-lg-4 col-md-3 col-sm-6 col-xs-6 img">
                    <a href="ProductsServlet"><img src="images/drug-icon.png" alt=""  class="img-responsive"></a>
                </div>
                <div class="col-lg-4 col-md-3 col-sm-6 col-xs-6">
                    <a href="ProductsServlet"><img src="images/syringe-icon.png" alt=""  class="img-responsive"></a>
                </div>
                <div class="col-lg-4 col-md-3 col-sm-6 col-xs-6">
                    <a href="ProductsServlet"><img src="images/diet-icon.png" alt=""  class="img-responsive"></a>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- ***** Title and description section end***** -->

<%@ include file="footer.jsp" %> 

</html>

