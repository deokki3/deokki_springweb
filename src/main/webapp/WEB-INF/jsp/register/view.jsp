<!doctype html>
<!--
p.284 [리스트 11.13] 글 조회
-->
<html> 
<head> 
<base href="${pageContext.request.contextPath }/" /> 
<title>글 조회</title> 
</head> 
<body> 
<table border="1">
<tr>
<td>글 번호</td><td> ${article.articleId}
</td>
</tr>
<tr>
<td>이름 </td><td> ${article.name}
</td>
</tr>
<tr>
<td>학번 </td><td> ${article.userId}
</td>
</tr>

<tr>
<td>글 제목 </td><td> ${article.title}
</td>
</tr>
<tr>
<td>내용 </td><td> ${article.content}
</td>
</tr>
<tr>
<td>등록 날짜 </td><td> ${article.cdate}
</td>
</tr>


</table>
	<p>
		<a href="./app/articles">[목록]</a>
	</p>
</body> 
</head> 
</html>

