<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
//DB에서 실행한 결과를 받습니다.
request.setCharacterEncoding("UTF-8");
Integer result = (Integer) session.getAttribute("result");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 회원가입폼에서 전달받은 아이디 값 -->
<c:set var="userid" value="${param.userid}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복 확인</title>
<script type="text/javascript">
	function sendCheckValue() {
		//부모 from
		var openJoinfrm = opener.document.registFrm;
		//아이디 입력체크
		if (document.checkIdForm.chResult.value == "N") {
			alert("다른 아이디를 입력해주세요.");
			openJoinfrm.userid.focus();
			window.close();
		} else {
			// 중복체크 결과인 idCheck 값을 전달 및 스타일지정
			openJoinfrm.idDuplication.value = "idCheck";
			//readOnly말고 disabled하면 전송이 안됩니다 
			openJoinfrm.userid.readOnly = true;
			openJoinfrm.userid.style.opacity = 0.6;
			openJoinfrm.userid.style.cursor = "default";
			window.close();
		}
	}
</script>
</head>
<body>
	<b><font size="4" color="gray">ID 중복 확인</font></b>
	<br>
	<form name="checkIdForm">
		<input type="text" name="id" value="${userid}" id="userId" disabled>
		<c:choose>
			<c:when test="${result==1}">
				<p style="color: red">이미 사용 중인 아이디입니다.</p>
				<input type="hidden" name="chResult" value="N" />
				
				<input type="button" onclick="window.close()" value="취소" /><br/> 
			</c:when>
			<c:when test="${result==0 }">
				<p style="color: red">사용가능한 아이디입니다.</p>
				<input type="hidden" name="chResult" value="Y" />
				
				<input type="button" onclick="window.close()" value="취소" /><br/> 
				<input type="button" onclick="sendCheckValue()" value="사용하기" />
			</c:when>
			<c:otherwise>
				<p>오류 발생(-1)</p>
				<input type="hidden" name="chResult" value="N" />
			</c:otherwise>
		</c:choose>
		
	</form>
</body>
</html>