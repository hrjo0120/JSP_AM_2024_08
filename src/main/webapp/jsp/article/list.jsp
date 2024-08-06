<%@ page import = "java.util.List" %>
<%@ page import = "java.util.Map" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// Attribute는 원래 String 이기 때문에 형변환이 필요함
	List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>
<body>
   
	<h2>게시물 목록</h2>

	<a href="../home/main">메인 페이지로 </a>
	
	<ul>
		<%
		for (Map<String, Object> articleRow : articleRows) {
		%>
		<li><a href="detail?id=<%=articleRow.get("id")%>"><%=articleRow.get("id")%>번,
				<%=articleRow.get("regDate")%>,<%=articleRow.get("title")%>,<%=articleRow.get("body")%></a></li>
		<%
		}
		%>
	</ul>
			
			
</body>
</html>