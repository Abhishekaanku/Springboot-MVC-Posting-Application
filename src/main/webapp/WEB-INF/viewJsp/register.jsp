<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="<s:url value="/static/css/style.css" />" rel="stylesheet">
	<script type="text/javascript" src="<s:url value="/static/js/app.js"/>"></script>
<title>Registration</title>

</head>
<body>
	<sf:form id="regsf" modelAttribute="user" action="register"
		method="post" onsubmit="return validate2()" cssClass="registrationForm"
		enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td><sf:label path="userName">Username</sf:label></td>
				<td><sf:input path="userName" name="username" id="username" /></td>
				<td><sf:errors path="userName" cssClass="error"/> </td>
			</tr>
			<tr>
				<td><sf:label path="password">Password</sf:label></td>
				<td><sf:password path="password" name="password" id="password" /></td>
				<td><sf:errors path="userName" cssClass="error"/> </td>

			</tr>
			<tr>
				<td><sf:label path="firstName">FirstName</sf:label></td>
				<td><sf:input path="firstName" name="firstname"
						id="firstname" /></td>
			</tr>
			<tr>
				<td><sf:label path="lastName">LastName</sf:label></td>
				<td><sf:input path="lastName" name="lastname" id="lastname" />
				</td>
			</tr>
			<tr>
				<td><sf:label path="email">Email</sf:label></td>
				<td><sf:input path="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><sf:label path="address">Address</sf:label></td>
				<td><sf:input path="address" name="address" id="address" />
				</td>
			</tr>
			<tr>
				<td><sf:label path="phone">Phone</sf:label></td>
				<td><sf:input path="phone" name="phone" id="phone" /></td>
			</tr>
			<tr>
				<td>Profile Picture</td>
				<td><input type="file" name="profilePic" /></td>
			</tr>
			<tr>
				<td></td>
				<td><sf:button id="register" name="register">Register</sf:button>
				</td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><a href="/">Home</a></td>
			</tr>
		</table>
		<table align="center">
			<tr>
				<td style="font-style: italic; color: red;">${message}</td>

			</tr>
		</table>
	</sf:form>
</body>
</html>
