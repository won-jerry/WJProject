<%@page import="membership.MemberDTO"%>
<%@page import="utils.JSFunction"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//회원가입 페이지에서 사용자가 입력한 회원 정보 받기
String userId = request.getParameter("userid");
String userPwd = request.getParameter("pass2");
String userName = request.getParameter("name");
String userGen = request.getParameter("gender");
String userBirth = request.getParameter("birthday");
String userZCode = request.getParameter("zipcode");
String userAddr1 = request.getParameter("address1");
String userAddr2 = request.getParameter("address2");
String userEmail = request.getParameter("email1") + "@" + request.getParameter("email2");
String userMobNum = request.getParameter("mobile1") + "-" + request.getParameter("mobile2") + "-"
		+ request.getParameter("mobile3");

//JDBC를 통해 오라클 접속
MemberDAO dao = new MemberDAO(application);
// dto에 값들 저장
MemberDTO dto = new MemberDTO();
dto.setUserid(userId);
dto.setPass(userPwd);
dto.setName(userName);
dto.setGender(userGen);
dto.setBirthday(userBirth);
dto.setZipcode(userZCode);
dto.setAddress1(userAddr1);
dto.setAddress2(userAddr2);
dto.setEmail(userEmail);
dto.setMobile(userMobNum);

// 값이 입력되면 dao.memberInsert(dto)는 1을 return 하므로..
int result = dao.memberInsert(dto);

if (result == 1) {
	// 1이면 "가입 성공" 메세지를 경고창에 띄우고 memberLogin.jsp로 이동
	JSFunction.alertLocation("가입 성공", "login.jsp", out);
} else {
	// 1이 아니면 "가입 실패" 메세지를 경고창에 띄우고 다시 back!!
	JSFunction.alertBack("가입 실패", out);
}
// DB 작업이 끝나면 자원 해제
dao.close();
%>

