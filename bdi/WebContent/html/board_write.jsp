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
session.setAttribute("name","홍길동");/*<- 데이터타입 오브젝트 */

String name = (String)session.getAttribute("name");

String title = request.getParameter("title");
String content = request.getParameter("content");

if(title==null){
%>
<form onsubmit="return check(this)"> <!-- 서브밋 이벤트가 실행 체크 펑션이 리턴 펄스, 따라서 또 그값을 리턴함으로 이벤트가 펄스 -->
	<table border="1">
	<tr>
		<th colspan="2">글쓰기</th>
	</tr>
	<tr>
		<th>제목</th>
		<td><input type ="text" maxlength="50" required id="title" name="title"></td>
	</tr>
	<tr>
		<th>내용</th>
		<td>
			<textarea cols="50" rows="20" id="content" name="content"></textarea>
		</td>		
	</tr>
	<tr>
		<th>작성자</th>
		<td><input type="text" disabled value="<%=name%>"></td>
	</tr>
	<tr>
		<td colspan="3" style="text-align:center"><button>등록</button>
	</tr>
	
	</table>
</form>
<script>
	function check(fObj){
		if(fObj.title.value.trim().length<3){
			alert("제목은 3글자 이상이에여~~");
			fObj.title.value = "";
			fObj.title.focus();
			return false;			
		}
		if(fObj.content.value.trim().length<2){
			alert("내용은 2글자는 써야지유~");
			fObj.content.value="";
			fObj.content.focus();
			return false;
		}
		return true;	/* 글자수가맞는지 등등 유효성 검사를 하기위해서 줌 */
	}
</script>
<%
} else {
	out.write("니가 쓴 제목 : " + title);
	out.write("<br>");
	out.write("니가 쓴 내용 : " + content);
}
%>
</body>
</html>