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
<sf:form id="postForm" modelAttribute="postData" action="/${postData.userName}/addPost"
         method="post" cssClass="postForm" enctype="multipart/form-data" >
    <table align="center">
        <tr>
            <td>
                <sf:hidden path="userName"/>
                <sf:hidden path="date"/>
            </td>
        </tr>
        <tr>
            <td><sf:label path="postContent">Enter Your Post: </sf:label></td>
            <td><sf:input path="postContent" id="post_content" /></td>
            <td><sf:errors path="postContent" cssClass="error"/></td>
        </tr>
        <tr>
            <td>Upload Picture(Optional)</td>
            <td><input type="file" name="postPhoto" /></td>
        </tr>
        <tr>
            <td></td>
            <td align="left"><sf:button id="post" name="post">Post</sf:button></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="<c:url value="/users/${postData.userName}"/>">Posts</a></td>
            <td><a href="<c:url value="/"/>">Home</a></td>
        </tr>
    </table>
</sf:form>
</body>
</html>
