<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
<title>회원가입</title>
</head>
<body class="is-preload">
	<!-- Page Wrapper -->
	<div id="page-wrapper">
	
		<!-- Wrapper -->
		<div class="wrapper">
			<div class="inner">
				<jsp:include page="../fix/header.jsp"/>
			</div>
		</div>
		
		<!-- Wrapper -->
		<div class="wrapper">
			<div class="inner">
				<!-- Main -->
				<section class="main">
					<a href="javascript:void(0)" class="image main"><img src="${pageContext.request.contextPath}/images/join01.png"></a>
					<h1>회원가입</h1>
					<p>
						환영합니다 고객님<br>
						회원가입 후 정상적인 서비스를 이용하실 수 있습니다.
					</p>
				</section>
			</div>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</html>
