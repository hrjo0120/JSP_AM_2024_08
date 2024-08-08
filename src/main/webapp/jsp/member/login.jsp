<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<a href="../home/main">메인 페이지로 </a>

	<h2>로그인</h2>

	<script type="text/javascript">
		function LoginForm__submit(form) {

			let loginId = form.loginId.value.trim();
			let loginPw = form.loginPw.value.trim();
			

			if (loginId.length == 0) {
				alert('아이디를 입력해주세요');
				return;
			}
			if (loginPw.length == 0) {
				alert('비밀번호를 입력해주세요');
				return;
			}
			
			/* 함수 내에서 수동으로 서브밋 */
			form.submit();
		}
	</script>

 <!-- <a onclick="if(confirm('진짜 이동???') == false) return false;" href="https://www.naver.com" target="_blank">네이버</a> -->

	<!-- 입력된 것들 취합해서 전송 -->
	<!-- js가 우선이기 때문에 submit(제출)될 때 안에 함수를 쓰면 먼저 실행된다. 함수 실행 => return false 를 통해 공백입력 막기 -->
	<!--  -->
	<form method="POST" action="doLogin"
		onsubmit="LoginForm__submit(this); return false;">

		<div>
			아이디 : <input autocomplete="off" type="text" placeholder="아이디 입력해"
				name="loginId" />
		</div>
		<div>
			비밀번호 : <input autocomplete="off" type="text"
				placeholder="비밀번호를 입력하세요." name="loginPw" />
		</div>
		
		<button type="submit">로그인</button>
	</form>

	<div>
		<a style="color: green" href="../article/list">리스트로 돌아가기</a>
	</div>

</body>
</html>