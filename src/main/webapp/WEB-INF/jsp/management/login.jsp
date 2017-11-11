<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>星捷房产管理系统</title>
  
  
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
  
</head>

<body class="container">
 
 <div class="row text-center text-primary" style="margin-top:80px; font-size: 50px;">
 	 星捷房地产公司管理系统
 </div> 
 <div class="row">
 
 
 <div style="padding:30px; padding-left:90px; padding-right:90px;  margin-top: 50px;" class="panel panel-primary col-lg-6 col-md-6 col-sm-8 col-xs-10 col-lg-offset-3 col-md-offset-3 col-sm-offset-2 col-xs-offset-1">
	<div class="page-header text-primary" style="margin-bottom:50px;  font-size:50px; text-align: left;">
		Login
	</div>
<form class="form-horizontal text-center" action="${pageContext.request.contextPath}/mgr/userlogin.action" method="post">
  <div class="form-group">
   
    <div class="input-group input-group-lg" style="width: 100%">
      <input type="text" maxlength="20" value="${user.username}" name="username" class="form-control" id="inputEmail3" placeholder="Username">
    </div>
  </div>
  <div class="form-group" style="margin-top: 50px;">

    <div class="input-group input-group-lg" style="width: 100%">
      <input type="password" maxlength="20" class="form-control" name="password" id="inputPassword3" placeholder="Password">
    </div>
  </div>
 <!--  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div> -->
  
 <c:if test="${!empty error}"> 
  <div class="form-group" id="userError">
    <div class="text-left" style="width: 100%">
     	<label class="text-danger">${error}</label>
    </div>
  </div>
   </c:if> 
  <div class="form-group" style="margin-top: 50px;">
    <div class="btn-group btn-group-lg" style="width: 100%">
      <button type="submit" style="width: 100%" class="btn btn-primary">login</button>
    </div>
  </div>
</form>
  </div>
  </div>
</body>
</html>
