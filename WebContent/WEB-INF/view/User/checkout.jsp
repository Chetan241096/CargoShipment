<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="" class="page-checkout">
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
    <h1 class="entry-title">Check Out</h1>
    <ol class="breadcrumb">
      <li><a href="#">Home</a></li>
      <li><a href="#">Shop</a></li>
      <li class="active">Check Out</li>
    </ol>
  </div>
</div>

<div class="container">
  <div class="returning-customers">
    <div class="custom-heading part-heading three-slashes">
      <h2>RETURNING CUSTOMERS?</h2>
    </div>
    <p>Returning customer?<a href="#">Click here to login</a></p>
    <p>Have a coupon?<a href="#">Click here to enter your code</a></p>
  </div>

  <div class="row">
    <div class="col-lg-6">
      <div class="custom-heading part-heading three-slashes">
        <h2>BILLING DETAILS</h2>
      </div>
      <form action="#">
        <div class="form-group">
          <select class="form-control">
            <option selected>Mexico</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </select>
        </div>
        <div class="form-group">
          <div class="row">
            <div class="col-xs-6">
              <label class="sr-only">First Name</label>
              <input type="text" class="form-control" placeholder="First Name">
            </div>
            <div class="col-xs-6">
              <label class="sr-only">Last Name</label>
              <input type="text" class="form-control" placeholder="Last Name">
            </div>
          </div>
        </div>
        <div class="form-group">
          <input class="form-control" type="text" name="placeholder" placeholder="Company Name">
        </div>
        <div class="form-group">
          <input class="form-control" type="text" name="placeholder" placeholder="Street Address">
        </div>
        <div class="form-group">
          <input class="form-control" type="text" name="placeholder" placeholder="Apartment, Suite, Unit ect. (Optional)">
        </div>
        <div class="form-group">
          <input class="form-control" type="text" name="placeholder" placeholder="Street Address">
        </div>
        <div class="form-group">
          <input class="form-control" type="text" name="placeholder" placeholder="Apartment, Suite, Unit ect. (Optional)">
        </div>
        <div class="form-group">
          <div class="row">
            <div class="col-xs-6">
              <label class="sr-only">State/Country</label>
              <input type="text" class="form-control" placeholder="State/Country">
            </div>
            <div class="col-xs-6">
              <label class="sr-only">Post Code/ZIP</label>
              <input type="text" class="form-control" placeholder="Post Code/ZIP">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="row">
            <div class="col-xs-6">
              <label class="sr-only">Email</label>
              <input type="text" class="form-control" placeholder="Email">
            </div>
            <div class="col-xs-6">
              <label class="sr-only">Phone</label>
              <input type="text" class="form-control" placeholder="Phone">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="row">
            <div class="col-xs-6">
              <label class="sr-only">Email</label>
              <input type="text" class="form-control" placeholder="Email">
            </div>
            <div class="col-xs-6">
              <label class="sr-only">Phone</label>
              <input type="text" class="form-control" placeholder="Phone">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="checkbox">
            <label>
              <input type="checkbox"> Create An Account?
            </label>
          </div>
        </div>
      </form>
    </div>
    <div class="col-lg-6 ship-different">
      <div class="custom-heading part-heading three-slashes">
        <a data-toggle="collapse" href="#collapseDifferentAddress" aria-expanded="false" >
          <label for="different-checkbox"><h2>SHIP TO DIFFERNT ADDRESS</h2></label>
          <input type="checkbox" id="different-checkbox">
        </a>
      </div>
      <div id="collapseDifferentAddress" class="different-collapse collapse in">
        <form action="#">
          <div class="form-group">
            <select class="form-control">
              <option selected>Mexico</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col-xs-6">
                <label class="sr-only">First Name</label>
                <input type="text" class="form-control" placeholder="First Name">
              </div>
              <div class="col-xs-6">
                <label class="sr-only">Last Name</label>
                <input type="text" class="form-control" placeholder="Last Name">
              </div>
            </div>
          </div>
          <div class="form-group">
            <input class="form-control" type="text" name="placeholder" placeholder="Company Name">
          </div>
          <div class="form-group">
            <input class="form-control" type="text" name="placeholder" placeholder="Street Address">
          </div>
          <div class="form-group">
            <input class="form-control" type="text" name="placeholder" placeholder="Apartment, Suite, Unit ect. (Optional)">
          </div>
          <div class="form-group">
            <input class="form-control" type="text" name="placeholder" placeholder="Street Address">
          </div>
          <div class="form-group">
            <input class="form-control" type="text" name="placeholder" placeholder="Apartment, Suite, Unit ect. (Optional)">
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col-xs-6">
                <label class="sr-only">State/Country</label>
                <input type="text" class="form-control" placeholder="State/Country">
              </div>
              <div class="col-xs-6">
                <label class="sr-only">Post Code/ZIP</label>
                <input type="text" class="form-control" placeholder="Post Code/ZIP">
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col-xs-6">
                <label class="sr-only">Email</label>
                <input type="text" class="form-control" placeholder="Email">
              </div>
              <div class="col-xs-6">
                <label class="sr-only">Phone</label>
                <input type="text" class="form-control" placeholder="Phone">
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col-xs-6">
                <label class="sr-only">Email</label>
                <input type="text" class="form-control" placeholder="Email">
              </div>
              <div class="col-xs-6">
                <label class="sr-only">Phone</label>
                <input type="text" class="form-control" placeholder="Phone">
              </div>
            </div>
          </div>
          <div class="form-group">
            <label class="sr-only">Example textarea</label>
            <textarea class="form-control" rows="3" placeholder="Notes About Your Order, E.G. Special For Delivery"></textarea>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="checkout-section">
    <div class="custom-heading part-heading three-slashes">
      <h2>CHECK OUT</h2>
    </div>
    <form action="#" method="post" enctype="multipart/form-data">
      <div class="table-responsive table-shopping-cart">
        <table class="table">
          <thead class="thead-inverse">
          <tr>
            <th class="text-xs-center">Product</th>
            <th class="text-xs-center">Total</th>
          </tr>
          </thead>
          <tbody>
          <tr class="row-xs-center">
            <td class="text-xs-center product-name">
              <a href="#">Madrid Weekend Bag × 1</a>
            </td>
            <td class="text-xs-center product-total">$900</td>
          </tr>
          <tr class="row-xs-center">
            <td class="text-xs-center product-name">
              <a href="#">Leather Vanity Case × 1</a>
            </td>
            <td class="text-xs-center product-total">$100</td>
          </tr>
          <tr class="row-xs-center">
            <td class="text-xs-center product-name">
              <a href="#">Cart Subtotal</a>
            </td>
            <td class="text-xs-center product-total">$1000</td>
          </tr>
          <tr class="row-xs-center">
            <td class="text-xs-center product-name">
              <a href="#">Shipping and Handling</a>
            </td>
            <td class="text-xs-center">Free Shipping</td>
          </tr>
          <tr class="row-xs-center">
            <td class="text-xs-center product-name">
              <a href="#">Order Total</a>
            </td>
            <td class="text-xs-center product-total">$1000</td>
          </tr>
          </tbody>
        </table>
      </div>
      <div class="table-responsive table-shopping-cart">
        <table class="table">
          <thead class="thead-inverse">
          <tr>
            <th class="text-xs-center">
              <div class="radio">
                <label>
                  <input type="radio" name="optionsRadios" value="option2">
                  DIRECT BANK TRANSFER
                </label>
              </div>
            </th>
          </tr>
          </thead>
          <tbody>
          <tr class="row-xs-center">
            <td class="text-xs-center">
              <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
            </td>
          </tr>
          <tr class="row-xs-center">
            <td class="text-xs-center">
              <div class="radio">
                <label>
                  <input type="radio" name="optionsRadios" value="option2">
                  <a href="#">CHEQUE PAYMENT</a>
                </label>
              </div>
            </td>
          </tr>
          <tr class="row-xs-center">
            <td class="text-xs-center">
              <div class="radio">
                <label>
                  <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                  <a href="#">PAYPAL</a>
                </label>
              </div>
            </td>
          </tr>
          <tr class="row-xs-center">
            <td class="text-xs-center">
              <button class="btn btn-primary">PLACE ORDER</button>
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </form>
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
