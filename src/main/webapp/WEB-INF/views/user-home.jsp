<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to User Home</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1>This is User Home</h1>

	<a href="${pageContext.request.contextPath}/user/show-kit"><button>Show Kit Details</button></a>
		&nbsp;&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/user/show-list"><button>View Available Products</button></a>
	
	<br>
	<br>
<jsp:include page="footer.jsp" />
</body>
</html>