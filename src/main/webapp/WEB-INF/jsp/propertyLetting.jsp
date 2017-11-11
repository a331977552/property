<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css"
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>星捷咨询服务公司</title>

<script type="text/javascript">
	function changePage(targetPage) {

		var priceRange = $("#myform input:checked").val();
		var housetype = $("#myform input:checked:last").val();
		var minPrice = $("#myform input[name='minPrice']").val();
		var maxPrice = $("#myform input[name='maxPrice']").val();
		var name = $("#myform input[name='property.name']").val();
		var currentPage = targetPage;
		var property = {
			"housetype" : "" + housetype,
			"name" : name + ""
		};
		var jsonData = {
			"priceRange" : "" + priceRange,
			"property" : property,
			"minPrice" : minPrice + "",
			"maxPrice" : "" + maxPrice,
			"currentPage" : "" + currentPage
		};
		$
				.ajax({
					url : "${pageContext.request.contextPath}/propertyLettingjson.action",
					type : "POST",
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					data : JSON.stringify(jsonData),
					success : function(data) {
						var head = "";

						if (data.totalCount == 0) {
							head = "<div >there is not such result ,please try other search criteria</div>";
							$("#contentPanel").html(head);
							return;
						}

						$
								.each(
										data.beans,
										function(index, content) {

											head += '<a href="${pageContext.request.contextPath}/propertyDetails.action?id='
													+ content.property.id
													+ '"><div class="row panel panel-default" style="padding: 10px; margin: 5px; height: 180px;">';
											head += '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="height: 100%">';
											if (content.imgs == null
													|| !content.hasImg) {
												head += '<img height="100%" alt="" src="${pageContext.request.contextPath}/img/no_pic.png"	width="90%" />';
											} else {
												head += '<img height="100%" alt="" src="/'
														+ content.imgs[0].url
														+ '"	width="90%" />';
											}
											head += '</div><div class="text-left col-lg-5 col-md-5 col-sm-5 col-xs-5"><dl class="autoFontSize">';

											head += '<dt>'
													+ content.property.name
													+ '</dt>';
											head += '<dd>'
													+ content.property.location
													+ '</dd>';
											head += '<dd>起租时间:'
													+ content.property.rentdate
													+ '</dd></dl></div>';
											head += '<div class="text-right col-lg-4 col-md-4 col-sm-4 col-xs-4">';
											head += '<dl class="autoFontSize">';
											head += '<dt>'
													+ content.property.price
													+ '磅/周</dt>';
											head += '<dd>'
													+ content.property.housetype
													+ '</dd>';
											head += '</dl>';
											head += '</div>';
											head += '</div></a>';

										});
						var page = "";
						page += '<ul class="pagination" >';

						if (data.currentPage == 0) {

							page += '<li class="previous disabled">';
						} else {
							var cur = data.currentPage - 1;
							page += '<li class="previous " onclick=changePage('
									+ cur + ') >';
						}

						page += '<a href="#" aria-label="Previous">';
						page += '<span aria-hidden="true">&laquo;</span>';
						page += '</a></li>';

						for (var i = data.beginNumber; i < data.endNumber; i++) {
							if (data.currentPage == i) {
								page += '<li class="active" onclick="changePage('
										+ i
										+ ')"><a href="#">'
										+ i
										+ '</a></li>';
							} else {
								page += '<li onclick="changePage(' + i
										+ ')"><a href="#">' + i + '</a></li>';
							}
						}

						if (data.currentPage == (data.totalPage - 1)) {
							page += '<li class="next disabled">';
						} else {
							var cur = data.currentPage + 1;
							page += '<li onclick="changePage(' + cur
									+ ')" class="next">';
						}
						page += '<a href="#" aria-label="Next">';
						page += '<span aria-hidden="true">&raquo;</span></a></li>';

						page += '<li>';
						page += '	<div class="input-group input-group-md"';
						page+='	style="float: left; width: 120px; margin-left: 20px;">';
						var cur = data.endNumber - 1;
						page += '<input type="number" id="searchPrice" min=0 max='+cur;
						page+='	class="form-control" placeholder="page">';
						page += '<span class="input-group-btn">';
						page += '<button class="btn btn-success" onclick=changePage($("#searchPrice").val()) type="button">go</button>';
						page += '</span>';
						page += '</div>';
						page += '</li>';
						page += '</ul>';
						var da = data.currentPage + 1;
						//page+='<span>currentPage'+da+'/'+data.totalPage+'</span>';								   

						$("#contentPanel").empty();
						$("#contentPanel").html(head);
						$("#pageContent").empty();
						$("#pageContent").html(page);

						/* console.log(data.totalPage);
						console.log(data.beans[0].property.name);
						 */

					},
					error : function(message) {
						console.log(message);

					}

				});

	}

	$(function() {
		changePage(0);

	});
</script>

<link rel="icon" href="${pageContext.request.contextPath}/img/logo.png"
	type="image/x-icon" />
