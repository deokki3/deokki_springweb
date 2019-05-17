<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!-- 
 글 목록
-->
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>회원 목록</title>
</head>
<body>
	<p>전체 ${totalCount }건</p>
	<form action="./app/articles">
		<input type="number" name="page" value="${param.page }" placeholder="페이지"
			min="1" max="${totalCount / 100 + 1 }" step="1" style="width: 50px;">
		<button type="submit">조회</button>
	<p>
		<a href="./app/register/write">[글쓰기]</a>
	</p>
	</form>
	<table>
		<thead>
			<tr>
				<td>글번호</td>
				<td>제목</td>
				<td>이름</td>
				<td>등록일시</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="article" items="${articles}">
				<tr>
					<td>${article.articleId }</td>
					<td><a href="./app/register/view?articleId=${article.articleId}">${article.title}</a></td>
					<td>${article.name }</td>
					<td>${article.cdate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</head>
</html>