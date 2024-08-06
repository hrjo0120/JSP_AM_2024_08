<%@ page import = "java.util.List" %>
<%@ page import = "java.util.Map" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
</head>
<body>

	<h2>게시물 목록 v1</h2>
	
	
	<ul>
		<!-- 값을 가져오기때문에 <% %>태그 뒤에 =을 작성해주고, "번"은 자바 영역 뒤에 작성해준다. -->
		<li><%=articleRows.get(0).get("id") %>번, <%=articleRows.get(0).get("regDate") %>, <%=articleRows.get(0).get("title") %>, <%=articleRows.get(0).get("body") %></li>
		<li><%=articleRows.get(1).get("id") %>번, <%=articleRows.get(1).get("regDate") %>, <%=articleRows.get(1).get("title") %>, <%=articleRows.get(1).get("body") %></li>
		<li><%=articleRows.get(2).get("id") %>번, <%=articleRows.get(2).get("regDate") %>, <%=articleRows.get(2).get("title") %>, <%=articleRows.get(2).get("body") %></li>
	</ul>
	
</body>
</html>