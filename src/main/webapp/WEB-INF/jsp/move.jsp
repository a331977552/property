<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
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
						movedate : {
							required : true
								
						},
						currentlocation : {
							required : true,
							maxlength:32
						},
						movelocation : {
							required : true,
							maxlength:32
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
						movedate : {
							required : "您必须填写搬家时间"
								
						},
						currentlocation : {
							required : "请填写您当前的住址",
							maxlength:"最大长度不能超过32"
						},
						movelocation : {
							required : "请填写您要前往的住址",
							maxlength:"最大长度不能超过32"
						},
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
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/img/logo.png" type="image/x-icon"/>
<title>星捷咨询服务公司</title>
</head>	
<body class="container">
<jsp:include page="../../header.jsp"></jsp:include>
<ol style="margin-top: 10px;" class="breadcrumb">
  <li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
  <li class="active">搬家服务</li>
</ol>

<div class="row text-center"style="margin-top: 40px; margin-bottom: 40px;">
			<img alt="" src="${pageContext.request.contextPath}/img/contact_us.png">
		</div>
	<div class="row">
				
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-10
			  			col-lg-offset-2  col-md-offset-2  col-sm-offset-2  col-xs-offset-1">
				<div class="row introduction">
						<h3>介绍</h3>
					</div>
			
					<div class="row">
						<h4>本公司使用中型货车搬家。纽卡斯尔市内搬家20英镑起；纽卡到杜伦搬家45英镑起；纽卡到桑德兰55英镑起；纽卡到米德尔斯堡85英镑起。若需搬到较远城市，费用将根据邮编决定。</h4>
					</div>
					
				<div class="row panel panel-primary">
				 <div class="panel-heading" style="padding: 25px; font-size: 20px;">搬家费用评估的信息表</div>
				<div style="margin-top: 20px;" class="col-lg-10 col-md-10 col-sm-10 col-xs-10
			  			col-lg-offset-1  col-md-offset-1 col-sm-offset-1  col-xs-offset-1">
			  			 
					
				
				
			<form id="myform" action="${pageContext.request.contextPath}/saveMoveInfo.action" method="post">

		
				
				<div class="form-group">
					<label for="name">姓名:</label> <input
						type="text"  maxlength="20" class="form-control" id="name"
						name="name" placeholder="姓名">
				</div>
				<div class="form-group">
					<label for="phonenumber">电话:</label> <input
						name="phonenumber"	type="number"  maxlength="15"  class="form-control" id="phonenumber"
						placeholder="电话">
				</div>
				<div class="form-group">
					<label for="qq">QQ:</label> <input
						type="number" maxlength="13" class="form-control" id="qq"
						name="qq" placeholder="QQ">
				</div>
				<div class="form-group">
					<label for="wechat">微信:</label> <input
						type="text" class="form-control" id="wechat"
					name="wechat"		placeholder="微信">
				</div>
				<div class="form-group">
					<label for="movedate">搬家时间:</label> <input
						type="date" class="form-control" id="movedate"
						name="movedate" placeholder="搬家时间">
				</div>
				<div class="form-group">
					<label for="currentlocation">目前住址:</label> <input
						type="text" maxlength="90"   class="form-control" id="currentlocation"
						name="currentlocation" placeholder="目前住址">
				</div>
				<div class="form-group">
					<label for="movelocation">搬家住址:</label> <input
						type="text" maxlength="90"   class="form-control" id="movelocation"
						name="movelocation" placeholder="目前住址">
				</div>
				
				<div class="form-group">
					<label for="remark">备注:</label> 
					
					<textarea  id="remark" name="remark" class="form-control" rows="4"></textarea>
				</div>
			
				<button type="submit" class="btn btn-default">提交</button>
			</form>
			
			</div>
			</div>
			</div>
				</div>
			


<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>