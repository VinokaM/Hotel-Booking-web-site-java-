<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>are you sure to delete your booking</title>
<style type="text/css">
*{
margin:0;
padding:0;
box-sizing:border-box;
}
.container{
width:100%;
height:100vh;
background:#5D5D5D; 
display:flex;
align-items:center;
justify-content:center;
}
.popup{
width:400px;
background:#fff;
border-radius:10px;
position:absolute;
top:10%;
left:50%;
transform:translate(-50%,50%);
text-align:center;
padding:0 30px 30px;
color:#333;
}
.popup img{
width:100px;
margin-top:-50px;
border-radius:50%;
box-shadow:0 2px 5px rgba(0,0,0,0.2);
}
.popup button{
margin-top:25px;
width:70px;
height:35px;
background:#D63208;
color:#fff;
boeder:0;
outline:none;
font-size:15px;
border-radius:10px;
box-shadow:0 5px 5px rgba(0,0,0,0.2);
}

.popup button:hover{
background:#F95C2F;
}
.popup p{
margin-top:10px;
}
</style>
</head>
<body>

<div class="container">

	<%
		String id = request.getParameter("id");
		String cname = request.getParameter("cname");
		
	%>

	<div class="popup">
	<img src="img/close.png">
	<h2>Are you sure!</h2>
	<form action="deleteData" method="post">
	<h3>Booking ID <input type="text" name="id" id=""  value="<%= id %>" Readonly/></h3>
	<p><%=cname %>, are you sure to delete your booking</p>
	
	<button class="">YES</button>
	
	</form>
	<a href="allPackage.jsp" class=""><button class="">NO</button></a>
	
	
	</div>
</div> 

</body>
</html>