<%--
  Created by IntelliJ IDEA.
  User: xuhongchang
  Date: 2020/2/8
  Time: 8:39 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
欢迎用户，${username}<br/>
商品信息管理</br>
<security:authorize access="hasAuthority('ROLE_LIST_GOODS')">
    <a href="${pageContext.request.contextPath}/goods/list">商品显示</a></br>
</security:authorize>
<security:authorize access="hasAuthority('ROLE_ADD_GOODS')">
    <a href="${pageContext.request.contextPath}/goods/add">商品添加</a></br>
</security:authorize>
<security:authorize access="hasAuthority('ROLE_UPDATE_GOODS')">
    <a href="${pageContext.request.contextPath}/goods/update">商品修改</a></br>
</security:authorize>
<security:authorize access="hasAuthority('ROLE_DELETE_GOODS')">
    <a href="${pageContext.request.contextPath}/goods/delete">商品删除</a></br>
</security:authorize>
</body>
</html>
