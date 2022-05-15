<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="nav.html" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Insert title here</title>
<style>
th, td {
	padding: 10px;
	text-align: left;
}

table {
	position: relative;
	top: 10px;
	left:80px;
	width: 50%;
	height: 50%;
}
th {
	padding: 20px;
}
td, th {
	 border-bottom: 1pt solid black;
 }


</style>
<!-- CSS only -->

<body>

<div  class="container ">
	<table class="table table-bordered">
	<tbody>
	<tr>
	<th>Item No.</th>
	<th>Item/Service Description</th>
	<th>Quantity</th>
	<th>Revenue</th>
	<th>Unit Price</th>
	<th>Unit Cost</th>
	<th>COGS</th>
	<th>Margin</th>
	<th>Contribution</th>
	</tr>
	<c:forEach var="f" items="${ account}">
	<tr>
	<th>${f.productNumber }</th>
	<th>${f.description }</th>
	<td>${f.quantity}</td>
	<td><fmt:formatNumber type="currency" value="${f.revenue }"/></td>
	<td><fmt:formatNumber type="currency" value="${f.unitPrice}"/></td>
	<td><fmt:formatNumber type="currency" value="${f.unitCost }"/></td>
	<td><fmt:formatNumber type="currency" value="${f.cogs }"/></td>
	<td><fmt:formatNumber type="percent" maxFractionDigits="2" value="${(f.revenue - f.cogs) / f.revenue }"/></td> 
	<td><fmt:formatNumber type="currency" value="${f.revenue - f.cogs }"/></td>
	</tr>
	</c:forEach>

	</tbody>
	</table>
	</div>

</body>
</html>