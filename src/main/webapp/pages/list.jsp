<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/4
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>list页面</h2>
    <c:forEach items="${list}" var="user">
        ${user.username}   ${user.password}<br>
    </c:forEach>
</body>
</html>