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


	<div class="plane pb-5">
		<h2 class="h2text mb-2">
			<i class="fas fa-chair"></i> 좌석 현황
		</h2>
		<ol class="fuselage">
			<li class="rows row--1">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" name="checkSeat"
						value="A1" id="A1" /> <label for="A1">1</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat"
						value="A2" id="A2" /> <label for="A2">2</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat"
						value="A3" id="A3" /> <label for="A3">3</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat"
						value="A4" disabled id="A4" /> <label for="A4">Occupied</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat"
						value="A5" id="A5" /> <label for="A5">5</label></li>
					<li class="seat"><input type="checkbox" name="checkSeat"
						value="A6" id="A6" /> <label for="A6">6</label></li>
				</ol>
			</li>
		</ol>
		


		<div class="SelectBtn " style="float: right;">
			<button type="button" style="width: 130px" data-toggle="modal"
				data-target="#exampleModalCenter" class="btn btn-dark">선택하기</button>
		</div>

	</div>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'>
	</script>


	<script>		
		$(document).ready(function() {
			var checkBox = $("input[type=checkbox]");
			checkBox.on('click',function(event){
				$(event.target).closest('ol').find(checkBox).prop('checked',false);
				$(event.target).prop('checked',true);
				console.log($(event.target).val());
			})
			
			$('.btn').on('click',function(event){
				event.preventDefault();
				console.log($('input:checked'));
				$('input:checked').prop('disabled',true);
			})		
		});
	</script>



</body>

</html>
