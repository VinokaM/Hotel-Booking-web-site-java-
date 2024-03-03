<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>enter your details</title>

<style type="text/css">
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body{
  background-image:url(img/sea.jpg);
  -webkit-background-size: cover;
  background-size:cover;
  background-repeat:no-repeat;
  background-position:center center;
  height:100%;
  color: #fff;
  line-height: 1.8;
}

a{
  text-decoration: none;
}

#container{
  margin: 30px auto;
  max-width: 430px;
  padding: 20px;
}

.form-wrap{
  background-color: #fff;
  padding: 15px 25px;
  color: #333;
  border-top: 4px solid #FFC300;
  border-radius: 05px;
}

.form-wrap h3{
  text-align: center;
}

.form-wrap .form-group{
  margin-top: 15px;
}

.form-wrap .form-group input{
  width: 100%;
  padding: 10px;
  border: #BDBDBB  1px solid;
  border-radius: 5px;
}

.form-wrap button{
  display: block;
  width: 100%;
  padding: 10px;
  margin-top: 20px;
  background-color: #FFC300;
  color: #fff;
  cursor: pointer;
  border: 1px solid #FFC300;
  font-size: 15px;
  transition: 0.5s;
}

.form-wrap button:hover{
  background-color: #F5E431 ;
  transition: 1s;
}

.form-wrap .bottom-text{
  font-size: 13px;
  margin-top: 20px;
}

	</style>
</head>
<body>

	<%
		
		String hname = request.getParameter("hname");
		
	%>
	<div class="img"></div>

	<section>
		
	
		<div id="container">
    		<div class="form-wrap">
				 <form action="insertData" method="post">
                  <h3>Booking Details</h3>
                  <div class="form-group">
                  <input type="text" name="hname" id=""  value="<%= hname %>" Readonly/>
                  </div>
                  <div class="form-group">
                  <input type="text" name="rtype" id="" placeholder="Room Type (type any thing that you want)" />
                  </div>
                  <div class="form-group">
                  <input type="text" name="non" id=""  placeholder="Number of night" />
                  </div>
                  <div class="form-group">
                  <input type="text" name="date" id="" placeholder="Date" />
                  </div>
                  <br>
                  <hr/>
                  <h3>Your Details</h3>
                  <div class="form-group">
                  <input type="text" name="cname" id=""  placeholder="Your Name" />
                  </div>
                  <div class="form-group">
                  <input type="text" name="nic" id=""  placeholder="Passpot or ID number" />
                  </div>
                  <div class="form-group">
                  <input type="text" name="contact" id=""  placeholder="contact number" />
                  </div>
                  
                  <div class="">
                    <button class="">SUBMIT</button>
                    <a href="allPackage.jsp" class="">Go to back ?</a>
                  </div>
                </form>
                
              </div>
          </div>
        
    </section>

</body>
</html>