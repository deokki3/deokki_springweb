<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시판</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>글 보기</h2>
	<p>
		<a href="./app/article/list">글 목록</a> 
		
	</p>
	<hr />
	<p>
		<span>${article.articleId }</span> | <span style="font-weight: bold;">${article.title }</span>
	</p>
	<p>
		<span>${article.cdate }</span> | <span>${article.name }</span>
	</p>
	<hr />
	<p>${article.contentHtml }</p>
	<hr />
	
	<c:if test="${sessionScope.Member.memberId == Article.userId}">
	<a href="./app/article/updateForm?articleId=${article.articleId}"><button type="submit">수정</button></a>
	<a href="./app/article/deleteForm?articleId=${article.articleId}"><button type="submit">삭제</button></a>
	</c:if>
	
</body>
</html>