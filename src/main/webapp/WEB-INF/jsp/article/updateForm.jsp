<<<<<<< HEAD

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
=======
>>>>>>> 41c6b33146056297b4fbba4c059b31a684646fe7
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<<<<<<< HEAD
<title>게시판</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>글 수정</h2>
	<form action="./app/article/update" method="post">
		<p>제목 :</p>
		<p>
			<input type="text" name="title" value="${article.title }" maxlength="100"
				style="width: 100%;" required>
		</p>
		<p>내용 :</p>
		<p>
			<textarea name="content" style="width: 100%; height: 200px;" required>${article.content }</textarea>
		</p>
		<p>
			<button type="submit">등록</button>
			<button type="button" onclick="history.back();">취소</button>
		</p>
		<input type="hidden" name="articleId" value="${article.articleId }" />
=======
<title>글수정</title>
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h1>글수정</h1>
	<form action="./app/article/update?articleId=${article.articleId}" method="post">
			글제목:<br> <input type="text" name="title" value="${article.title}">
			
		<p>
			글내용:<br><textarea name="content">${article.content}</textarea>
		</p>
		<button type="submit">수정</button>
>>>>>>> 41c6b33146056297b4fbba4c059b31a684646fe7
	</form>
</body>
</html>