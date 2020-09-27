<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Summary Page</title>
<style>
table {
	border-collapse: collapse;
}

th, td {
	text-align: left;
	padding: 8px;
	border-bottom: 1px solid #ddd;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1>Your Corona Kit Order Details</h1>
	<a href="${pageContext.request.contextPath }/user/home"><button>User
			Home</button></a>

	<h2>
		<b>Ordered Products Summary 
	</h2>
	<table>
		<tbody>
			<tr>
				<td><b>Order Id </td>
				<td>${CoronaKit.id}</td>
			</tr>
			<tr>
				<td><b>Order Amount</td>
				<td>${CoronaKit.totalAmount}</td>
			</tr>
			<tr>
				<td><b>Delivery Address</td>
				<td>${CoronaKit.deliveryAddress}</td>
			</tr>
			<tr>
		</tbody>
	</table>
	<br>
	<table>
		<thead>
			<th>Corona Kit ID</th>
			<th>Product Name</th>
			<th>Product Quantity</th>
			<th>Amount</th>
		</thead>
		<tbody>
			<core:forEach var="kit" items="${OrderedKits}">
				<tr>
					<td>${kit.coronaKitId }</td>
					<td>${kit.productName }</td>
					<td>${kit.quantity }</td>
					<td>${kit.amount}</td>
				</tr>
			</core:forEach>
			<td></td>
				<td colspan="2"><b>Total Amount</td>
				<td><b>${CoronaKit.totalAmount}</td>
		</tbody>
	</table>
	<br>
	<br>
	<core:remove var="CartDetails" scope="session" />

	<jsp:include page="footer.jsp" />
</body>
</html>