<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/WEB-INF/views/pikka/nav.jsp"%>

	<c:out value="${error}"/>
	<c:out value="${logout}"/>
	
	
	
	<form class="form-signin" action="/login" method="post">
	

		<label for="inputEmail" class="sr-only">userId</label> <input
			type="text" name="username" class="form-control mb-1"
			placeholder="User Id" required autofocus> <label
			for="inputPassword" class="sr-only">userPw</label> <input
			type="password" name="password" class="form-control mb-1"
			placeholder="Password" required>

		<div class="checkbox mb-1 ml-auto">
			<label> <input type="checkbox" name="remember-me">
				Remember me
			</label>
		</div>
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			
		<button class="btn btn-lg btn-dark btn-block" type="submit">로그인</button>

		<!-- <p class="mt-5 mb-3 text-muted">&copy; 2020-2022</p> -->
	</form>


<%@ include file="/WEB-INF/views/pikka/footer.jsp"%>
</body>
</html>