</head>
<body class="container">
	<jsp:include page="../../header.jsp"></jsp:include>
	<ol style="margin-top: 10px;" class="breadcrumb">
		<li><a href="${pageContext.request.contextPath}/index">首页</a></li>
		<li class="active">房屋租赁</li>
	</ol>


	<form id="myform"
		action="${pageContext.request.contextPath}/propertyLetting.action"
		method="get" class="panel panel-default" style="padding: 40px;">
		<div class="row">
			<div class="btn-group btn-group-sm" role="group"
				data-toggle="buttons">
				<input type="hidden" name="currentPage" value="${page.currentPage}" />
				<label class="btn "> 租金: </label> <label
					class="btn btn-primary active"> <input type="radio"
					name="priceRange" id="option1" autocomplete="off" value="0-100000"
					checked> 不限
				</label> <label class="btn btn-primary"> <input type="radio"
					name="priceRange" id="option2" autocomplete="off" value="0-70">0-70磅/周
				</label> <label class="btn btn-primary"> <input type="radio"
					name="priceRange" id="option2" autocomplete="off" value="70-100">70-100磅/周
				</label> <label class="btn btn-primary"> <input type="radio"
					name="priceRange" id="option2" autocomplete="off" value="100-120">100-120磅/周
				</label> <label class="btn btn-primary"> <input type="radio"
					name="priceRange" id="option2" autocomplete="off" value="120-9999">120以上/周
				</label>


			</div>
		</div>
		<div class="row">
			<div class="btn-group btn-group-sm" style="margin-top: 10px;"
				data-toggle="buttons">
				<label class="btn disabled"> 户型: </label> <label
					class="btn btn-primary active"> <input type="radio"
					name="property.housetype" id="option1" autocomplete="off" value=""
					checked> 不限
				</label> <label class="btn btn-primary"> <input type="radio"
					name="property.housetype" id="option2" autocomplete="off"
					value="一室">一室
				</label> <label class="btn btn-primary"> <input type="radio"
					name="property.housetype" id="option2" autocomplete="off"
					value="二室">二室
				</label> <label class="btn btn-primary"> <input type="radio"
					name="property.housetype" id="option2" autocomplete="off"
					value="三室">三室
				</label> <label class="btn btn-primary"> <input type="radio"
					name="property.housetype" id="option2" autocomplete="off"
					value="四室">四室
				</label> <label class="btn btn-primary"> <input type="radio"
					name="property.housetype" id="option2" autocomplete="off"
					value="四室以上">四室以上
				</label>
			</div>
		</div>
		<div class="row">
			<div class="btn-group" style="margin-top: 10px;">
				<div class="input-group input-group-sm"
					style="float: left; width: 120px; margin-left: 10px;">
					<span class="input-group-addon" id="sizing-addon3">￡</span> <input
						type="text" class="form-control" placeholder="最小价格"
						name="minPrice" aria-describedby="sizing-addon3">
				</div>
				<div
					style="margin-left: 10px; margin-right: 10px; text-align: center; float: left;">
					--</div>
				<div class="input-group input-group-sm"
					style="float: left; width: 120px;">
					<span class="input-group-addon" id="sizing-addon3">￡</span> <input
						type="text" class="form-control" placeholder="最大价格"
						name="maxPrice" aria-describedby="sizing-addon3">
				</div>



				<!-- /input-group -->

			</div>
			<div class="row">

				<div class="input-group input-group-sm"
					style="width: 240px; margin-left: 27px; margin-top: 10px;">
					<input type="text" class="form-control" name="property.name"
						placeholder="房屋名称"> <span class="input-group-btn">
						<input class="btn btn-success" style="width: 50px;" value="搜"
						type="button" onclick="changePage(0)">
					</span>
				</div>
			</div>
		</div>

	</form>
	<nav class="row text-center" id="pageContent"
		aria-label="Page navigation"></nav>
	<div id="contentPanel" class="panel  panel-primary"
		style="padding: 20px;">

		<c:forEach items="${page.beans}" var="bean">

			<div class="row panel panel-default"
				style="padding: 10px; margin: 5px; height: 180px;">
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"
					style="height: 100%">
					<c:if test="${empty bean.imgs}">
						<img height="100%" alt=""
							src="${pageContext.request.contextPath}/img/no_pic.png"
							width="90%" />
					</c:if>

					<c:if test="${!empty bean.imgs}">
						<img height="100%" alt="" src="/${bean.imgs[0].url}" width="90%" />
					</c:if>


				</div>
				<div class="text-left col-lg-5 col-md-5 col-sm-5 col-xs-5">

					<dl class="autoFontSize">
						<dt>${bean.property.name}</dt>
						<dd>${bean.property.location}</dd>
						<dd>起租时间: ${bean.property.rentdate}</dd>
					</dl>

				</div>
				<div class="text-right col-lg-4 col-md-4 col-sm-4 col-xs-4">
					<dl class="autoFontSize">
						<dt>${bean.property.price}磅/周</dt>
						<dd>${bean.property.housetype}</dd>

					</dl>

				</div>
			</div>

		</c:forEach>
	</div>







	<div class="row panel panel-default " style="margin: 10px;">
		<c:if test="${empty history}">
		<div class="panel-heading">推荐房屋</div>
		</c:if>
		<c:if test="${!empty history}">
		<div class="panel-heading">浏览历史</div>
		</c:if>
		<div class="row">
			<c:if test="${empty history}">
				<c:forEach items="${recommend}" var="vo">
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6" >
						<a
							href="${pageContext.request.contextPath}/propertyDetails.action?id=${vo.property.id}">
							<img style="padding: 10px;" alt="" src="/${vo.imgs[0].url}"
							width="90%" height="180px;" />
						</a>
					</div>


				</c:forEach>

			</c:if>
			<c:if test="${!empty history}">
				<c:forEach items="${history}" var="vo">
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
						<a
							href="${pageContext.request.contextPath}/propertyDetails.action?id=${vo.property.id}">
							<img style="padding: 10px;" alt="" src="/${vo.imgs[0].url}" height="180px;"
							width="90%" />
						</a>
					</div>


				</c:forEach>

			</c:if>




		</div>

	</div>


	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>