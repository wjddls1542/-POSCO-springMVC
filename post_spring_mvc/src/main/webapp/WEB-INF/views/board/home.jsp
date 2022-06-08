<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<meta http-equiv="Content_Type" content="text/html;charset=utf-8"/>
	<meta charset="UTF-8">
</head>
<body>
<form action="/search" method="post">
	<input type="text" name="content">
	<input type="submit" value="찾기">	
</form>
<table>
<tr>
<td>제목</td>
<td>작성자</td>
<td>내용</td>
<td>작성일</td>
</tr>
<c:forEach var="row" items="${list}">
<tr>
	<td><a href="/detail?board_id=${row.board_id}">${row.title}</a></td>
		<td>${row.user}</td>
			<td>${row.content}</td>
			<td>${row.insert_date}</td>
			</c:forEach>

</table>
<a href="/create">글쓰기</a>
</body>
</html>
