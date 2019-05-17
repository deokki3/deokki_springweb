<!doctype html>
<!-- 
  	 글 쓰기
-->
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>글쓰기</title>
</head>
<body>
	<form action="./app/register/check" method="post">
		<p>
			제목:<br> <input type="text" name="title" value="${param.title }">
		</p>
		<p>
			내용:<br><textarea name="content" cols="50" rows="13"></textarea>

		</p>
		
		<button type="submit">저장</button>
	</form>
</body>
</html>