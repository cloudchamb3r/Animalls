<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니모올즈</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@2.0/nanumsquare.css">
<style>
	body		{ font-family: 'NanumSquare', sans-serif }
	.normal		{ font-weight: 400 }
	.bold		{ font-weight: 700 }
	.bolder		{ font-weight: 800 }
	.light		{ font-weight: 300 }
	
	.fade-transition {
    transition: all 0.8s ease;
    overflow: hidden;
    visibility: visible;
    opacity: 1;
    position: absolute;
	}
	.fade-enter, .fade-leave {
	    opacity: 0;
	    visibility: hidden;
	}
</style>
<link href="/Animalls/css/carousel.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	
	<main>
	  <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
	    <div class="carousel-indicators">
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
	    </div>
	    <div class="carousel-inner">
	      <div class="carousel-item active">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect></svg>
	        <div class="container">
	          <div class="carousel-caption text-start">
	            <h1>Example headline.</h1>
	            <p class="opacity-75">Some representative placeholder content for the first slide of the carousel.</p>
	            <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>
	          </div>
	        </div>
	      </div>
	      <div class="carousel-item">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect></svg>
	        <div class="container">
	          <div class="carousel-caption">
	            <h1>Another example headline.</h1>
	            <p>Some representative placeholder content for the second slide of the carousel.</p>
	            <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
	          </div>
	        </div>
	      </div>
	      <div class="carousel-item">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect></svg>
	        <div class="container">
	          <div class="carousel-caption text-end">
	            <h1>One more for good measure.</h1>
	            <p>Some representative placeholder content for the third slide of this carousel.</p>
	            <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
	          </div>
	        </div>
	      </div>
	    </div>
	    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
	      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	      <span class="visually-hidden">Previous</span>
	    </button>
	    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
	      <span class="carousel-control-next-icon" aria-hidden="true"></span>
	      <span class="visually-hidden">Next</span>
	    </button>
	  </div>
		
	  
	  <div class="container mb-5">
	  <h2>고객 Pick</h2>
	    <div class="row">
	    
	      <div class="col-lg-3 mb-auto">
		    <a class="text-center" href="#">
		     <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false">
			     <title>Placeholder</title>
			     <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect>
		     </svg>
		    </a>
	        <h5 class="fw-normal mt-2 text-left">피부모질 닥터독 사료2kg</h5>
	        <p class="h3 text-left d-inline-block font-weight-bold mb-auto">32,500원</p>
	        <p class="d-block mb-3">리뷰 : 3,751 | ★ 4.7</p>
	      </div>
	      
	      <div class="col-lg-3 mb-auto">
		    <a class="text-center" href="#">
		     <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false">
			     <title>Placeholder</title>
			     <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect>
		     </svg>
		    </a>
	        <h5 class="fw-normal mt-2 text-left">피부모질 닥터독 사료2kg</h5>
	        <p class="h3 text-left d-inline-block font-weight-bold mb-auto">32,500원</p>
	        <p class="d-block mb-3">리뷰 : 3,751 | ★ 4.7</p>
	      </div>
	      
	      <div class="col-lg-3 mb-auto">
		    <a class="text-center" href="#">
		     <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false">
			     <title>Placeholder</title>
			     <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect>
		     </svg>
		    </a>
	        <h5 class="fw-normal mt-2 text-left">피부모질 닥터독 사료2kg</h5>
	        <p class="h3 text-left d-inline-block font-weight-bold mb-auto">32,500원</p>
	        <p class="d-block mb-3">리뷰 : 3,751 | ★ 4.7</p>
	      </div>
	      
	      <div class="col-lg-3 mb-auto">
		    <a class="text-center" href="#">
		     <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false">
			     <title>Placeholder</title>
			     <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect>
		     </svg>
		    </a>
	        <h5 class="fw-normal mt-2 text-left">피부모질 닥터독 사료2kg</h5>
	        <p class="h3 text-left d-inline-block font-weight-bold mb-auto">32,500원</p>
	        <p class="d-block mb-3">리뷰 : 3,751 | ★ 4.7</p>
	      </div>
	      
	    </div>
	  </div>
	  
	  <div id="app" class="container">
	  	<image-slider>
			<p>
				<a @click="prev">Previous</a> || <a @click="next">Next</a>
			</p>
			<div v-for="number in [currentNumber] transition="fade">
				<img :src="images[Math.abs(currentNumber) % images.length]" v-on:mouseover="stopRotation" v-on:mouseout="startRotation"	/>
			</div>
		</image-slider>
	  </div>
		
	</main>
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script>
        new Vue({
            el : "#app",
            data : {
            	
            },
            methods:{
            	
             }
        });
    </script>
</body>
</html>