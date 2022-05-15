<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@include file="nav.html" %>
<html>
<head>
<title>User Management Application</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>



</head>
<body>
	
</head>
<body>

	<header>
		
	</header>
	<br>
	

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List Of Transactions</h3>
			<hr>
			<div class="input-group rounded">
	<input id="myInput" type="text" placeholder="Search" class="form-control rounded" aria-label="Search" aria-describedby="search-addon">
	<span class="input-group-text border-0" id="search-addon">
    <i class="fas fa-search"></i>
  </span>
	</div>
			
			<br>
			
			<table  id="table" class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Item Number</th>
						<th>Description</th>
						<th>Cost of Goods Sold</th>
						<th>Quantity</th>
						<th>Revenue</th>
					</tr>
				</thead>
				<tbody id="myTable">
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="f" items="${account}">

						<tr>
							<td><c:out value="${f.id}" /></td>
							<td><c:out value="${f.productNumber}" /></td>
							<td><c:out value="${f.description}" /></td>
							<td><fmt:formatNumber type="currency" value="${f.cogs }"/></td>
							<td><c:out value="${f.quantity}" /></td>
							<td><fmt:formatNumber type="currency" value="${f.revenue }"/></td>
							<td><a href="update.do?id=<c:out value='${f.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete.do?id=<c:out value='${f.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.0/js/jquery.dataTables.js">
	
	</script>	

</body>
</html>