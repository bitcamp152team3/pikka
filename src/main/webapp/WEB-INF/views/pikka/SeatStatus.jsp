<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="css/exSeatA.css">
<link rel="icon" href="icon/booking.png">
<title>Pikka</title>
</head>

<body>

	<%@ include file="/WEB-INF/views/webPikka/nav.jsp"%>

	<div class="plane pb-5">
		<h2 class="h2text mb-2">
			<i class="fas fa-chair"></i> 좌석 현황
		</h2>
		<ol class="fuselage">
			<li class="rows row--1">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="1" onclick="checkSeat(this)" /> <label for="1">1</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="2" onclick="checkSeat(this)" /> <label for="2">2</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="3" onclick="checkSeat(this)" /> <label for="3">3</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						disabled id="4" onclick="checkSeat(this)" /> <label for="4">Occupied</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="5" onclick="checkSeat(this)" /> <label for="5">5</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="6" onclick="checkSeat(this)" /> <label for="6">6</label></li>
				</ol>
			</li>
			<br>
			<br>

			<li class="rows row--3">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="7" onclick="checkSeat(this)" /> <label for="7">7</label></li>
					<li class="seat"></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="8" onclick="checkSeat(this)" /> <label for="8">8</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="9" onclick="checkSeat(this)" /> <label for="9">9</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="10" onclick="checkSeat(this)" /> <label for="10">10</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="11" onclick="checkSeat(this)" /> <label for="11">11</label></li>
				</ol>
			</li>
			<li class="rows row--4">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="12" onclick="checkSeat(this)" /> <label for="12">12</label></li>
					<li class="seat"></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="13" onclick="checkSeat(this)" /> <label for="13">13</label></li>

				</ol>
			</li>
			<li class="rows row--5">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="14" onclick="checkSeat(this)" /> <label for="14">14</label></li>
					<li class="seat"></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="15" onclick="checkSeat(this)" /> <label for="15">15</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="16" onclick="checkSeat(this)" /> <label for="16">16</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="17" onclick="checkSeat(this)" /> <label for="17">17</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="18" onclick="checkSeat(this)" /> <label for="18">18</label></li>
				</ol>
			</li>
			<li class="rows row--6">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="19" onclick="checkSeat(this)" /> <label for="19">19</label></li>

				</ol>
			</li>
			<li class="rows row--7">
				<ol class="seats" type="A">
					<li class="seat"></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="20" onclick="checkSeat(this)" /> <label for="20">20</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="21" onclick="checkSeat(this)" /> <label for="21">21</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="22" onclick="checkSeat(this)" /> <label for="2">22</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="23" onclick="checkSeat(this)" /> <label for="23">23</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat[]"
						id="24" onclick="checkSeat(this)" /> <label for="24">24</label></li>
				</ol>
			</li>
		</ol>

		<div class="modal" id="exampleModalCenter" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header"
						style="background-color: #fce968; color: black;">
						<h3 class="modal-title " id="exampleModalCenterTitle">
							<a class="navbar-brand" href="#"> <img src="icon/booking.png"
								width="40px"></a> <b>pikka</b>
						</h3>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="modal-body" style="color: black;">
						<form class="form-signin">
							<div class="div1">
								<label><input type="checkbox" name="checkbox[]"
									onClick="checkAbout(this)" checked> 시간권 </label>

								<div name="text[]" style="display: block">
									<div class="checAboutTime ml-5">
										<label> <input type="checkbox" name="timebox[]"
											onClick="checkTime(this)"> 2시간 : 3000원
										</label> <br> <label><input type="checkbox"
											name="timebox[]" onClick="checkTime(this)"> 3시간 :
											4000원 </label>
									</div>
								</div>

							</div>
							<div class="div2">
								<label><input type="checkbox" name="checkbox[]"
									onClick="checkAbout(this)"> 장기권</label>

								<div name="text[]" style="display: none">
									<div class="checAboutTime ml-5">
										<label> <input type="checkbox" name="timebox[]"
											onClick="checkTime(this)"> 50시간 : 60000원
										</label> <br> <label> <input type="checkbox"
											name="timebox[]" onClick="checkTime(this)"> 100시간 :
											110000원
										</label>
									</div>
								</div>
							</div>

							<hr>
						</form>
						<button class="btn btn-lg btn-dark btn-block" name="payment"
							type="submit" onclick="">결제하기</button>

					</div>

				</div>
			</div>
		</div>

		<div class="SelectBtn " style="float: right;">
			<button type="button" style="width: 130px" data-toggle="modal"
				data-target="#exampleModalCenter" class="btn btn-dark">선택하기</button>
		</div>

	</div>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


	<script>
		function checkSeat(box) {
			var seat = document.getElementsByName("checkSeat[]");
			var payment = document.getElementsByName("payment");

			for (var i = 0; i < seat.length; i++) {

				if (seat[i] == box) {
					seat[i].checked = true;
					if (payment.checked == true) {
						seat[i].disabled = true;
					}
				}
				if (seat[i] != box) {
					seat[i].checked = false;

				}
				
			}
			
			
		}
	</script>

	<script>
		function checkAbout(box) {
			var obj = document.getElementsByName("checkbox[]");
			var text = document.getElementsByName("text[]");
			for (var i = 0; i < obj.length; i++) {

				if (obj[i] == box) {
					obj[i].checked = true;
					text[i].style.display = "block";
				}
				if (obj[i] != box) {
					obj[i].checked = false;
					text[i].style.display = "none";
				}
			}
		}
	</script>

	<script>
		function checkTime(box) {
			var obj2 = document.getElementsByName("timebox[]");

			for (var i = 0; i < obj2.length; i++) {

				if (obj2[i] == box) {
					obj2[i].checked = true;

				}
				if (obj2[i] != box) {
					obj2[i].checked = false;

				}
			}
		}
	</script>


	<br>
	<br>
	<%@ include file="/WEB-INF/views/webPikka/footer.jsp"%>
</body>

</html>
