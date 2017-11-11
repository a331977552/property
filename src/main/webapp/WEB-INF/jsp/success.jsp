<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/img/logo.png" type="image/x-icon"/>
<title>星捷咨询服务公司</title>
</head>
<body class="container">

<div class="row" style="margin-top: 80px;">
<h3>非常感谢您,
<c:if test="${!empty pickup}">
	${pickup.name} 
先生/女士.
</c:if>
您已经完成了在线申请,我们会尽快联系您. 
</h3>
<br/>
<br/>
<a class="btn btn-default" href="${pageContext.request.contextPath}/index">返回首页</a>

</div>

</body>
</html>