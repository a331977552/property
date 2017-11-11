<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/img/wx.jpg" type="image/x-icon"/>
<title> 星捷咨询</title>
</head>
<body>


		<nav class="navbar navbar-default ">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand active"
						href="${pageContext.request.contextPath}/index">首页</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li ><a href="${pageContext.request.contextPath}/propertyLetting.action">房屋出租</a></li>
						<li><a href="${pageContext.request.contextPath}/pickup.action">接机包车服务</a></li>
						<li><a href="${pageContext.request.contextPath}/move.action">搬家</a></li>
						<li><a href="${pageContext.request.contextPath}/household.action">保洁</a></li>
						<li><a href="${pageContext.request.contextPath}/selling.action">典当服务</a></li>
						<li><a href="${pageContext.request.contextPath}/contact.action">联系我们</a></li>
						<!-- <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li> -->
					</ul>
					<form method="get" class="navbar-form navbar-right" action="${pageContext.request.contextPath}/propertyLetting.action">
						<div class="form-group">
							<input type="text" name="property.name" class="form-control" placeholder="房屋名称">
						</div>
						<button type="submit" class="btn btn-default">搜一搜</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<!-- <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li> -->
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
			<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
				<li data-target="#carousel-example-generic" data-slide-to="5"></li>
				<li data-target="#carousel-example-generic" data-slide-to="6"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
				
					<a href="${pageContext.request.contextPath}/propertyLetting.action">
					
					<img src="${pageContext.request.contextPath}/img/banner1.jpg"
						alt="...">
						</a>
					<div class="carousel-caption" style="font-size: 18px;">房屋出租</div>
				</div>
				<div class="item">
				<a href="${pageContext.request.contextPath}/pickup.action">
					<img src="${pageContext.request.contextPath}/img/banner2.jpg"
						alt="...">
						</a>
					<div class="carousel-caption" style="font-size: 18px;">接机服务</div>
				</div>
				<div class="item">
				<a href="${pageContext.request.contextPath}/move.action">
					<img src="${pageContext.request.contextPath}/img/banner3.jpg"
						alt="...">
						</a>
					<div class="carousel-caption" style="font-size: 18px;">搬家服务</div>
				</div>
				<div class="item">
				<a href="${pageContext.request.contextPath}/household.action">
					<img src="${pageContext.request.contextPath}/img/banner4.jpg"
						alt="...">
						</a>
					<div class="carousel-caption" style="font-size: 18px;">保洁服务</div>
				</div>
				<div class="item">
				<a href="${pageContext.request.contextPath}/selling.action">
					<img src="${pageContext.request.contextPath}/img/banner5.jpg"
						alt="...">
						</a>
					<div class="carousel-caption" style="font-size: 18px;">行李寄存</div>
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath}/img/banner6.jpg"
						alt="...">
					<div class="carousel-caption" style="font-size: 18px;">快递服务</div>
				</div>

				<div class="item">
					<img src="${pageContext.request.contextPath}/img/banner7.jpg"
						alt="...">
					<div class="carousel-caption">典当服务</div>
				</div>


			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
</body>
</html>