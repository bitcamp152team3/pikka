<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="kor">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="icon/booking.png">
<link rel="stylesheet" href="css/style.css">
<title>회원 가입</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>

<body>

	<jsp:include page="/WEB-INF/views/pikka/nav.jsp" flush="true" />

	<security:authentication property="principal.userVO" var="userVO_sc" />
	<div class="container">
		<div class="">
			<h1>My Page</h1>
			<hr>
		</div>

		<div class="">
			<h4>나의 이용권</h4>
			<br>
			<div class="row justify-content-center">
				<br>
				<div class="table-responsive table-bordered">
					<table class="table">
						<thead>
							<tr style="text-align: center;">
								<th>좌석 이용권 번호</th>
								<th>좌석 번호</th>
								<th>사용시간</th>
								<th>가격</th>
								<th>시작 시간</th>
								<th>종료 시간</th>
								<th>잔여 시간</th>
							</tr>
						</thead>
						<tbody>
							<tr style="text-align: center;">
								<td>${seatTicket.seatTicketNo}</td>
								<td>${seatTicket.seatNo}</td>
								<td>${seatTicket.seatType}</td>
								<td>${seatTicket.seatPrice}</td>
								<td>${seatTicket.seatStartTime}</td>
								<td>${seatTicket.seatEndTime}</td>
								<td>${seatTicket.seatAvailableTime}</td>
							</tr>
						</tbody>
					</table>
				</div>



				<br>
				<div class="table-responsive table-bordered">
					<table class="table">
						<thead>
							<tr style="text-align: center;">
								<th>사물함 이용권 번호</th>
								<th>사물함 번호</th>
								<th>사용일</th>
								<th>가격</th>
								<th>시작일</th>
								<th>종료일</th>
							</tr>
						</thead>
						<tbody>
							<tr style="text-align: center;">
								<td>${locTicket.lockerTicketNo}</td>
								<td>${locTicket.lockerNo}</td>
								<td>${locTicket.lockerUseDays}</td>
								<td>${locTicket.lockerUsePrice}</td>
								<td>${locTicket.lockerStartDate}</td>
								<td>${locTicket.lockerEndDate}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<hr>
		</div>

		<div class="">
			<h4>회원 정보</h4>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-6 col-cs-12 md-auto">
				<form class="needs-validation" action="/user/modify" method="post">
					<hr>
					<div class="mb-3">
						<label for="userId">아이디<span class="text-muted">(필수)</span></label>
						<input type="text" class="form-control" id="userId"
							value="${userVO_sc.userId}" name="userId" readonly>
					</div>
					<div class="mb-3">
						<label for="userId">이름<span class="text-muted">(필수)</span></label>
						<div class="input-group">
							<input type="text" class="form-control" id="userName"
								name="userName" value="${userVO_sc.userName}" readonly>
						</div>
					</div>
					<div class="mb-3">
						<label for="userTel">전화번호</label>
						<div class="input-group">
							<input type="text" class="form-control" id="userTel"
								name="userTel" placeholder="전화번호를 작성해 주세요.">
						</div>
					</div>
					<div class="mb-3">
						<label for="userPw">비밀번호</label>
						<div class="input-group">
							<input type="text" class="form-control" id="userPw" name="userPw"
								placeholder="비밀번호를 작성해 주세요.">
						</div>
					</div>
					<hr class="mt-4 mb-4">
		
					<button 
						data-oper="modify" class="btn btn-dark btn-lg btn-block" onclick="if(!(confirm('수정되었습니다. 다시 로그인 해 주세요.'))) return false;"
						type="submit" id="modifyUser">회원 수정</button>
					<button onclick="if(!(confirm('탈퇴되었습니다.'))) return false;"
						data-oper="delete" class="btn btn-dark btn-lg btn-block"
						type="submit" id="delete">회원 탈퇴</button>
				</form>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {
				var formObj = $("form");
				$('button').on("click", function(e) {

					e.preventDefault();

					var operation = $(this).data("oper");

					console.log(operation);

					console.log($('#userId'));

					if (operation === 'delete') {
						formObj.attr("action", "/delete/");

					}

					formObj.submit();

				});
			});
		</script>

		<footer class="my-5 text-muted text-center text-small">
			<p class="mb-1">&copy; 2020 - 2022 Company Name</p>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Privacy</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Support</a></li>
			</ul>
		</footer>
	</div>

	<%@ include file="/WEB-INF/views/pikka/footer.jsp"%>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/jquery.maskedinput.min.js"></script>
<script>
	$(document).ready(function() {
		$('#userTel').mask('010-9999-9999');
	});
</script>
</html>
