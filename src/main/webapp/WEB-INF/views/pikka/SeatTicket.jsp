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
<link rel="icon" href="icon/booking.png">
<title>Pikka</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/pikka/nav.jsp"%>
	<div class="container mb-5">
		<div class="text-center">

			<a> <img src="icon/booking.png" width="100px" height="100px"></a>
			<h1>
				<b>좌석 결제</b>
			</h1>

		</div>
		<hr>

		<div class="mb-3">
			<label for="selectProduct" style="font-size: 18px;">상품 선택</label>
		</div>
		<hr>
		
		<div class="radio" style="margin-left: 5px;">
			<label> 
				<input type="radio" name="optionsRadios" checked="checked" id="1" value="1"> 1시간 : 3000원
			</label>
		</div>	
		<div class="radio" style="margin-left: 5px;">
			<label> 
				<input type="radio" name="optionsRadios" id="2" value="2"> 2시간 : 4000원
			</label>
		</div>		
		
		<div class="radio" style="margin-left: 5px;">
			<label> 
				<input type="radio" name="optionsRadios" id="3" value="3"> 3시간 : 5000원
			</label>
		</div>		
			
		
		
		<hr>

		<div class="form-group">
			<label style="font-size: 18px;">결제수단 선택</label>
			<div style="margin-left: 5px;">
				<select id="scPayType" class="form-control">
					<option>카드결제</option>				
					<option>네이버페이</option>
					<option>카카오페이</option>
				</select>
			</div>
		</div>
		<hr>
		<label style="font-size: 18px;">좌석 이용권 구매 정보</label>
		<hr>
		<div class="row">
			<div class="col-md-3 col-xs-6" style="text-align: center;">
				<img src="icon/card.png" id="img_form_url"
					style="width: 200px; height: 200px; border-radius: 50%;">
			</div>
			<hr>
			<div class="col-md-9 col-xs-9 mt-3">
				<hr>
				<div class="infopay ml-2" style="text-align: left">
					<form action="" method="post" id="sendPay">					
						좌석 번호 : <input type="text" id="seatNo" name="seatNo"
							value="${seatNo}" readonly style="border: none"> <br>
						좌석 기간 : <input type="text" id="seatType" name="seatType" value=""
							readonly style="border: none"> <br> 
						좌석 가격 : <input	type="text" id="seatPrice" name="seatPrice" value="" readonly
							style="border: none"><br> 
						사용 시간 : <input type="text" id="useTime" name="useTime" value="" readonly
							style="border: none; width: 300px;">
						<hr>
						<button type="submit" class="btn btn-dark" style="float: right;"
							id="paybtn">결제하기</button>
					</form>
				</div>
				
			</div>
			<hr>

		</div>

		<br> <br> <br>


		<%@ include file="/WEB-INF/views/pikka/footer.jsp"%>
		<script
			src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

		<script type="text/javascript">
		$(document).ready(function() {
			
			var now = new Date();
			var input = 0;
			
			function getFormatTime(date,input) {
				var date = new Date();
				var nowHours = date.getHours()+input;
				var nowMinutes = date.getMinutes();
				var nowSeconds = date.getSeconds();				
				return nowHours + '시 ' + nowMinutes + '분 ' + nowSeconds + '초 ';
			}			
			
			console.log(getFormatTime(now,input));
			$('input[name="optionsRadios"]').click(function(){										
				var times = $('input[name="optionsRadios"]:checked').val();
				var price;
				var inputH=0;
					if (times == 1) {
						price = "3000";
						inputH = 1;
						
					} else if (times == 2) {
						price = "4000";
						inputH = 2;
						
					} else {
						price = "5000";
						inputH = 3;						
					}					
					
					$('#seatType').attr('value', times);
					$('#seatPrice').attr('value', price);
					$('#useTime').attr('value', getFormatTime(now,input) + " ~ " + getFormatTime(now,inputH) + " - "  + inputH +"시간");
				});			
			
			//결제수단 누를때
					$('#scPayType').click(
							function() {
								var payType = $('#scPayType option:selected')
										.val();
								if (payType == "카드결제") {
									$("#img_form_url").attr("src",
											"icon/card.png");
								}								
								if (payType == "네이버페이") {
									$("#img_form_url").attr("src",
											"icon/naverpay.png");
								}
								if (payType == "카카오페이") {
									$("#img_form_url").attr("src",
											"icon/kakaopay.jpg");
								}
								$('#payType').attr('value', payType);

							});
			
					//결제하기 버튼 누르면
					$('#paybtn').click(function(e) {
						e.preventDefault();

						console.log($("#scPayType").val());
						if ($("#scPayType").val() == "카카오페이") {
							$("#sendPay").attr("action", "/kakaoPay");
						} else if ($("#scPayType").val() == "카드결제") {
							$("#sendPay").attr("action", "/cardPaySeat");
						} else {
							alert("결제가 완료되었습니다.");
						}

						$("#sendPay").submit();
					});				
		});
	</script>
</body>

</html>
