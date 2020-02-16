<%--
  Created by IntelliJ IDEA.
  User: xuhongchang
  Date: 2020/2/9
  Time: 11:27 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>

<h2>登录</h2>
<c:if test="${not empty param.error}">
    <font color="red">用户名或密码错误</font>
</c:if>
<form action="${pageContext.request.contextPath}/securityLogin" method="post">
    <input type="text" name="username"/><br>
    <input type="password" name="password"/><br>
    <input type="text" name="imageCode"/><img src="${pageContext.request.contextPath}/imageCode"><br>
    记住我：<input type="checkbox" name="remember-me" value="true"/>
    <input type="submit" value="登录"/>
</form>
</body>
</html>
