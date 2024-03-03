<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your booking Details</title>

<style type="text/css">

*{
 margin:0;
 padding: 0;
 outline: 0;
}
.filter{
 position: absolute;
 left: 0;
 top: 0;
 bottom: 0;
 right: 0;
 z-index: 1;
 background-image:url(img/sea.jpg);
 -webkit-background-size: cover;
 background-size:cover;
 background-repeat:no-repeat;
 background-position:center center;
 height:100%;
}

table{
 position: absolute;
 z-index: 2;
 left: 50%;
 top: 50%;
 transform: translate(-50%,-50%);
 width: 50%; 
 border-collapse: collapse;
 border-spacing: 0;
 box-shadow: 0 2px 15px rgba(64,64,64,.7);
 border-radius: 12px 12px 12px 12px;
 overflow: hidden;

}

td{
 padding: 15px 20px;

}

tr{
 width: 100%;
 background-color: #fafafa;
}
.btn{
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
</head>
<body>

	<div class="filter">

 	</div>
 	

    <table class="">
    <tr>
    <td></td>
    <td><h2>Your Booking uploaded successfully!</h2></td>
    </tr>


	<c:forEach var="book" items="${bookDetails}">
	
	<c:set var="id" value="${book.id}"/>
	<c:set var="hname" value="${book.hname}"/>
	<c:set var="rtype" value="${book.rtype}"/>
	<c:set var="non" value="${book.non}"/>
	<c:set var="date" value="${book.date}"/>
	<c:set var="cname" value="${book.cname}"/>
	<c:set var="nic" value="${book.nic}"/>
	<c:set var="contact" value="${book.contact}"/>
	
	<tr>
		<td>Hotel Name</td>
		<td>${book.hname}</td>
	</tr>
	
	<tr>
		<td>Room Type</td>
		<td>${book.rtype}</td>
	</tr>
	
	<tr>
		<td>Number of Night</td>
		<td>${book.non}</td>
	</tr>
	
	<tr>
		<td>Date</td>
		<td>${book.date}</td>
	</tr>
	
	<tr>
		<td>Your Name</td>
		<td>${book.cname}</td>
	</tr>
	
	<tr>
		<td>Passport or ID</td>
		<td>${book.nic}</td>
	</tr>
	
	<tr>
		<td>Contact</td>
		<td>${book.contact}</td>
	</tr>
	</c:forEach>
	
	<c:url value="updateBooking.jsp" var="updateBooking">
		<c:param name="id" value="${id}"/>
		<c:param name="hname" value="${hname}"/>
		<c:param name="rtype" value="${rtype}"/>
		<c:param name="non" value="${non}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="cname" value="${cname}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="contact" value="${contact}"/>
	</c:url>
	
	
	<tr>
	 	<td></td>
	 	<td>
	
	<a href="${updateBooking}" class="btn">
	UPDTE 
	</a>
	
	<c:url value="deleteBooking.jsp" var="deleteBooking">
		<c:param name="id" value="${id}"/>
		<c:param name="hname" value="${hname}"/>
		<c:param name="rtype" value="${rtype}"/>
		<c:param name="non" value="${non}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="cname" value="${cname}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="contact" value="${contact}"/>
	</c:url>
	
	<a href="${deleteBooking}" class="btn">
	DELETE
	</a>
	<a href="allPackage.jsp" class="btn">
	HOME
	</a>
	</td>
	</tr>
	</table>
</body>
</html>