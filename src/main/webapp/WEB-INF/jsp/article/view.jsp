<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시판</title>
<<<<<<< HEAD
<script type="text/javascript">
	function confirmDelete() {
		if (confirm("삭제하시겠습니까?"))
			return true;
		else
			return false;
	}
</script>
=======
>>>>>>> 41c6b33146056297b4fbba4c059b31a684646fe7
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>글 보기</h2>
	<p>
<<<<<<< HEAD
		<a href="./app/article/list">글목록</a>
		<c:if test="${article.userId == sessionScope.MEMBER.memberId }">
			<a href="./app/article/updateForm?articleId=${article.articleId }">글수정</a>
			<a href="./app/article/delete?articleId=${article.articleId }"
				onclick="return confirmDelete();">글삭제</a>
		</c:if>
=======
		<a href="./app/article/list">글 목록</a> 
		
>>>>>>> 41c6b33146056297b4fbba4c059b31a684646fe7
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
<<<<<<< HEAD
=======
	
	<c:if test="${sessionScope.Member.memberId == Article.userId}">
	<a href="./app/article/updateForm?articleId=${article.articleId}"><button type="submit">수정</button></a>
	<a href="./app/article/deleteForm?articleId=${article.articleId}"><button type="submit">삭제</button></a>
	</c:if>
	
>>>>>>> 41c6b33146056297b4fbba4c059b31a684646fe7
</body>
</html>