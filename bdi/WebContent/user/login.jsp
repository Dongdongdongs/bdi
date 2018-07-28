<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   <%-- <% 이게 들어가면 더이상 html이 아니다 %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	// 여긴 이제 자바 코딩, 메서드 선언이 안됨

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
session.setAttribute("id",id);
session.setAttribute("pwd",pwd);

	

	out.write("니가 입력한 ID : " + id);
	out.write("니가 입력한 비밀번호 : " +  pwd);
	
	if(id==null){
		out.println("아이디를 입력해주세요.");
		return;
		
	}
	if(pwd==null){
		out.println("비밀번호를 입력해주세요.");
		return;
	}
	
	if(id.equals("가나다라마")){
		if(pwd.equals("aaaaaa")){
			out.println("와우~ 로그인 성공~");
		}else {
			out.println("비밀번호를 다시 입력해주세요.");
		}
	} else{
		out.println("없는 아이디입니다. 다시 확인해주세요.");
	}
%>
</body>
</html>