<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
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

	<script>
	
			function LoadState()
			{
				var countryId=document.getElementById("countryId");
				var xmlHttp=new XMLHttpRequest();
				removeAllState();
				//removeAllCity();
				xmlHttp.onreadystatechange = function()
				{
					if(xmlHttp.readyState == 4)
					{
						var jsonObj=JSON.parse(xmlHttp.responseText);
						alert(jsonObj.length);
						for(i=0; i<jsonObj.length; i++)
						{
							
							var createOption=document.createElement("option");
							createOption.value=jsonObj[i].stateId;
							createOption.text=jsonObj[i].stateName;
							document.getElementById("StateId").options.add(createOption);
						}
					}
				}
				xmlHttp.open("get","stateAjax.do?countryId="+countryId.value,true);
				xmlHttp.send();
			}
			function removeAllState()
			{
				var removeState=document.getElementById("StateId").options.length;
				alert(removeState);
				for(i=removeState;i>0;i--)
				{
					document.getElementById("StateId").remove(i);
				}
			} 
			</script>
					<script type="text/javascript">
		 	function LoadCity()
			{
				var StateId=document.getElementById("StateId");
				alert("sdggndg");
				var xmlHttp=new XMLHttpRequest();
				removeAllCity();
				xmlHttp.onreadystatechange = function()
				{
					if(xmlHttp.readyState == 4)
					{
						var jsonObj=JSON.parse(xmlHttp.responseText);
						alert(jsonObj.length);
						for(i=0; i<jsonObj.length; i++)
						{
							
							var createOption=document.createElement("option");
							createOption.value=jsonObj[i].cityId;
							createOption.text=jsonObj[i].cityName;
							document.getElementById("cityId").options.add(createOption);
						}
					}
				}
				xmlHttp.open("get","cityAjax.do?stateId="+StateId.value,true);
				xmlHttp.send();
			}
			function removeAllCity()
			{
				var removeState=document.getElementById("cityId").options.length;
				alert(removeState);
				for(i=removeState;i>0;i--)
				{
					document.getElementById("cityId").remove(i);
				}
			}  

			
			
		</script>
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
<div id="search">
  <button type="button" class="close">×</button>
  <%-- <form>
    <input type="search" value="" placeholder="type keyword(s) here" />
    <button type="submit" class="btn btn-primary">SEARCH</button>
  </form> --%>
</div>


<div class="page-title" style="background-image: url('userresources/images/bg01.jpg')">
  <div class="container">
    <h1 class="entry-title">Registration</h1>
    <ol class="breadcrumb">
      <li><a href="#">Home</a></li>
      <li class="active">Registration</li>
    </ol>
  </div>
</div>

<div class="container">
  <div class="returning-customers">
    <div class="custom-heading part-heading three-slashes">
      <h2>RETURNING CUSTOMERS?</h2>
    </div>
    <p>Returning customer?<a href="#">Click here to login</a></p>
  </div>

  <div class="row">
    <div class="col-lg-6">
    <f:form action="insertRegister.do" id="form123" method="post" modelAttribute="register">
      <div >
        <h2>REGISTARTION DETAILS</h2>
      </div>
      
          
      
        <div class="form-group">
          <div class="row">
            <div class="col-xs-6">
              <label class="sr-only">First Name</label>
              <f:input type="text" class="form-control" path="firstName" placeholder="First Name"/>
            </div>
            <div class="col-xs-6">
              <label class="sr-only">Last Name</label>
              <f:input type="text" class="form-control" path="lastName" placeholder="Last Name"/>
            </div>
          </div>
        </div>
        <div class="radio">
        GENDER : 
                <label>
                  <f:radiobutton path="gender" value="male"/>
                  MALE
                </label>
                <label>
                  <f:radiobutton path="gender" value="female"/>
                  FEMALE
                </label>
              </div>
              
              <div class="form-group">Country : 
          <f:select class="form-control" path="countryVo.countryId" id="countryId" onchange="LoadState()">
            <option>-----select Country-----</option>	
            <f:options items="${countryList}" itemLabel="countryName" itemValue="countryId" />                
          </f:select>
        </div>
        
        <div class="form-group">State : 
         <f:select path="stateVo.stateId" id="StateId" onchange="LoadCity()">
         <f:option value="">-----select State-----</f:option>
          <!-- <option  class=" form-control">-----select State-----</option>	 -->
		  <%-- <f:options items="${stateList}" itemLabel="stateName" itemValue="stateId" /> --%>
		  </f:select>
</div>
        
       <div class="form-group">City:
        <f:select path="cityVo.cityId" id="cityId">
        <f:option value="">-----select City-----</f:option>
                  
      </f:select>
        </div>
         
        <div class="form-group">
          <f:input class="form-control" type="text" path="streetAddress" placeholder="Street Address"/>
        </div>
        
        <div class="form-group">
        	<div class="row">
            	<div class="col-xs-12">
              	<label class="sr-only">Post Code/ZIP</label>
              	<f:input type="text" class="form-control" path="postcode" placeholder="Post Code/ZIP"/>
            	</div>
            </div>
       </div>
          
        <div class="form-group">
          <div class="row">
            <div class="col-xs-12">
              <label class="sr-only">Email</label>
              <f:input type="text" class="form-control" path="email" placeholder="Email"/>
            </div>
            </div>
            </div>
            
             <div class="form-group">
          <div class="row">
            <div class="col-xs-12">
              <label class="sr-only" >Phone</label>
              <f:input type="text" class="form-control" path="phone" placeholder="Phone"/>
            </div>
          </div>
        </div>
        
        <div class="form-group">
          <div class="row">
            <div class="col-xs-12">
              <label class="sr-only">User Name</label>
              <input type="text" class="form-control" name="username" placeholder="User Name"/>
            </div>
          </div>
        </div>
        
        <div class="form-group">
          <div class="row">
            <div class="col-xs-12">
              <label class="sr-only">Password</label>
              <input type="text" class="form-control" name="password" placeholder="Password"/>
            </div>
          </div>
        </div>
        
        <div class="col-xs-12">
          <input class="btn btn-primary" onclick="submitForm()" type="submit" value="REGISTER">
        </div>
        
          
   </f:form>
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




  </div>

  <script src="userresources/js/owl.carousel.js"></script>
  <script src="userresources/js/countUp.min.js"></script>
  <script src="userresources/js/jquery.mmenu.min.all.js"></script>
  <script src="userresources/js/tether.min.js"></script><!-- Tether for Bootstrap -->
  <script src="userresources/js/bootstrap.js"></script>
 <!--  <script src="userresources/js/parallax.min.js"></script> -->
  <script src="userresources/js/jquery.sliphover.js"></script>
  <script src="userresources/js/lightslider.min.js"></script>
  <script src="userresources/js/lightgallery.min.js"></script>
  <script src="userresources/js/lightgallery-all.min.js"></script>

  <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
  <script src="userresources/js/gmap3.min.js"></script>
  <script src="userresources/js/jquery.elevateZoom-3.0.8.min.js"></script>

  <script src="userresources/js/main.js"></script>
  <script type="text/javascript">
  
  function submitForm(){
  	document.getElementById("form123").submit();
  }
  </script>
  
</body>
</html>
