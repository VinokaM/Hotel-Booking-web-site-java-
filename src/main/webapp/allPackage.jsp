<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>YOUR HOTEL</title>

<style>
      *{
      margin: 0px;
      padding: 0px;
      box-sizing:border-box;
      }
      
      body{
      	background-color: #f0f0f0;
      }
      .card-container{
      	display:flex;
      	justify-content:center;
      	flex-wrap:wrap;
      	margin-top:100px;
      }
      
      .card{
      	width:350px;
      	height:450px;
      	background-color:#f0f0f0;
      	border-radius:10px;
      	overflow:hidden;
      	box-shadow:0px 2px 4px rgba(0,0,0,0.2);
      	margin:20px;
      }
      
      .card img{
      	width:100%;
      	height:auto;
      }
      .card h3{
      margin:10px;
      font-size:25px;
      }
      .card p{
      margin:10px;
      font-size:15px;
      }
      .card a{
      margin:20px;
      }
      .card-contant .btn{
      display: inline-block;
      padding:8px;
      background-color:#333;
      text-decoration:none;
      border-radius:5px;
      color:#ffff;
      transition:0.5s;
      align-items: flex-end;
      }
      .btn:hover{
      background-color:#0FB80A;
      }
     
      
    </style>
    <link rel="stylesheet" href="style.css">
