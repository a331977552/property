<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<body class="container-fluid">
 
 <div class="row text-center text-primary" style="margin:40px; ">
 	 <div class="col-lg-offset-2 col-lg-8" style=" font-size: 50px;">星捷房地产公司管理系统</div>
 	 <div class="col-lg-2 text-right">欢迎您,管理员 <a href="#">${user.username}</a></div>
 	 
 	 
 	 	
 </div> 
 <div class="row col-lg-offset-2 col-lg-8" >
 	

  <!-- Nav tabs -->
  <ul class="nav nav-tabs nav-justified" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">房屋租赁</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel"  class="tab-pane fade in active text-center " id="home">
    	<jsp:include page="propertyManage.jsp"/>
    	
    </div>
    <div role="tabpanel" class="tab-pane fade " id="profile">...</div>
    <div role="tabpanel" class="tab-pane fade " id="messages">...</div>
    <div role="tabpanel" class="tab-pane fade " id="settings">...</div>
  </div>

</div>
 <div>
 </div>
</body>
</html>