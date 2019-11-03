<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="<s:url value="/static/css/style.css" />" rel="stylesheet">
	<script type="text/javascript" src="<s:url value="/static/js/app.js"/>"></script>
	<title>Login</title>
</head>
<body>
	<sf:form id="loginForm" modelAttribute="login" action="login"
		method="post" cssClass="loginForm" onsubmit="return validate2()">
		<table align="center">
			<tr>
				<td><sf:label path="userName">Username: </sf:label></td>
				<td><sf:input path="userName" id="username" /></td>
				<td><sf:errors path="userName" cssClass="error"/></td>
			</tr>
			<tr>
				<td><sf:label path="password">Password:</sf:label></td>
				<td><sf:password path="password" id="password" /></td>
				<td><sf:errors path="password" cssClass="error"/></td>
			</tr>
			<tr>
				<td></td>
				<td align="left"><sf:button id="login" name="login">Login</sf:button></td>
			</tr>

			<tr>
				<td></td>
				<td><a href="<c:url value="/"/>">Home</a></td>
			</tr>
			<tr>
				<td></td>
				<td style="font-style: italic; color: red;">${message}</td>
			</tr>
		</table>
	</sf:form>
</body>
</html>
