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
		<img src="../image/sample.png" width="80" height="80" alt="마시마로" 
		onclick="location.href='../index.do'" style="cursor: pointer;"><br>
		<h5>입력하신 ${id }은(는)<br>
		사용 가능한 아이디 입니다.</h5>
		<input type="button" value="사용하기" onclick="checkIdClose('${id }')">
	</form>
<script type="text/javascript">
function checkIdClose(id) {
	opener.writeForm.id.value = id
	opener.writeForm.check.value = id // 중복체크 버튼을 눌렀다는 확인
	window.close()
	opener.writeForm.pwd.focus()
}
</script>
</body>
</html>