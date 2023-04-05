<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center;">
	<form action="/mvcMember/member/checkId.do" method="post">
		<img src="../image/sample1.jpg" width="75" height="75" alt="마시마로" 
		onclick="location.href='../index.do'" style="cursor: pointer;"><br>
		<h5>입력하신 ${requestScope.id }은(는)<br>
		이미 사용중인 ID 입니다.<br>
		다른 ID를 입력하세요</h5>
		<input type="hidden" name="chResult" value="N" />
		아이디 <input type="text" name="id"><input type="submit" value="중복체크">
	</form>
</body>
</html>