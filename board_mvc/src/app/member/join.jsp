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
				<header class = "major">
					<a href="javascript:void(0)" class="image main"><img src="${pageContext.request.contextPath}/images/join01.png"></a>
					<h1>회원가입</h1>
					<p>
						환영합니다 고객님<br>
						회원가입 후 정상적인 서비스를 이용하실 수 있습니다.
					</p>
					</header>
					<hr>
					<form method="post" action="${pageContext.request.contextPath}/member/MemberJoinOk.me" name="joinForm">
						<div style="display:flex; justify-content:space-around;">
							<div style="width:40%;">
								<p style="background:#fd3a3a2e">
									<span style="color:red; font-size:2rem; font-weight:bold">*</span>
									아래 항목은 모두 작성해주세요.
								</p>
								<div>
									<div class="col-6 col-12-xsmall" style="width:100%">
										<p style = "margin:0">
											아이디<span id="idCheck_text" style="font-size:0.7em"></span>
										</p>
										<input type="text" name="memberId" id="member_id" value="" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"/>
										<br>
										<p style="margin:0">비밀번호</p>
										<input type="password" name="memberPw" id="member_id" value="" placeholder="영문4자 이상, 최대20자"/>
										<br>
										<div style="display:flex; justify-content:space-between;">
											<div style="width:48%">
												<p style="margin:0">이름</p>
												<input type="text" name="memberName" id="memberName" value="">
											</div>										
											<div style="width:48%">
												<p style="margin:0">나이</p>
												<input type="text" name="memberAge" id="memberAge" value="">
											</div>										
										</div>
										<hr>
										<div style="margin-top:6%; margin-bottom:6%">
											<input type="checkbox" id="term" name="term">
											<label for="term" style="font-size:1.1em; font-weight:bold;">전체 동의합니다.</label>
										</div>
										<div class="col-12" style="display:flex; justify-content:space-between">
											<div>
												<input type="checkbox" id="term1" name="term1" class="terms">
												<label for="term1">서비스 이용약관</label>
											</div>
											<div>
												<a href="term1-content">펼쳐보기</a>
											</div>
											<textarea name="term1-content" id="term1-content" rows="3" style="display:none"></textarea>
										</div>
											<div class="col-12" style="display:flex; justify-content:space-between">
											<div>
												<input type="checkbox" id="term2" name="term2" class="terms">
												<label for="term2">개인정보 수집 및 이용</label>
											</div>
											<div>
												<a href="term2-content">펼쳐보기</a>
											</div>
											<textarea name="term2-content" id="term2-content" rows="3" style="display:none"></textarea>
										</div>
										<br>
									</div>
								</div>
								<hr>
								
							</div>
							<div style="width:40%;"></div>
						</div>
					</form>
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