</head>
<body>

	<header class="default-header">
				<nav class="navbar navbar-expand-lg  navbar-light">
					<div class="container">
						  <a class="navbar-brand" href="#">
							  <img src="img/logo.jpg" width="110" height="100" >
						  </a>
						  <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
							<ul class="navbar-nav">
								<li><a href="example.html">Home</a></li>
								<li><a href="./Pages-inside/blog.html">Transfers</a></li>
								<li><a href="#portfolio">Select a Tour</a></li>
								<li><a href="#service">Hotels</a></li>
								<li><a href="./Pages-inside/About.html">Contact Us</a></li>
								<li><form target="_blank"  action="" method="get" class="form-inline">
										<input class="form-control" type="text" placeholder="Search.." name="search">
										<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" ></i></button>
									</form>
								</li>
							</ul>
                            <a href="SignUp.html" class="signup-btn text-uppercase">Sign Up</a>
                            <a href="SignUp.html" class="signup-btn text-uppercase">login</a>
						  </div>						
					</div>
				</nav>
			</header>
	
    <div class="card-container">
    
    	<div class="card">
    	<img src="img/araliya.jpg">
    	<div class="card-contant">
    	<h3>Araliya Hotel</h3>
    	<p>
    	Being a flagship conglomerate that envisions to revolutionise the travel and hospitality industry in Sri Lanka, Araliya Hotels & Resorts has conceptualised and masterfully crafted some of the best hotels in Sri Lanka. 
    	</p>
    	
    	<c:url value="insertData.jsp" var="araliyaBook">
		
			<c:param name="hname" value="Araliya-Colombo"/>
		
		</c:url>
	
		
    	<a href="${araliyaBook}" class="btn">Book Now
    	</a>
    	
    	</div>
    	</div>
    	
    	<div class="card">
    	<img src="img/marino.jpg">
    	<div class="card-contant">
    	<h3>Marino Hotel-Colombo</h3>
    	<p>
    	Whether it is for business or pleasure, make your visit truly exceptional and memorable by staying at Hotel Marino Beach that offers an experience with a blend of luxury and modernity that you wish would last forever.
    	</p>
    	
    	<c:url value="insertData.jsp" var="marinoBook">
		
			<c:param name="hname" value="Marino Hotel-Colombo"/>
		
		</c:url>
	
    	<a href="${marinoBook}" class="btn">Book Now
    	</a>
    	</div>
    	</div>
    	
    	<div class="card">
    	<img src="img/cinnamon.jpg">
    	<div class="card-contant">
    	<h3>OYO- Nuwaraeliya</h3>
    	<p>
    	Get all that Nuwara Eliya has to offer and all of its nearby adventures with a stay at OYO Rest. Only minutes from the city center, this strategic location ensures that guests can quickly and easily reach many local points of interest.
    	</p>
    	
    	<c:url value="insertData.jsp" var="oyoBook">
		
			<c:param name="hname" value="OYO- Nuwaraeliya"/>
		
		</c:url>
	
    	<a href="${oyoBook}" class="btn">Book Now
    	</a>
    	</div>
    	</div>
    	
    	<div class="card">
    	<img src="img/shangrila.jpg">
    	<div class="card-contant">
    	<h3>Shangri La-Hambanthota</h3>
    	<p>
    	Enjoy something extra as a member. Earn status when you stay, dine, or shop with us. Customise your stay with a wide range of offerings to elevate your journey. Staycation Offers. Shangri-La Circle Benefit. Safety. Health.
    	</p>
    	
    	<c:url value="insertData.jsp" var="shangriBook">
		
			<c:param name="hname" value="Shangri La-Hambanthota"/>
		
		</c:url>
	
    	<a href="${shangriBook}" class="btn">Book Now
    	</a>
    	</div>
    	</div>
    	
    	<div class="card">
    	<img src="img/cinnamon.jpg">
    	<div class="card-contant">
    	<h3>Cinnamon Lakeside-Colombo</h3>
    	<p>
    	Ranked the Best Five Star City Hotel by Sri Lanka Tourism, Cinnamon Lakeside Colombo is the epitome of indulgence and elegance. Overlooking the tranquil Beira Lake, the hotel offers completely refurbished rooms
    	</p>
    	
    	<c:url value="insertData.jsp" var="cinnamonBook">
		
			<c:param name="hname" value="Cinnamon Lakeside-Colombo"/>
		
		</c:url>
	
    	<a href="${cinnamonBook}" class="btn">Book Now
    	</a>
    	</div>
    	</div>
    	
    	<div class="card">
    	<img src="img/kingsbury.jpg">
    	<div class="card-contant">
    	<h3>The Kingsbury-Colombo</h3>
    	<p>
    	Located in the capital city of Colombo, just 35 km away from the Bandaranaike International Airport, The Kingsbury Hotel is the most sought-after five-star hotel, ideal for both business and leisure travelers.
    	</p>
    	
    	<c:url value="insertData.jsp" var="kingsburyBook">
		
			<c:param name="hname" value="The Kingsbury-Colombo"/>
		
		</c:url>
	
    	<a href="${kingsburyBook}" class="btn">Book Now
    	</a>
    	</div>
    	</div>
    	
    	
    </div>
    
    <footer class="footer-area ">
						<div class="col1">
							<div class="single-footer-widget">
								<h6>About Us</h6>
								<p>
									We provide tour itineraries so you may travel in the utmost comfort. 
			                        Allow yourself to immerse yourself in Sri Lanka's beauty, culture, and events. 
			                        Enjoy your vacation in Sri Lanka.
								</p>
							</div>
						</div>
						<div class="col2">
							<div class="single-footer-widget">
								<h6>Newsletter</h6>
								<p>Stay update with our latest</p>
								<div>
						         <form target="_blank"  action="" method="get" class="form-inline">
										<input class="form-control" name="EMAIL" placeholder="Enter Email" type="email">
			                            	<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
								
									</form>
								</div>
							</div>
						</div>						
						<div class="col3">
							<div class="single-footer-widget">
								<h6>Follow Us</h6>
								<p>Let us be social</p>
								<div class="footer-social d-flex align-items-center">
									<a href="#"><img src="img/instagram.png" width="20" height="20"></a>
									<a href="#"><img src="img/Facebook.png" width="20" height="20"></a>
			                        <a href="#"><img src="img/twitter.png" width="20" height="20"></a>
								</div></br>
			                    <h6>contact Us</h6>
			                    <p>123,ABC Road,Malabe</p>
			                    <p>+93112233445</p>
							</div>
						</div>							
			</footer>
    
    
  </body>
</html>