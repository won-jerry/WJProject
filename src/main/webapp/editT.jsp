<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>One</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
<script type="text/javascript">
   //글쓰기 폼에서 누락된 내용이 있는지 확인하는 함수
    function validateForm(form) {   
        if (form.name.value == "") {
            alert("작성자를 입력하세요.");
            form.name.focus();
            return false;
        }
        if (form.title.value == "") {
            alert("제목을 입력하세요.");
            form.title.focus();
            return false;
        }
        if (form.content.value == "") {
            alert("내용을 입력하세요.");
            form.content.focus();
            return false;
        }
        /* if (form.pass.value == "") {
            alert("비밀번호를 입력하세요.");
            form.pass.focus();
            return false;
        } */
    }
</script>
<link
	href='<%=request.getContextPath()%>/http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="header">
		<div class="container">
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/index.jsp"><img
				src="<%=request.getContextPath()%>/images/logo.png"
				style="width: 150px" /></a>
		</div>
	</div>
	<div class="about">
		<div class="container">
			<section class="title-section">
				<h1 class="title-header">게시글 수정하기</h1>
			</section>
		</div>
	</div>
<form class="container" name="writeFrm" method="post" enctype="multipart/form-data" 
   action="<%=request.getContextPath()%>/mvcboard/editT.do" onsubmit="return validateForm(this);">
   
<!-- 게시물 수정을 위해 일련번호와 기존 파일명을 hidden박스에 추가한다.  -->
<input type="hidden" name="idx" value="${ dto.idx }"/>
<!-- 기존의 원본파일명 -->
<input type="hidden" name="prevOfile" value="${ dto.ofile }" />
<!-- 기존의 서버에 저장된 파일명 -->
<input type="hidden" name="prevSfile" value="${ dto.sfile }" />

<table class="table table-bordered" border="2" width="90%">
    <tr>
        <td>작성자</td>
        <td>
            <input type="text" name="name" style="width:150px;" value="${ dto.name }" />
        </td>
    </tr>
    <tr>
        <td>제목</td>
        <td>
            <input type="text" name="title" style="width:90%;" value="${ dto.title }" />
        </td>
    </tr>
    <tr>
        <td>내용</td>
        <td>
            <textarea name="content" style="width:90%;height:100px;">${ dto.content }</textarea>
        </td>
    </tr>
    <tr>
        <td>첨부 파일</td>
        <td>
           <c:if test="${ not empty dto.sfile }">
              ${ dto.ofile } 
              <input type="checkbox" name="deleteFile" value="1" />
              첨부된 파일을 삭제할 경우 체크해주세요. 체크된 경우에는 새로운
              파일을 업로드 할 수 없습니다.
              <br>
           </c:if>
           <!-- input태그의 type속성이 file타입인 경우에는 value속성은
           의미가 없다. value는 단순히 String(문자열)이므로 이 부분은
           DB에서 처리해야 한다. 해당 <input>태그는 선택한 파일을 
           서버로 전송하는 역할을 한다. -->
            <input type="file" name="ofile" />
        </td>
    </tr>
    <!-- 패스워드 검증을 마친후 수정페이지로 진입하였으므로 비밀번호
    입력창은 화면에서 제거한다.  -->
    <!-- <tr>
        <td>비밀번호</td>
        <td>
            <input type="password" name="pass" style="width:100px;" />
        </td>
    </tr> -->
    <tr>
        <td colspan="2" align="center">
            <button type="submit">작성 완료</button>
            <button type="reset">RESET</button>
            <button type="button" onclick="location.href='<%=request.getContextPath()%>/mvcboard/listT.do';">
                목록 바로가기
            </button>
        </td>
    </tr>
</table>    
</form>
<div class="footer">
			<div class="footer_bottom">
				<div class="follow-us">
					<a class="fa fa-facebook social-icon" href="https://www.ikosmo.co.kr/"></a> <a
						class="fa fa-twitter social-icon" href="https://www.ikosmo.co.kr/"></a> <a
						class="fa fa-linkedin social-icon" href="https://www.ikosmo.co.kr/"></a> <a
						class="fa fa-google-plus social-icon" href="https://www.ikosmo.co.kr/"></a>
				</div>
				<div class="copy">
					<p>
						Copyright &copy; 2022 KOSMO ESCAPE CAFE. Design by <a href="https://www.ikosmo.co.kr/" rel="nofollow">KOSMO</a>
					</p>
				</div>
			</div>
		</div>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.flexslider.js"></script>
</body>
</html>
