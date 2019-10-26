<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<table>
		<tr>
			<td>Welcome ${user.firstName}</td>
		</tr>
		<tr>
			<td><img src="data:image/jpg;base64,${image}"style="height: 200px;width: 200px"/></td>
		</tr>
		<tr>
			<td><a href="<c:url value="/"/>">Home</a></td>
		</tr>
	</table>
</body>
</html>
