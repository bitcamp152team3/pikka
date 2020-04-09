<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/exSeatA.css">
<link rel="icon" href="icon/booking.png">
<title>Pikka</title>
</head>

<body>
	<%@ include file="/WEB-INF/views/pikka/nav.jsp"%>
	<input id="checkSC" type="hidden"
		value="<security:authentication property="principal"/>">

	<div class="container-fluid h-100 pb-5">
		<div class="row row-centered md-5 xs-10">
			<div class="col-md-12 col-xs-12 text-center col-centered">
				<div class="plane pb-5">
					<div class="text-center">

						<a> <img src="icon/booking.png" width="100px" height="100px"></a>
						<h1>
							<b>좌석 현황</b>
						</h1>
						<button class="btn btn-dark mt-4 mb-4 mr-1" type="button"
							style="width: 140px" data-toggle="modal"
							data-target="#exampleModalCenter">퇴실예정석</button>
					</div>


					<ol class="fuselage pt-2">
						<li class="rows row--1">
							<ol class="seats" type="A">
								<li class="seat"><input type="checkbox" id="1" /> <label
									for="1">1</label></li>
								<li class="seat"><input type="checkbox" id="2" /> <label
									for="2">2</label></li>
								<li class="seat"><input type="checkbox" id="3" /> <label
									for="3">3</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="5" /> <label
									for="5">5</label></li>
								<li class="seat"><input type="checkbox" id="6" /> <label
									for="6">6</label></li>
								<li class="seat"><input type="checkbox" id="7" /> <label
									for="7">7</label></li>
							</ol>
						</li>

						<li class="rows row--3">
							<ol class="seats" type="A">
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
							</ol>
						</li>

						<li class="rows row--5">
							<ol class="seats" type="A">
								<li class="seat"><input type="checkbox" id="8" /> <label
									for="8">8</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="9" /> <label
									for="9">9</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="10" /> <label
									for="10">10</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="11" /> <label
									for="11">11</label></li>
							</ol>
						</li>
						<li class="rows row--7">
							<ol class="seats" type="A">
								<li class="seat"><input type="checkbox" id="12" /> <label
									for="12">12</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="13" /> <label
									for="13">13</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="14" /> <label
									for="14">14</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="15" /> <label
									for="15">15</label></li>
							</ol>
						</li>
						<li class="rows row--9">
							<ol class="seats" type="A">
								<li class="seat"><input type="checkbox" id="16" /> <label
									for="16">16</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="17" /> <label
									for="17">17</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="18" /> <label
									for="18">18</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="19" /> <label
									for="19">19</label></li>
							</ol>
						</li>
						<li class="rows row--11">
							<ol class="seats" type="A">
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
								<li class="seatnone"></li>
								<label></label>
							</ol>
						</li>
						<li class="rows row--13">
							<ol class="seats" type="A">
								<li class="seat"><input type="checkbox" id="20" /> <label
									for="20">20</label></li>
								<li class="seat"><input type="checkbox" id="21" /> <label
									for="21">21</label></li>
								<li class="seat"><input type="checkbox" id="22" /> <label
									for="22">22</label></li>
								<li class="seatnone"></li>
								<label></label>
								<li class="seat"><input type="checkbox" id="23" /> <label
									for="23">23</label></li>
								<li class="seat"><input type="checkbox" id="24" /> <label
									for="24">24</label></li>
								<li class="seat"><input type="checkbox" id="25" /> <label
									for="25">25</label></li>
							</ol>
						</li>
					</ol>

					<div class="SelectBtn " style="float: right; width: 130px;">
						<security:authorize access="isAuthenticated()">
							<button type="button" id="scLocBtn" class="btn btn-dark"
								data-toggle="modal" data-target="#myModal">선택하기</button>
						</security:authorize>
					</div>

					<!-- Button trigger modal -->
					<div class="modal" id="exampleModalCenter" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalCenterTitle"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header" style="background-color: #fce968;">
									<h3 class="modal-title " id="exampleModalCenterTitle">
										<a class="navbar-brand" href="#"> <img
											src="icon/booking.png" width="40px"></a> <b>pikka</b>
									</h3>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form class="form-signin">
									
											<ul class="list-group" >
												<c:forEach items="${seat }" var="seat" varStatus="status">
												<li style="font-size: 25px; float:left;" id ="${seat.seatNo }" class="list-group-item list-group-item-action">
													${seat.seatNo }번  ${seat.seatAvailableTime }
											    </li>
											    </c:forEach>							
											</ul>			
											<br>					
											
									
									</form>
								</div>
							</div>
						</div>
					</div>

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
									<form action="/SeatTicket" method="post" id="pay">
										<button type="submit" id="payOk" class="btn btn-dark">Ok</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<input type="hidden" id="paySeatNo" name="seatNo" value="">
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/pikka/footer.jsp"%>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


	<script>
		var seatNo = null; //체크된 사물함 번호
		var chkbox = $("input[type=checkbox]"); //체크박스 전부 가져오기

		$(document).ready(function() {
			var checkSC = $('#checkSC').val();
			chkbox.on('click', function(event) {
				chkbox.prop('checked', false);
				$(event.target).prop('checked', true);
				console.log($(event.target).val());
			})
			
			$.ajax({
				type: 'post',
				url: '/getSeatInfo',
				data : "",
				contentType: "application/json; charset=utf-8",
				success : function(data){
				console.log(data);
					for (var j = 0; j < data.length; j++) {											
						if(data[j].seatAvailableTime.hour==0 && data[j].seatAvailableTime.minute<30){							
							$('.modal-body').find('ul #'+data[j].seatNo).removeClass('list-group-item-action');
							$('.modal-body').find('ul #'+data[j].seatNo).addClass('list-group-item-danger');
						}
						if(data[j].seatAvailableTime.hour==0 && data[j].seatAvailableTime.minute<50){							
							$('.modal-body').find('ul #'+data[j].seatNo).removeClass('list-group-item-action');
							$('.modal-body').find('ul #'+data[j].seatNo).addClass('list-group-item-warning');
						}
					}
					
				},
				error : function(xhr, status, error) {
					alert("nono");
				}
				
			});
			
			
			//ajax를 이용해서 사물함 상태 반영
			$.ajax({
				type : 'post',
				url : '/getSeat',
				data : "",
				contentType : "application/json; charset=utf-8",
				success : function(data) {
					for (var i = 0; i < data.length; i++) {
						if (data[i].seatStatus == 1) {
							$("#" + data[i].seatNo).attr("disabled", true);
							console.log(data[i].seatNo);
						}
					}
				},
				error : function(xhr, status, error) {
					alert("nono");
				}
			});

			if (checkSC != "anonymousUser") {
				//체크박스를 클릭하면 locNo
				$("input").click(function(e) {
					if (seatNo == null) {
						seatNo = this.id;
						console.log("선택한 좌석: " + seatNo);
						$('#myModalLabel').text(seatNo + "번 좌석 결제");
					} else if (seatNo == this.id) { //기존좌석을 다시 클릭하는 경우 => 체크해제
						seatNo = null;
					} else { //다른좌석이 선택되있는 상태에서 또 누를 경우 locNo=1A 처럼 값이 있는 경우
						alert("선택된 좌석이 있습니다.");
						e.preventDefault();
					}
				});

				//선택하기 버튼 눌렀을 때
				$('#scLocBtn').click(function(e) {
					if (seatNo == null) { //사물함이 선택되지 않은 상태일때
						alert("좌석을 선택하세요.");
						e.stopPropagation();
						return;
					}

					console.log("결제할 사물함 번호: " + seatNo);
				});

				$('#payOk').click(function(e) {
					e.stopPropagation();
					e.preventDefault();
					$('#paySeatNo').val(seatNo);
					$("#pay").submit();
					chkbox.prop('checked', false);
				});
			}//if end
			else {
				//체크박스를 클릭하면
				$("input").click(function(e) {
					e.preventDefault();
				});

			}
		});
	</script>
</body>

</html>
