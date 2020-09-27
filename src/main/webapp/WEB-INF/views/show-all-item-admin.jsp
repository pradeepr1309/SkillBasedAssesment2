<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

<title>Products List Page</title>
</head>
<body>

		<jsp:include page="header.jsp" />
	<core:choose>
		<core:when test="${productList.size() <= 0}">
			<div>
				<h3>No products are currently available. Please add products first</h3>
			</div>
		</core:when>
		<core:otherwise>

			<h1>Available Products</h1>
			<table>
				<thead>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Product Description</th>
					<th>Product Cost</th>
					<th></th>
				</thead>

				<tbody>
					<core:forEach var="product" items="${productList}">
						<tr>
							<td>${product.id}</td>
							<td>${product.productName}</td>
							<td>${product.productDescription}</td>
							<td>${product.cost}</td>
							<td><a
								href="${pageContext.request.contextPath}/admin/product-delete/${product.id}"><input
									id="delete" type="button" value="Delete"></a></td>
						</tr>
					</core:forEach>
				</tbody>
			</table>

		</core:otherwise>
	</core:choose>
	<br>
	<div>
		<a	href="${pageContext.request.contextPath}/admin/home"><input	type="button" value="Admin Home"></a>
		 &nbsp;&nbsp;&nbsp;
		<a href="${pageContext.request.contextPath}/admin/product-entry"><input	type="button" value="Add New Product"></a>
	</div>
	<br>
		<jsp:include page="footer.jsp" />
</body>
</html>