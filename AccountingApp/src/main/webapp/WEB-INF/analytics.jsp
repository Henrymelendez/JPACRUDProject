<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="nav.html" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
th, td {
	padding: 10px;
	text-align: left;
}

table {
	position: relative;
	top: 10px;
	left:300px;
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

<div  class="table">
	<table>
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