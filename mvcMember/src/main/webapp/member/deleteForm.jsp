<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.dao.MemberDAO" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div#pwdDiv {
	color: red;
	font-weight: bold;
}
	.container {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	form {
		margin-left: auto;
		margin-right: auto;
		text-align: left;
	}	
</style>
</head>
<body>
	<div class="container">
	<img src="../image/sample.png" width="300" height="300" alt="마시마로" 
	onclick="location.href='../index.jsp'" style="cursor: pointer;"><br>
	<form name="deleteForm" method="post" action="deleteForm.do">
		<h3>비밀번호 입력 : <input type="password" name="pwd" id="pwd">
		<input type="button" value="검색" onclick="checkDelete()"></h3>
		<br><br>
		<div id="pwdDiv">
			<%if(pwd != null && !exist) { %>
				비밀번호가 맞지 않습니다.
			<%} %>
		</div>
	</form>
</div>	
<script type="text/javascript">
function checkDelete() {
	document.getElementById("pwdDiv").innerText="";
	
	if(document.getElementById("pwd").value == "")
		document.getElementById("pwdDiv").innerText="먼저 비밀번호를 입력하시오.";
	
	else
		document.deleteForm.submit();
  }
</script>
</body>
</html>