<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="" class="page-contact">
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

  <script src="js/jquery.js"></script>

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
	
			function Loadsubcategory()
			{
				var categoryId=document.getElementById("categoryId");
				var xmlHttp=new XMLHttpRequest();
				removeAllSubCategory();
				
				xmlHttp.onreadystatechange = function()
				{
					if(xmlHttp.readyState == 4)
					{
						alert(xmlHttp.responseText);		
						console.log();
						var jsonObj=JSON.parse(xmlHttp.responseText);
						for(i=0; i<jsonObj.length; i++)
						{
							
							var createOption=document.createElement("option");
							createOption.value=jsonObj[i].subCategoryId;
							createOption.text=jsonObj[i].subCategoryName;
							document.getElementById("subCategoryId").options.add(createOption);
						}
					}
				}
				xmlHttp.open("get","subCategoryAjax.do?categoryId="+categoryId.value,true);
				xmlHttp.send();
			}
			function removeAllSubCategory()
			{
				var removeSubCategory=document.getElementById("subCategoryId").options.length;
				alert(removeSubCategory);
				for(i=removeSubCategory;i>0;i--)
				{
					document.getElementById("subCategoryId").remove(i);
				}
			} 
			</script>

</head>
<body>

  <div id="page" class="hfeed site">
    
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
    <h1 class="entry-title">PostItem</h1>
    <ol class="breadcrumb">
      <li><a href="#">Home</a></li>
      <li class="active">PostItem</li>
    </ol>
  </div>
</div>

<div id="map-canvas" class="thememove-gmaps" data-address="40.7590615,-73.969231" data-height="480" data-width="100%" data-zoom_enable="" data-zoom="16" data-map_type="roadmap" data-map_style="style1"></div>


<section class="info-contact">
  <div class="container">
    <div class="row">

            <div class="contact-content col-lg-9">

        <div class="custom-heading part-heading three-slashes">
          <h2>FILL POST ITEM FORM</h2>
        </div>

        <div class="contact-form">
        

          <f:form action="insertPostItem.do" method="post" novalidate="novalidate" modelAttribute="postitem">
            <div class="row">
             
              <div class="form-group">Category Name : 
          <f:select class="form-control" path="CategoryVo.categoryId" id="categoryId" onchange="Loadsubcategory()">
            <option>-----select Category-----</option>	
            <f:options items="${categoryList}" itemLabel="categoryname" itemValue="categoryId" />                
          </f:select>
        </div>
        
         <div class="form-group">Sub-Category Name: 
          <f:select class="form-control" path="subCategoryVo.subCategoryId" id="subCategoryId">
            <option>-----select SubCategory-----</option>	              
          </f:select>
        </div>
        
              <div class="col-lg-6">
                <f:input class="form-control" type="text" path="itemName" size="40" aria-required="true" aria-invalid="false" placeholder="ItemTitle" />
              </div>
              <div class="col-xs-12">
                <f:textarea class="form-control"  path="itemDescription" cols="40" rows="4" aria-invalid="false" placeholder="ItemDescription"/>
              </div>
              <div class="col-lg-6">
                <f:input class="form-control" type="text" path="itemCount" size="40" aria-required="true" aria-invalid="false" placeholder="ItemCount" />
              </div>
              <div class="col-xs-12">
                <input class="btn btn-primary" type="submit" value="SUBMIT">
              </div>
            </div>
          </f:form>

        </div>
      </div>
    </div>
  </div>
</section>

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
