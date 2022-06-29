<%@ page import="membership.MemberDTO"%>
<%@page import="utils.JSFunction"%>
<%@ page import="membership.MemberDAO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//로그인 페이지에서 사용자가 입력한 회원정보 받기
String userId = request.getParameter("userid"); 
String userPwd = request.getParameter("pass");

String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL = application.getInitParameter("OracleURL");
String oracleId = application.getInitParameter("OracleId");
String oraclePwd = application.getInitParameter("OraclePwd");

//JDBC를 통해 오라클 접속
MemberDAO dao = new MemberDAO(application);
//받아온 아이디, 패스워드를 매개변수로 메서드 호출. 일치하는 회원정보가 있는지 확인함.
MemberDTO memberDTO = dao.memberLogin(userId, userPwd);
//DB작업이 끝나면 자원해제
dao.close();

//회원인증(로그인)에 성공한 경우
if(memberDTO.getUserid() != null) {
	/*
	Session 영역에 아이디와 이름을 저장한다.
	Session 영역은 페이지를 이동하더라도 웹 브라우저를 닫을 때까지 영역이 공유되어 접근할 수 있다.
	*/
	session.setAttribute("userid", memberDTO.getUserid());
	session.setAttribute("name", memberDTO.getName());
	// 로그인 페이지로 이동한다.
	
	response.sendRedirect("../index.jsp");
} else {
	JSFunction.alertBack("아이디 및 비밀번호가 맞지 않습니다.", out);
}
%>


