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
<link rel="stylesheet" href="css/exLocker.css">
<link rel="icon" href="icon/booking.png">
<title>Pikka</title>
</head>

<body>
	<%@ include file="/WEB-INF/views/pikka/nav.jsp"%>

	<div class="plane pb-5">
		<h2 class="h2text mb-2" style="color: black;">
			<i class="fas fa-door-closed"></i> 사물함 현황
		</h2>
		<!-- foreach로 대체////////////////////////// -->
		<ol class="fuselage">
			<li class="rows row--1">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="1A" /> <label
						for="1A">1A</label></li>
					<li class="seat"><input type="checkbox" id="1B" /> <label
						for="1B">1B</label></li>
					<li class="seat"><input type="checkbox" id="1C" /> <label
						for="1C">1C</label></li>
					<li class="seat"><input type="checkbox" disabled id="1D" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" disabled id="1E" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" id="1F" /> <label
						for="1F">1F</label></li>
				</ol>
			</li>
			<li class="rows row--2">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="2A" /> <label
						for="2A">2A</label></li>
					<li class="seat"><input type="checkbox" id="2B" /> <label
						for="2B">2B</label></li>
					<li class="seat"><input type="checkbox" id="2C" /> <label
						for="2C">2C</label></li>
					<li class="seat"><input type="checkbox" disabled id="2D" /> <label
						for="2D">Occupied</label></li>
					<li class="seat"><input type="checkbox" disabled id="2E" /> <label
						for="2E">Occupied</label></li>
					<li class="seat"><input type="checkbox" id="2F" /> <label
						for="2F">2F</label></li>
				</ol>
			</li>
			<li class="rows row--3">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="3A" /> <label
						for="3A">3A</label></li>
					<li class="seat"><input type="checkbox" id="3B" /> <label
						for="3B">3B</label></li>
					<li class="seat"><input type="checkbox" disabled id="3C" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" id="3D" /> <label
						for="3D">3D</label></li>
					<li class="seat"><input type="checkbox" disabled id="3E" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" id="3F" /> <label
						for="3F">3F</label></li>
				</ol>
			</li>
			<li class="rows row--4">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="4A" /> <label
						for="4A">4A</label></li>
					<li class="seat"><input type="checkbox" id="4B" /> <label
						for="4B">4B</label></li>
					<li class="seat"><input type="checkbox" disabled id="4C" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" disabled id="4D" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" id="4E" /> <label
						for="4E">4E</label></li>
					<li class="seat"><input type="checkbox" id="4F" /> <label
						for="4F">4F</label></li>

				</ol>
			</li>
			<li class="rows row--5">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" disabled id="5A" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" disabled id="5B" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" id="5C" /> <label
						for="5C">5C</label></li>
					<li class="seat"><input type="checkbox" disabled id="5D" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" id="5E" /> <label
						for="5E">5E</label></li>
					<li class="seat"><input type="checkbox" id="5F" /> <label
						for="5F">5F</label></li>
				</ol>
			</li>
			<li class="rows row--6">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="6A" /> <label
						for="6A">6A</label></li>
					<li class="seat"><input type="checkbox" id="6B" /> <label
						for="6B">6B</label></li>
					<li class="seat"><input type="checkbox" id="6C" /> <label
						for="6C">6C</label></li>
					<li class="seat"><input type="checkbox" id="6D" /> <label
						for="6D">6D</label></li>
					<li class="seat"><input type="checkbox" id="6E" /> <label
						for="6E">6E</label></li>
					<li class="seat"><input type="checkbox" id="6F" /> <label
						for="6F">6F</label></li>

				</ol>
			</li>
			<li class="rows row--7">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="7A" /> <label
						for="7A">7A</label></li>
					<li class="seat"><input type="checkbox" id="7B" /> <label
						for="7B">7B</label></li>
					<li class="seat"><input type="checkbox" id="7C" /> <label
						for="7C">7C</label></li>
					<li class="seat"><input type="checkbox" id="7D" /> <label
						for="7D">7D</label></li>
					<li class="seat"><input type="checkbox" id="7E" /> <label
						for="7E">7E</label></li>
					<li class="seat"><input type="checkbox" id="7F" /> <label
						for="7F">7F</label></li>
				</ol>
			</li>
		</ol>

		<!-- <button type="button" style="width: 130px" class="btn btn-dark">선택하기</button> -->
		<!-- Button trigger modal -->
		<div class="SelectBtn " style="float: right; width: 130px;">

			<button type="button" id="scLocBtn" class="btn btn-dark"
				data-toggle="modal" data-target="#myModal">선택하기</button>
		</div>

	</div>

	<!-- Button trigger modal -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">사물함 결제</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">결제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Ok</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/pikka/footer.jsp"%>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


	<script>
		var locNo = -1; //체크된 사물함 번호
		var chkbox = $("input");

		$(document).ready(function() {
			/* 			console.log(chkbox);
			 for(i=0;i<chkbox.length;i++) {
			 console.log(chkbox[i]);
			 console.log(chkbox[i].checked);
			 }  */
	
			 //체크박스를 클릭하면 locNo
			$("input").click(function(e) {
				if (locNo == -1) {
					locNo = this.id;
					console.log("선택한 좌석: " + locNo);
					//$('#'+this.id).attr('disabled', true);
					$('#myModalLabel').text(locNo + " 사물함 결제");
				} else if (locNo == this.id) {
					//기존좌석을 다시 클릭하는 경우 => 체크해제
					locNo = -1;
				} else {
					//다른좌석이 선택되있는 상태에서 또 누를 경우 locNo=1A 처럼 값이 있는 경우
					alert("이미 사물함을 선택했습니다.");
					e.preventDefault();
				}
			});
	
			 //선택하기 버튼 누르면
			$('#scLocBtn').click(function(e) {
				if (locNo == -1) { //사물함이 선택되지 않은 상태에서 누를때
					console.log("locNo:"+ locNo +"   ====> 좌석을 선택하세요." );
					alert("좌석을 선택하세요.");
					e.stopPropagation();
					return;
				}
				console.log("결제할 사물함 번호: " +locNo);
			});

		});
	</script>
</body>

</html>
