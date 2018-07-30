<%@ page language="java" contentType="text/html; charset=UTF-8"	
    pageEncoding="UTF-8"%>	<!-- 디렉티브 -->
<%!			/* 선언부 */
public String test(){
	return "난 테스트 함수!!";
}

%>
<%			// 실행부, 스크립트리
String str = test();

%>
<%=str	// 표현식
%> 