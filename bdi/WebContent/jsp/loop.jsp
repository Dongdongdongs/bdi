<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] strs = {"a","b","c","d","aa","bb","cc","dd","a1","a2"};

for(int i=1;i<=10;i++){
%>
	<%=i%>.<%=strs[i-1] %><br>
	<%=i + "." + strs[i-1] %><br>

<%
}
%>

</body>
</html>