<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시판</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>글 등록</h2>
	<p>
<<<<<<< HEAD
		<a href="./app/letter/listSender">보낸 목록</a>
	</p>
	<form action="./app/letter/addletter" method="post">
	    <p>받는사람</p>
	    	<input type ="text" name="receiverId" value="${param.receiverId }"/>
	    	<input type ="text" name="receiverName" value="${param.receiverName }"/>
=======
		<a href="./app/article/list">글 목록</a>
	</p>
	<form action="./app/article/add" method="post">
	<p>회원이름 : ${MEMBER.name }</p>
>>>>>>> 41c6b33146056297b4fbba4c059b31a684646fe7
		<p>제목 :</p>
		<p>
			<input type="text" name="title" maxlength="100" style="width: 100%;" required>
		</p>
		<p>내용 :</p>
		<p>
			<textarea name="content" style="width: 100%; height: 200px;" required></textarea>
		</p>
		<p>
			<button type="submit">등록</button>
		</p>
	</form>
</body>
</html>