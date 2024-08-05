<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<% //이 영역 안쪽은 자바 영역
	int dan = Integer.parseInt(request.getParameter("dan"));
	int limit = Integer.parseInt(request.getParameter("limit"));
	String color = request.getParameter("color");
	

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>
	<!-- 자바 코드를 사용할때는 <% %>를 사용함. <% %>안의 '=' 의 유무는 단순 표현을 할땐 쓰지 않고, 변수명을 쓸 때 =을 작성한다. -->
	<h1>
		<div style="color:<%=color%>">==<%=dan%>단==
	</h1>
	
	<%
	for(int i=1; i<=limit; i++) {
	%>
	<div style="color:<%=color%>"><%=dan%>
	*
	<%=i%>
	=
	<%=dan * i%></div>
	
	<%
	}
	%>
	
	
</body>
</html>