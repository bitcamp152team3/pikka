<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/exLocker.css">
<link rel="icon" href="icon/booking.png">



<title>Pikka</title>
</head>

<body>
	<%@ include file="/WEB-INF/views/pikka/nav.jsp"%>


	<div class="row" style="margin: 40px;">
		<div class="col-lg-12">
			<h3 class="page-header">사물함 결제</h3>
		</div>
		<!-- /.col-lg-12 -->
	</div>

	<div class="row" style="margin: 40px;">
		<div class="col-lg-12" >
			<div class="panel panel-default">
				<div class="panel-heading"></div>
				<div class="panel-body">

					<div class="form-group">
						<label>상품 선택</label>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios1" value="option1" checked>30일
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios2" value="option2">60일
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios3" value="option3">90일
							</label>
						</div>
					</div>

					<div class="form-group">
						<label>결제수단 선택</label> <select class="form-control">
							<option>카드결제</option>
							<option>무통장입금</option>
						</select>
					</div>


					<div class="form-group">
						<label>사물함 이용권 구매 정보</label>
						<div style="margin-left:40px;">
						사물함 번호<br>
						상품<br> 
						가격<br> 
						사용기간 <br> 
						결제수단<br> 
						</div>
					</div>


				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>



	<%@ include file="/WEB-INF/views/pikka/footer.jsp"%>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>

</html>
