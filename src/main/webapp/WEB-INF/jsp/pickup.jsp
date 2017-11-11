<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE >
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
<script
	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"
	type="text/javascript"></script>


<script type="text/javascript">
	$(function() {
		$("#myform").validate(
				{
					

					rules : {
						name : {
							required : true,
							maxlength:32
						},
						numberofpeople : {
							required : "true",
							maxlength:32
						},
						pickupdate : {
							required : "true"
								
						},
						flightinfo : {
							required : true,
							maxlength:256
						},
						wechat:{
							required:false,
							maxlength:32
						},
						remark:
							{
							maxlength:256
							}

					},
					messages : {
						name : {
							required : "请输入您的称呼",
							
						},

						numberofpeople : {
							required : "请输入人数",

						},
						wechat:{
							required:"请输入wechat",
						}
						,
						pickupdate : {
							required : "请输入一个接机日期",

						},
						flightinfo : {
							required : "请输入航班信息",
						}
					},
					errorElement: "em",
					errorPlacement: function ( error, element ) {
						// Add the `help-block` class to the error element
						error.addClass( "help-block" );

						// Add `has-feedback` class to the parent div.form-group
						// in order to add icons to inputs
						element.parents( ".form-group" ).addClass( "has-feedback" );

						if ( element.prop( "type" ) === "checkbox" ) {
							error.insertAfter( element.parent( "label" ) );
						} else {
							error.insertAfter( element );
						}

						// Add the span element, if doesn't exists, and apply the icon classes to it.
						if ( !element.next( "span" )[ 0 ] ) {
							$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
						}
					},
					success: function ( label, element ) {
						// Add the span element, if doesn't exists, and apply the icon classes to it.
						if ( !$( element ).next( "span" )[ 0 ] ) {
							$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
						}
					},
					
					highlight : function(element, errorClass, validClass) {
						$(element).parents(".form-group").addClass("has-error")
								.removeClass("has-success");			
						$(element).next("span").addClass("glyphicon-remove")
								.removeClass("glyphicon-ok");
					},
					unhighlight : function(element, errorClass, validClass) {
						$(element).parents(".form-group").addClass("has-success")
								.removeClass("has-error");
						$(element).next("span").addClass("glyphicon-ok").removeClass("glyphicon-remove");
					},

				}
				
		);

	});
</script>
<link rel="icon" href="${pageContext.request.contextPath}/img/logo.png" type="image/x-icon"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>星捷咨询服务公司</title>
</head>
<body class="container">


	<div class="container">
		<jsp:include page="../../header.jsp"></jsp:include>
		<ol style="margin-top: 10px;" class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
			<li class="active">接机服务</li>
		</ol>
		<div class="row text-center" style="margin-top: 40px;">
			<img alt=""
				src="${pageContext.request.contextPath}/img/contact_us.png">
		</div>



		<div class="row">

			<div
				class="col-lg-8 col-md-8 col-sm-8 col-xs-10
			  			col-lg-offset-2  col-md-offset-2  col-sm-offset-2  col-xs-offset-1">
				<div class="row introduction">
					<h3>介绍</h3>
				</div>

				<div class="row">
					<h4>纽卡斯尔市内单程送机15英镑/位，接机20英镑/位。如果提前预定接送机服务（往返）：30英镑/位。请联系我们以告知您其他地区范围内的接机费用。</h4>
				</div>

				<div class="row panel panel-primary">
					<div class="panel-heading"  style="padding: 25px; font-size: 20px;">接机费用评估的信息表</div>
					<div style="margin-top: 20px;"
						class="col-lg-10 col-md-10 col-sm-10 col-xs-10
			  			col-lg-offset-1  col-md-offset-1 col-sm-offset-1  col-xs-offset-1">




						<form id="myform" data-toggle="validator"
							action="${pageContext.request.contextPath}/savepickupinfo.action"
							method="post">
							<div class="form-group">
								<label for="name">姓名:</label>
								 
								<input type="text" 
									maxlength="20" class="form-control" id="name" name="name"
									placeholder="姓名">
							</div>
							<div class="form-group">
								<label for="phoneNumber">电话:</label> <input type="number"
									min="9" maxlength="15" class="form-control" id="phoneNumber"
									name="phonenumber" placeholder="电话">

							</div>
							<div class="form-group">
								<label for="qq">QQ:</label> <input min=0 type="number" maxlength="13"
									class="form-control" id="qq" name="qq" placeholder="QQ">
							</div>
							<div class="form-group">
								<label for="wechat">微信:</label> <input type="text"
									class="form-control" id="wechat" name="wechat" placeholder="微信">
							</div>
							<div class="form-group">
								<label for="numberofpeople">人数:</label> <input type="number"
									maxlength="2" min="1" max="99" class="form-control"
									id="numberofpeople" name="numberofpeople" placeholder="人数">
							</div>
							<div class="form-group">
								<label for="pickupdata">接机时间:</label> <input type="date"
									class="form-control" id="pickupdate" name="pickupdata"
									placeholder="接机时间" required>
							</div>
							<div class="form-group">
								<label for="flightInfo">航班信息:</label> <input type="text"
									class="form-control" id="flightInfo" name="flightinfo"
									placeholder="航班信息">
							</div>
							<div class="form-group">
								<label for="flightInfo">备注:</label>

								<textarea class="form-control" name="remark" rows="4"></textarea>
							</div>
							
							<button type="submit"  class="btn btn-primary">提交</button>
						</form>

					</div>
				</div>
			</div>
		</div>




		<jsp:include page="../../footer.jsp"></jsp:include>

	</div>
</body>
</html>