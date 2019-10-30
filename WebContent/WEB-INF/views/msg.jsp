<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String msg = (String) request.getAttribute("msg");
		String url = (String) request.getAttribute("url");
	%>
	<%=msg%>
	<%=url%>
	<script>
	alert('<%=msg%>');
	location.href='<%=url%>';
	</script>
	<!-- 	get 조회 but ! login은 post
			post 입력, 생성 
			put 수정
			delete 삭제
			option 가능한지 물어봄 -->
</body>
</html>