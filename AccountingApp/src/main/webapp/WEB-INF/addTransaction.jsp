<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@include file="nav.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/post.css">
<title>Post a Transaction</title>
</head>
<body>
	<div>
	<h3>Post a Transaction</h3>
	<form action="create.do" method="POST">
		<label for="itemNumber" >Item Number</label><br>
		<input type="number" id="itemNumber" name="itemNumber"><br>
		<label for="description">Description</label><br>
		<input type="text" id="description" name="description"><br>
		<label for="quantity">Quantity</label><br>
		<input type="number" id="quantity" name="quantity"><br>
		<label for="revenue">Revenue</label><br>
		<input type="number" id="revenue" name="revenue"><br>
		
	</form>
		</div>
</body>
</html>