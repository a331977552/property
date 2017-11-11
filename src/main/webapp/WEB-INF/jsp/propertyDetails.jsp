<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html >

<html>

<head>
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
<!-- Core CSS file -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/photoswipe/photoswipe.css">

<!-- Skin CSS file (styling of UI - buttons, caption, etc.)
     In the folder of skin CSS file there are also:
     - .png and .svg icons sprite, 
     - preloader.gif (for browsers that do not support CSS animations) -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/photoswipe/default-skin/default-skin.css">

<!-- Core JS file -->
<script
	src="${pageContext.request.contextPath}/photoswipe/photoswipe.min.js"></script>

<!-- UI JS file -->
<script
	src="${pageContext.request.contextPath}/photoswipe/photoswipe-ui-default.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">

function showGallery(index){
	
	var pswpElement = document.querySelectorAll('.pswp')[0];

	//build items array
	var items = [];
	<c:forEach items="${vo.imgs}" var="img">
	items.push({
		src : "/${img.url}",
		title : 'Image Caption',
		w : 1280,
		h : 768,
		msrc : "${pageContext.request.contextPath}/img/no_pic.png"
	});
	</c:forEach>
	//define options (if needed)
	var options = {
		// optionName: 'option value'
		// for example:
		index : index
	// start at first slide
	};

	//Initializes and opens PhotoSwipe
	var gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, items,
			options);

	gallery.init();

}
	
</script>
<style type="text/css">
.my-gallery {
	width: 400px;
	height: 400px;
}

.my-gallery img {
	width: 100%;
	height: auto;
}
</style>
<link rel="icon" href="${pageContext.request.contextPath}/img/logo.png" type="image/x-icon"/>
<title>star jet property</title>
</head>
<body>
<div class="container">
	<jsp:include page="../../header.jsp"></jsp:include>

<div class="panel panel-default">
<div class="row panel panel-default" style="margin: 10px; margin-top: 10px;">

<div style="margin-top: 20px; margin-bottom: 20px;" class="col-lg-offset-0 col-lg-4 col-md-4 col-sm-10 col-sm-offset-1 col-xs-12"> 
	<div id="carousel-example-generic2" class="carousel slide responsive_pic"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<c:forEach begin="0" end="${vo.imgs.size()-1}" var="i">
				<c:if test="${i==0}">
					<li data-target="#carousel-example-generic2" data-slide-to="0"
						class="active"></li>
				</c:if>

				<c:if test="${i!=0}">
					<li data-target="#carousel-example-generic2" data-slide-to="${i}"></li>
				</c:if>
			</c:forEach>
		</ol>
		
		<!-- Wrapper for slides -->
		
		<div class="carousel-inner" style="width: 100%; height:  100%;" role="listbox">
			<c:forEach begin="0" end="${vo.imgs.size()-1}" var="i">
				<c:if test="${i==0}">
					<div class="item active">						
					<span style="cursor: pointer;" onclick="showGallery(${i})"  >
						<img style="width: 100%; height:100%;" src="/${vo.imgs[i].url}" alt="..."/>
					</span>
						<!-- <div class="carousel-caption"></div> -->
					</div>
					
				</c:if>
				<c:if test="${i!=0}">
					<div class="item">
					
					<span style="cursor: pointer;" title="${i}" onclick="showGallery(${i})"  >
						<img style="width: 100%; height:  100%;" src="/${vo.imgs[i].url}" alt="..."/>
						</span>
					<!-- 	<div class="carousel-caption">...</div> -->
					</div>
					
				</c:if>
			</c:forEach>
		
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic2"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic2"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	</div>
	<div style="margin-top: 20px; margin-bottom: 20px;" class="col-lg-offset-1 col-md-offset-1  col-lg-4 col-md-4 col-sm-10 col-sm-offset-1 col-xs-12"> 
			
			<strong style="width: 150px;">房屋名称:</strong><p class="text-left" >${vo.property.name}</p> 
			<strong style="width: 150px;">房屋类型:</strong><p class="text-left">${vo.property.housetype}</p> 	  
			<strong style="width: 150px;">价格:</strong>   <p class="text-left">${vo.property.price}磅</p> 
			<strong style="width: 150px;">地点:</strong>   <p class="text-left">${vo.property.location}</p> 
			<strong style="width: 150px;">邮编:</strong>   <p class="text-left">${vo.property.postcode}</p> 
			<strong style="width: 150px;">可租日期:</strong><p class="text-left">
			<fmt:formatDate value="${vo.property.rentdate}" pattern="yyyy-MM-dd"/>
			</p> 
			
	</div>
</div>
<div class="row " style="margin: 10px; margin-top: 30px;">
<div class="page-header">
  <h1>房屋简介:</h1>
</div>
</div>
<div class="row" style="margin: 10px;margin-left:10px;min-height:300px; height:300px; margin-top: 30px;">
	<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
${vo.property.introduction}
	</div>
	
	<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="height: 300px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2289.9904716663596!2d-1.6214041839599551!3d54.973266259307955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487e70b55539cc6f%3A0xf84f45f4eed3b0d9!2sChinatown!5e0!3m2!1sen!2suk!4v1509301542806" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>

	</div>
	

</div>


</div>


	<!-- Root element of PhotoSwipe. Must have class pswp. -->
	<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

		<!-- Background of PhotoSwipe. 
         It's a separate element, as animating opacity is faster than rgba(). -->
		<div class="pswp__bg"></div>

		<!-- Slides wrapper with overflow:hidden. -->
		<div class="pswp__scroll-wrap">

			<!-- Container that holds slides. PhotoSwipe keeps only 3 slides in DOM to save memory. -->
			<!-- don't modify these 3 pswp__item elements, data is added later on. -->
			<div class="pswp__container">
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
			</div>
		
			<!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
			<div class="pswp__ui pswp__ui--hidden">

				<div class="pswp__top-bar">

					<!--  Controls are self-explanatory. Order can be changed. -->

					<div class="pswp__counter"></div>

					<button class="pswp__button pswp__button--close"
						title="Close (Esc)"></button>

					<button class="pswp__button pswp__button--share" title="Share"></button>

					<button class="pswp__button pswp__button--fs"
						title="Toggle fullscreen"></button>

					<button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

					<!-- Preloader demo https://codepen.io/dimsemenov/pen/yyBWoR -->
					<!-- element will get class pswp__preloader--active when preloader is running -->
					<div class="pswp__preloader">
						<div class="pswp__preloader__icn">
							<div class="pswp__preloader__cut">
								<div class="pswp__preloader__donut"></div>
							</div>
						</div>
					</div>
				</div>

				<div
					class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
					<div class="pswp__share-tooltip"></div>
				</div>

				<button class="pswp__button pswp__button--arrow--left"
					title="Previous (arrow left)"></button>

				<button class="pswp__button pswp__button--arrow--right"
					title="Next (arrow right)"></button>

				<div class="pswp__caption">
					<div class="pswp__caption__center"></div>
				</div>

			</div>

		</div>

	</div>





	<jsp:include page="../../footer.jsp"></jsp:include>
</div>

</body>
</html>