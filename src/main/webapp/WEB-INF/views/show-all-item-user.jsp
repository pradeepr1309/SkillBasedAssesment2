<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

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
		
	<h2>
		Welcome
		<security:authentication property="principal.username" />
	</h2>
	
	<core:choose>
		<core:when test="${productList.size() <= 0}">
			<div>
				<h3>No products are currently available. Please login after some time.</h3>
			</div>
		</core:when>
		<core:otherwise>
		
			<h3>Available Products</h3>
			<table>
				<thead>
					<th>Product Name</th>
					<th>Product Description</th>
					<th>Product Cost</th>
					<th></th>
				</thead>

				<tbody>
					<core:forEach var="product" items="${productList}">
						<tr>
							<td>${product.productName}</td>
							<td>${product.productDescription}</td>
							<td>${product.cost}</td>
							<td><a
								href="${pageContext.request.contextPath}/user/add-to-cart/${product.id}"><button>Add
										to Cart</button></a></td>
						</tr>
					</core:forEach>
				</tbody>
			</table>

		</core:otherwise>
	</core:choose>
	
	<br>
	<a href="${pageContext.request.contextPath}/user/home"><button>User Home</button></a>
	&nbsp;&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/user/show-kit"><button>View	Cart</button></a>
	
	<jsp:include page="footer.jsp" />
</body>
</html>