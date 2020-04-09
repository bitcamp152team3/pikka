<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link rel="stylesheet" href="css/style.css">
<link rel="icon" href="icon/booking.png">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Pikka</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/pikka/nav.jsp"%>

	<div class="text-center">
		죄송합니다. 고객님<br> 페이지가 만료되었거나 이용하실 수 없는 페이지입니다. <br><br>

		<button type="submit" class="btn btn-warning"
			onclick="location.href='/'">Main</button>
	</div>

	<br>



	<%@ include file="/WEB-INF/views/pikka/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
</body>
</html>