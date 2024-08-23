<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="" class="page-shopping-cart">
<head>

  <meta charset="utf-8">
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>HTML</title>

  <link rel="apple-touch-icon" href="apple-touch-icon.png">
  <!-- Place favicon.ico in the root directory -->

  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,600italic,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>

  <link rel="stylesheet" href="userresources/css/font-awesome.css" />
  <link rel="stylesheet" href="userresources/css/owl.carousel.css" />
  <link rel="stylesheet" href="userresources/css/jquery.mmenu.all.css" />
  <link rel="stylesheet" href="userresources/css/lightslider.min.css" />
  <link rel="stylesheet" href="userresources/css/lightgallery.css" />
  <link rel="stylesheet" href="userresources/css/owl.theme.default.min.css" />

  <!-- Slider -->
  <link rel="stylesheet" href="userresources/css/settings.css" />
  <link rel="stylesheet" href="userresources/css/slider.css" />

  <link rel="stylesheet" href="userresources/css/main.css">

  <script src="userresources/js/jquery.js"></script>

  <!-- REVOLUTION JS FILES -->
  <script type="text/javascript" src="userresources/js/jquery.themepunch.tools.min.js"></script>
  <script type="text/javascript" src="userresources/js/jquery.themepunch.revolution.min.js"></script>

  <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
  <script type="text/javascript" src="userresources/js/revolution.extension.actions.min.js"></script>
  <script type="text/javascript" src="userresources/js/revolution.extension.carousel.min.js"></script>
  <script type="text/javascript" src="userresources/js/revolution.extension.kenburn.min.js"></script>
  <script type="text/javascript" src="userresources/js/revolution.extension.layeranimation.min.js"></script>
  <script type="text/javascript" src="userresources/js/revolution.extension.migration.min.js"></script>
  <script type="text/javascript" src="userresources/js/revolution.extension.navigation.min.js"></script>
  <script type="text/javascript" src="userresources/js/revolution.extension.parallax.min.js"></script>
  <script type="text/javascript" src="userresources/js/revolution.extension.slideanims.min.js"></script>
  <script type="text/javascript" src="userresources/js/revolution.extension.video.min.js"></script>

</head>
<body>

  <div id="page" class="hfeed site">
    
<nav id="mobile-menu">
  <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#about">About us</a>
      <ul>
        <li><a href="#about/history">History</a></li>
        <li><a href="#about/team">The team</a>
          <ul>
            <li><a href="#about/team/management">Management</a></li>
            <li><a href="#about/team/sales">Sales</a></li>
            <li><a href="#about/team/development">Development</a></li>
          </ul>
        </li>
        <li><a href="#about/address">Our address</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</nav>
<jsp:include page="header1.jsp"></jsp:include>
<div id="search">
  <button type="button" class="close">×</button>
  <form>
    <input type="search" value="" placeholder="type keyword(s) here" />
    <button type="submit" class="btn btn-primary">SEARCH</button>
  </form>
</div>

