<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시판</title>
<script type="text/javascript">
	function confirmDelete() {
		if (confirm("삭제하시겠습니까?"))
			return true;
		else
			return false;
	}
</script>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>편지 보기</h2>
	<p>
		<a href="./app/members">회원목록</a>
			<a href="./app/letter/delete?letterId=${letter.letterId }"
				onclick="return confirmDelete();">글삭제</a>
		<button type="button" onclick="history.back();">뒤로가기</button>
				
		
		<input type="hidden" name="mode" value="${param.mode}" />
	</p>
	<hr />
	<p>
	    <span style="font-weight: bold;">제목 :${letter.title }</span>
	</p>
	<p>
		<span>등록일시: ${letter.cdate }</span> | <span>수신인 :${letter.receiverName }(${letter.receiverId })</span>
	</p>
	<p>
		<span>발신인:${letter.senderName }(${letter.senderId })</span>
	</p>
	<hr />
	<p>${letter.content }</p>
	<hr />
</body>
</html>