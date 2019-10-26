<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <link href="<s:url value="/WEB-INF/classes/static/css/style.css" />" rel="stylesheet">
    <title>Error</title>

</head>
<body>
    <div class=error404">
        <h2>Something went wrong!</h2>
        <h3>Our enginees are on it.</h3>
        <p>Message: ${error_msg}</p>
    </div>

</body>
</html>