<div class="page-title" style="background-image: url('userresources/images/bg01.jpg')">
  <div class="container">
    <h1 class="entry-title">Shopping Cart</h1>
    <ol class="breadcrumb">
      <li><a href="#">Home</a></li>
      <li><a href="#">Shop</a></li>
      <li class="active">Shopping Cart</li>
    </ol>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-xs-12">
      <form action="#" method="post" enctype="multipart/form-data">
        <div class="table-responsive table-shopping-cart">
        <table class="table">
          <thead class="thead-inverse">
          <tr>
            <th class="text-center"></th>
            <th class="text-xs-right"></th>
            <th class="text-left">Product Name</th>
            <th class="text-right">Price</th>
            <th class="text-left">Quantity</th>
            <th class="text-right">Total</th>
          </tr>
          </thead>
          <tbody>
            <tr class="row-xs-center">
              <td class="text-xs-left product-remove">
                  <i class="fa fa-close"></i>
              </td>
              <td class="text-xs-right product-thumbnail">
                <a href="#">
                  <img src="userresources/images/product_03.jpg" alt="Brown Paperbox" title="Brown Paperbox">
                </a>
              </td>
              <td class="product-name">
                <a href="#">Brown Paperbox</a>
              </td>
              <td class="product-price">$122.00</td>
              <td class="product-qty">
                <div class="input-group btn-block" style="">
                  <input type="number" class="form-control" min="1" value="1">
                </div>
              </td>
              <td class="text-right product-total">$122.00</td>
            </tr>
            <tr class="row-xs-center">
              <td class="text-xs-left product-remove">
                <i class="fa fa-close"></i>
              </td>
              <td class="text-xs-right product-thumbnail">
                <a href="#">
                  <img src="userresources/images/product_04.jpg" alt="Brown Paperbox" title="Brown Paperbox">
                </a>
              </td>
              <td class="product-name">
                <a href="#">Brown Paperbox</a>
              </td>
              <td class="product-price">$122.00</td>
              <td class="product-qty">
                <div class="input-group btn-block" style="">
                  <input type="number" class="form-control" min="1" value="1">
                </div>
              </td>
              <td class="text-right product-total">$122.00</td>
            </tr>
            <tr>
              <td colspan="6" class="actions">

                <div class="coupon pull-lg-left input-group">
                  <label class="sr-only" for="coupon_code">Coupon:</label>
                  <input type="text" name="coupon_code" class="form-control" id="coupon_code" value="" placeholder="Enter Coupon Code">
                  <input type="submit" class="btn btn-primary" name="apply_coupon" value="APPLY COUPON">
                </div>

                <div class="cart-actions pull-lg-right">
                  <input type="button" class="btn btn-secondary" name="update_cart" value="UPDATE CART">
                  <input type="submit" class="btn btn-primary" name="update_cart" value="PROCEED TO CHECKOUT">
                </div>

                <input type="hidden">
                <input type="hidden">
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      </form>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-6">
      <div class="custom-heading part-heading three-slashes">
        <h2>CALCULATE SHIPPING</h2>
      </div>
      <fieldset class="form-group">
        <select class="form-control" id="exampleSelect1">
          <option>Mexico</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </fieldset>
      <fieldset class="form-group">
        <input type="text" class="form-control" placeholder="State/Country">
      </fieldset>
      <fieldset class="form-group">
        <input type="text" class="form-control" placeholder="Post Code/ZIP">
      </fieldset>

    </div>
    <div class="col-lg-6">
        <div class="custom-heading part-heading three-slashes">
          <h2>CART TOTALS</h2>
        </div>
      <table class="table table-reflow table-responsive table-sm table-cart-totals">
        <thead>
        <tr>
          <th>Cart Subtotal:</th>
          <th>Shipping and Handling:</th>
          <th>Order Total:</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td scope="row" class="product-price"> $1000.00</td>
          <td>Free Shipping</td>
          <td class="product-total">$1000.00</td>
        </tr>
        </tbody>
      </table>

    </div>
  </div>
</div>


<!-- ADVISORY
================================================== -->
<section class="advisory">
  <div class="container">
    <div class="row">
      <div class="col-md-10">
        <h2>Not sure which solution fits you business needs?</h2>
      </div>
      <div class="col-md-2">
        <button type="button" class="btn btn-primary">CONTACT US<i class="fa fa-map-marker"></i></button>
      </div>
    </div>
  </div>
</section>

<jsp:include page="footer.jsp"></jsp:include>


  </div>

  <script src="userresources/js/owl.carousel.js"></script>
  <script src="userresources/js/countUp.min.js"></script>
  <script src="userresources/js/jquery.mmenu.min.all.js"></script>
  <script src="userresources/js/tether.min.js"></script><!-- Tether for Bootstrap -->
  <script src="userresources/js/bootstrap.js"></script>
  <script src="userresources/js/parallax.min.js"></script>
  <script src="userresources/js/jquery.sliphover.js"></script>
  <script src="userresources/js/lightslider.min.js"></script>
  <script src="userresources/js/lightgallery.min.js"></script>
  <script src="userresources/js/lightgallery-all.min.js"></script>

  <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
  <script src="userresources/js/gmap3.min.js"></script>
  <script src="userresources/js/jquery.elevateZoom-3.0.8.min.js"></script>

  <script src="userresources/js/main.js"></script>
</body>
</html>
