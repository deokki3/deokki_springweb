<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!-- 회원 목록 -->
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>회원 목록</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<a href="./app/letter/addletterForm?recevierId=&receiverName=?">편지쓰기</a>
	<h2>회원 목록</h2>
	<p>전체 ${totalCount }건</p>
	<form action="./app/members">
		<input type="number" name="page" value="${param.page }" placeholder="페이지"
			min="1" max="${totalCount / 100 + 1 }" step="1" style="width: 50px;">
		<button type="submit">조회</button>
	</form>
	<table>
		<thead>
			<tr>
				<td>회원번호</td>
				<td>이메일</td>
				<td>이름</td>
				<td>등록일시</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="member" items="${members}">
				<tr>
					<td>${member.memberId }</td>
					<td>${member.email }</td>
					<td>${member.name }</td>
					<td>${member.cdate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</head>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!-- 
회원 목록
-->
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>회원 목록</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>회원 목록</h2>
	<p>전체 ${totalCount }건</p>
	<form action="./app/members">
		<input type="number" name="page" value="${param.page }" placeholder="페이지"
			min="1" max="${totalCount / 100 + 1 }" step="1" style="width: 50px;">
		<button type="submit">조회</button>
	</form>
	<table>
		<thead>
			<tr>
				<td>회원번호</td>
				<td>이메일</td>
				<td>이름</td>
				<td>등록일시</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="member" items="${members}">
				<tr>
					<td>${member.memberId }</td>
					<td>${member.email }</td>
					<td>${member.name }</td>
					<td>${member.cdate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</head>
>>>>>>> 41c6b33146056297b4fbba4c059b31a684646fe7
</html>