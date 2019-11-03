<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome</title>
</head>
<body>
<table align="center">
    <tr>
        <td><a href="<c:url value="/"/>">Home</a></td>
    </tr>

    <tr>
        <td><a href="<c:url value="/users/${userName}"/>">Profile</a></td>
    </tr>

    <tr>
        <td><h2><u>Posts for ${userName}</u></h2></td>
    </tr>
    <c:forEach items="${posts}" varStatus="i">
        <tr>
            <td>Date: ${posts[i.index].date}</td>
        </tr>
        <tr>
            <td>${posts[i.index].postContent}</td>
        </tr>
        <tr>
            <c:if test="${fn:length (photos[i.index])!=0}">
                <td><img src="data:image/jpg;base64,${photos[i.index]}"style="alignment:center;height: 300px;width: 300px"/></td>
            </c:if>
        </tr>
        <tr>
            <td>___________________________________________________________________________</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
