<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
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
	
<script type="text/javascript">
	function onSubmit(){
		var price=$("[name='price']").val();
		var name=$("[name='name']").val();
		var location=$("[name='location']").val();
		var postcode=$("[name='postcode']").val();
		var rentdate=$("[name='rentdate']").val();
		var introduction=$("[name='introduction']").val();
		if(price.length<=0 ||
				name.length<=0||
				location.length<=0||
				postcode.length<=0||
				rentdate.length<=0||
				introduction.length<=0 )	
			return false;

		
		
	return true;
	}


</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>星捷咨询服务公司</title>

</head>
<body>
	<div style="margin-top: 50px; margin-bottom:50px; padding:30px;" class="panel panel-primary  col-lg-6 col-md-6  col-sm-8 col-xs-10 
				col-lg-offset-3 col-md-offset-3  col-sm-offset-2 col-xs-offset-1
	text-center">
		<div class="text-left" style="font-size: 30px; margin-bottom: 30px;">添加房屋</div>
	<form action="${pageContext.request.contextPath}/mgr/addProperty.action" method="post" onsubmit="return  onSubmit()" enctype="multipart/form-data">
  <div class="form-group">
   
    <input type="number" class="form-control input-lg" name="price"  placeholder="房屋价格">
    
    
  </div>
  <div class="form-group">
  
    <input type="text" class="form-control input-lg"  name="name" placeholder="房屋名称">
  </div>
  
  <div class="form-group">
   
    <input type="text" class="form-control input-lg"  name="location" placeholder="房屋地点">
  </div>
  <div class="form-group">
  
    <input type="text" class="form-control input-lg" name="postcode" placeholder="PostCode">
  </div>
  
  <div class="form-group">
   
    <input type="date" class="form-control input-lg" name="rentdate" placeholder="起租时间">
  </div>
  <div class="form-group">
    <textarea  name="introduction" class="form-control input-lg"   placeholder="介绍"></textarea>
  </div>
  <div class="form-group">
  	
    <select name="housetype" class="form-control" style="width: 200px;">
    	<option value="一室" >一室</option>
    	<option value="二室" >二室</option>
    	<option value="三室" >三室</option>
    	<option value="四室" >四室</option>
    	<option value="四室以上" >四室以上</option>
    
    </select>  
  </div>
  
  
  
  <div class="form-group text-left" >
   
   <label for="inputFile" class="text-left text-default">请选择房屋图片:</label>
    <input type="file"  name="picture" multiple="multiple" id="inputFile">
    
  </div>
 
  <button type="submit" style="margin-top: 30px;" class="btn btn-default">Submit</button>
</form>
		
	</div>

</body>
</html>