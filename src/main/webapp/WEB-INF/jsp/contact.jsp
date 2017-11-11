<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css"
	type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/img/logo.png" type="image/x-icon"/>
<title>星捷咨询服务公司</title>
</head>
<body>


	<div class="container">
		<jsp:include page="../../header.jsp"></jsp:include>
		<ol style="margin-top: 10px;" class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/index">首页</a></li>
			<li class="active">联系我们</li>
		</ol>
		<div class="row text-center"
			style="margin-top: 40px; margin-bottom: 40px;">
			<img alt=""
				src="${pageContext.request.contextPath}/img/contact_us.png">
		</div>
		<div class="row text-left" style="margin-bottom: 40px;">
			<div
				class="col-lg-6 col-md-6 col-sm-8 col-xs-12  col-lg-offset-3  col-md-offset-3  col-sm-offset-2">

				
				<address>
			  <strong>公司地址/Address:</strong><br>
			  星捷留学生服务中心 <br>
			  25 Bath Lane
							Newcastle upon Tyne NE4 5SP<br>
			  <abbr title="地标">Location:</abbr>(中国城顶端，日本料理店附近)
			</address>
					
				<address>
				  <strong>咨询热线/Tel:</strong><br>
				  <a >07421261 073</a>
				</address>
				
				<address>
				  <strong>在线QQ:</strong><br>
				 <a >0191 261 5511</a>
				</address>
				
				<address>
				  <strong>微信/wechat:</strong><br>
				  <a >ukxj5511</a>
				</address>
				<address>
				  <strong>新浪微博：</strong><br>
				  <a >星捷Starjet学生</a>
				</address>
				
				
			</div>
		</div>



		<jsp:include page="../../footer.jsp"></jsp:include>

	</div>
</body>
</html>