<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<a href="../home/main">메인 페이지로 </a>

	<h2>회원가입</h2>

	<script type="text/javascript">
		function JoinForm__submit(form) {
			// form(submit 하려고한 폼)의 loginId(name으로 구분)의 value(입력된 값), loginId의 입력된 값(value) => input 태그 안에있는 name으로 구분함
			// console.log('form.loginId.value: ' + form.loginId.value) 로 콘솔 확인해보기
			// 로깅 주도 개발 
			// loginId의 입력된 값(value)이 0이면?

			/* console.log('form.loginId.value: ' + form.loginId.value);
			console.log('form.loginPW.value: ' + form.loginPw.value);
			console.log('form.loginPwConfirm.value: ' + form.loginPwConfirm.value);
			console.log('form.name.value: ' + form.name.value); */

			let loginId = form.loginId.value.trim();
			let loginPw = form.loginPw.value.trim();
			let loginPwConfirm = form.loginPwConfirm.value.trim();
			let name = form.name.value.trim();

			if (loginId.length == 0) {
				alert('아이디를 입력해주세요');
				return;
			}
			if (loginPw.length == 0) {
				alert('비밀번호를 입력해주세요');
				return;
			}
			if (loginPwConfirm.length == 0) {
				alert('비번확인을 입력해주세요');
				return;
			}

			if (loginPw != loginPwConfirm) {
				alert('비밀번호가 일치하지 않습니다');
				// 어디서부터 틀린지 모르기 때문에 focus를 줘서 어디서부터 틀렸는 지 알게함
				form.loginPw.focus();
				return;
			}

			if (name.length == 0) {
				alert('이름 입력해주세요');
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
	<form method="POST" action="doJoin"
		onsubmit="JoinForm__submit(this); return false;">

		<div>
			아이디 : <input autocomplete="off" type="text" placeholder="아이디를 입력하세요."
				name="loginId" />
		</div>
		<div>
			비밀번호 : <input autocomplete="off" type="text"
				placeholder="비밀번호를 입력하세요." name="loginPw" />
		</div>
		<div>
			비밀번호 확인 : <input autocomplete="off" type="text"
				placeholder="비밀번호를 다시 입력하세요." name="loginPwConfirm" />
		</div>
		<div>
			이름 : <input autocomplete="off" type="text" placeholder="이름을 입력하세요."
				name="name" />
		</div>
		<button type="submit">가입</button>
	</form>

	<div>
		<a style="color: green" href="../article/list">리스트로 돌아가기</a>
	</div>

</body>
</html>