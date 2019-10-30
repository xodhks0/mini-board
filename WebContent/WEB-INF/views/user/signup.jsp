<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/user/signup" onsubmit="return checkForm()">
		<!-- 이벤트만 소문자 통일 -->
		<table border="1">
			<tr>
				<th>이름</th>
				<td><input type="text" name="uiName" id="uiName"></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="uiId" id="uiId"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="uiPwd" id="uiPwd"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="uiPwdCheck" id="uiPwdCheck"></td>
			</tr>
			<tr>
				<th colspan="2">
					<button >회원가입</button>
				</th>
			</tr>
		</table>
	</form>
	<script>
		function checkForm() {
			var uiName = document.getElementById('uiName').value;
			var uiIdObj = document.getElementById('uiId');
			var uiPwdObj = document.getElementById('uiPwd');
			var uiPwdCheckObj = document.getElementById('uiPwdCheck');

			if (uiName.trim().length < 2) {
				alert('이름은 2글자 이상입니다.');
				document.getElementById('uiName').value = '';
				document.getElementById('uiName').focus();
				return false;
			}

			if (uiIdObj.value.trim().length < 5) {
				alert('아이디는 5글자 이상입니다.');
				uiIdObj.value = '';
				uiIdObj.focus();
				return false;
			}

			if (uiPwd.value.trim().length < 5) {
				alert('비밀번호는 5글자 이상입니다.');
				uiPwdObj.value = '';
				uiPwdObj.focus();
				return false;
			}

			if (uiPwdCheckObj.value != uiPwd.value) {
				alert('비밀번호와 비밀번호 체크가 일치하지 않습니다.');
				uiPwdCheckObj.value = '';
				uiPwdCheckObj.focus();
				return false;
			}
			return true;
		}
	</script>
</body>
</html>