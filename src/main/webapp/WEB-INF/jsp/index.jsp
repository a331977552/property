<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	type="text/javascript"></script>
<style type="text/css">
 .aboutus_tel{
 	background-image: url("${pageContext.request.contextPath}/img/about_us_tel.jpg");
 	padding-top: 90px;
 	text-align: center;
 	color: olive;
 }
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/img/logo.png" type="image/x-icon"/>
<title>星捷咨询服务公司</title>
</head>
<body>

	<div class="container">
	
	
	<jsp:include  page="../../header.jsp"></jsp:include>
	<div class="py-5 text-center opaque-overlay" style="background-image: url(&quot;https://pingendo.github.io/templates/sections/assets/cover_event.jpg&quot;);">
    <div class="container py-5">
      <div class="row">
        <div class="col-md-12 text-white">
          <h1 class="display-3 mb-4">关于我们</h1>
          <p class="lead mb-5" style="margin-top: 30px; text-align: center;">Starjet星捷留学生服务公司成立于2012年，是经英国公司管理局批准注册总部设在纽卡斯尔的一家综合性服务公司。公司立足于精益求精的发展路线，在不断丰富产品的同时，更加注重团队的建设和品质的保证。星捷作为英格兰东北部地区的留学生服务公司，多年来一直为留学生提供高质量的服务并且与多个学生社团均建立了良好的合作关系。</p>
         
        </div>
      </div>
    </div>
  </div>
		
		<div class="row" style="background:#F8F8F8; margin-top: 20px; padding: 20px; margin-left: 0px; margin-right: 0px; ">
			<div class="row"
				style="margin-top: 30px; margin-bottom:40px; align-items: center; text-align: center;">

				<img src="${pageContext.request.contextPath}/img/title_recommed_home.png">
			</div>

			<div class="row" style="margin-top: 10px;">
				
				<c:forEach items="${voList.beans}" var="vo">
					
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6" style="margin: 0px; padding: 0px;" >
					<a href="${pageContext.request.contextPath}/propertyDetails.action?id=${vo.property.id}">
					<img alt="" src="/${vo.imgs[0].url}" style="width: 100%; height:200px; margin: 0px; padding: 0px;" width="100%"/>
					</a>
				</div>
				</c:forEach>
			
				
			
				
				
				
			</div>

		</div>

		
		<jsp:include page="../../footer.jsp"></jsp:include>
	</div>



</body>
</html>