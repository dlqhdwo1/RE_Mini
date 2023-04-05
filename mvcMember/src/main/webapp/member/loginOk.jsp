<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center;">
<h3><img src="../image/sample3.jpg" width="852" height="480" alt="마시마로" 
onclick="location.href='../index.do'" style="cursor: pointer;"><br>
${sessionScope.memName }님 로그인</h3>
<br>

<input type="button" value="로그아웃" onclick="location.href='logout.do'">	
<input type="button" value="회원정보수정" onclick="location.href='updateForm.do'">
<input type="button" value="회원탈퇴" onclick="location.href='deleteForm.jdo'">
</body>
</html>