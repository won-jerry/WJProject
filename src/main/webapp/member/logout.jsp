<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 로그아웃 처리를 위한 방법
session.removeAttribute("userid");
session.removeAttribute("name");

session.invalidate();

response.sendRedirect("../member/login.do");
%>
