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
	<div class="row" style="margin-left: 40px">
		<div class="col-lg-8">
			<h3 class="page-header">사물함 결제</h3>
		</div>
	</div>
	<div class="row" style="margin: 40px;">
		<div class="col-lg-8">
			<div class="panel panel-default">
				<div class="panel-heading"></div>
				<div class="panel-body">
					<div class="form-group">
						<label style="font-size: 21px;">상품 선택</label>
						<div class="radio" style="margin-left: 15px;">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios1" value="30"> 30일 - 5,000원
							</label>
						</div>
						<div class="radio" style="margin-left: 15px;">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios2" value="60"> 60일 - 10,000원
							</label>
						</div>
						<div class="radio" style="margin-left: 15px;">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios3" value="90"> 90일 - 14,000원
							</label>
						</div>
					</div>

					<br>
					<div class="form-group">
						<label style="font-size: 21px;">결제수단 선택</label>
						<div style="margin-left: 15px;">
							<select id="scPayType" class="form-control">
								<option>카드결제</option>
								<option>카카오페이</option>
								<option>네이버페이</option>
								<option>무통장입금</option>
							</select>
						</div>
					</div>
					<br>

					<div class="form-group">
						<label style="font-size: 21px;">사물함 이용권 구매 정보</label>
						<div style="margin-left: 15px;">

							<form action="/paylololololo" method="post" id="sendPay">
								사물함 번호: <input type="text" id="locNo" name="locNo"
									value="${locNo}" readonly style="border: none"> <br>
								상품: <input type="text" id="locType" name="locType" value=""
									readonly style="border: none"> <br> 가격: <input
									type="text" id="price" name="price" value="" readonly
									style="border: none"><br> 사용기간: <input type="text"
									id="usdDays" name="useDays" value="" readonly
									style="border: none; width: 500px"> <br> 결제수단: <input
									type="text" id="payType" name="payType" value="카드결제" readonly
									style="border: none"><br>
								<div align="right">
									<button type="submit" class="btn btn-warning" id="paybtn">결제하기</button>
								</div>
							</form>
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

	<script type="text/javascript">
		$(document).ready(
				function() {

					//날짜더하는 함수
					function addDays(date, days) {
						const copy = new Date(Number(date))
						copy.setDate(date.getDate() + days)
						return copy
					}

					//날짜 포멧변경 함수
					function getFormatDate(date1) {
						var date = new Date();
						var year = date1.getFullYear();
						var month = date1.getMonth() + 1
						var day = date1.getDate();
						if (month < 10) {
							month = "0" + month;
						}
						if (day < 10) {
							day = "0" + day;
						}
						return year + '-' + month + '-' + day;
					}

					//상품 선택할때
					$('input[name="optionsRadios"]').click(
							function() {

								var days = $(
										'input[name="optionsRadios"]:checked')
										.val();
								var price;

								if (days == 30) {
									price = "5,000원";
								} else if (days == 60) {
									price = "10,000원";
								} else {
									price = "14,000원";
								}
								$('#locType').attr('value', days + "일");
								$('#price').attr('value', price);

								const date = new Date();
								const newDate = addDays(date, days);

								$('#usdDays').attr(
										'value',
										getFormatDate(date) + " ~ "
												+ getFormatDate(newDate));
							});

					//결제수단 누를때
					$('#scPayType').click(function() {
						var payType = $('#scPayType option:selected').val();
						console.log(payType);
						$('#payType').attr('value', payType);
					});

					
					
					//결제하기 버튼 누르면
					$('#paybtn').click(function(e) {
						//1. e.stoppropagation();

						$('#sendPay input').each(function(e) {
							console.log($(this).val());
							console.log($(this).val(""));
							
/* 							if ($(this).val() == "") {
								console.log($(this) + "정보를 입력하세요.");
							} */
							
						});
						//if($('input[value]')==)

						//2.선택되지 않은 값이 있으면 그 값을 선택하도록 alert띄우기
						//3. 결제타입에 맞게 결제
						//4. 선택된 값들 담아서 컨트롤러로 넘겨주기 submit()	
						e.preventDefault();
					});

				});
	</script>
</body>

</html>
