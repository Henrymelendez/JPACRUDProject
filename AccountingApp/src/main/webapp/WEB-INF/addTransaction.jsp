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
	<form action="add.do" method="POST">
		<label for="productNumber" >Item Number</label><br>
		<input type="number" id="productNumber" name="productNumber"><br>
		<label for="description">Description</label><br>
		<input type="text" id="description" name="description"><br>
		<label for="quantity">Quantity</label><br>
		<input type="number" id="quantity" name="quantity"><br>
		<label for="revenue">Revenue</label><br>
		<input type="number" id="revenue" name="revenue"><br>
		<label for="cogs">Cost Of Goods Sold</label>
		<input type="number" id="cogs" name="cogs"><br>
		<button type="submit">Submit</button>
		
	</form>
		</div>
</body>
</html>