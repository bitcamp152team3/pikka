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



	<%-- for문 --%>



	<%-- 		<c:forEach var="list" items="${LocList}" varStatus="status">
	
		<li class="rows row--"${status.count}> 
		${list}


	</c:forEach>  --%>




	<div class="plane pb-5">
		<h2 class="h2text mb-2" style="color: black;">
			<i class="fas fa-door-closed"></i> 사물함 현황
		</h2>
	<!--	${LocList}  -->
		
		
<%-- 		<c:forEach var="list" items = "${LocList}" varStatus= "status">
		<input type="hidden" value = "${list}" class="aa">
		</c:forEach> --%>
		
		
		

		<!-- foreach로 대체////////////////////////// -->
		<ol class="fuselage">
			<c:forEach var="i" begin="1" end="7">
				<li class="rows row--" ${i}>
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" id="${i}A" /> <label
							for="${i}A">${i}A</label></li>
						<li class="seat"><input type="checkbox" id="${i}B" /> <label
							for="${i}B">${i}B</label></li>
						<li class="seat"><input type="checkbox" id="${i}C" /> <label
							for="${i}C">${i}C</label></li>
						<li class="seat"><input type="checkbox" id="${i}D" /> <label
							for="${i}D">${i}D</label></li>
						<li class="seat"><input type="checkbox" id="${i}E" /> <label
							for="${i}E">${i}E</label></li>
						<li class="seat"><input type="checkbox" id="${i}F" /> <label
							for="${i}F">${i}F</label></li>
					</ol>
				</li>
			</c:forEach>
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
		var chkbox = $("input[type=checkbox]");
		
		/* var checkLocker = $("input[type=checkbox]"); */
		$(document).ready(function() {
			
			 $.ajax({
				type:'post',
				url:'/getLocker',
				data:"",
				contentType:"application/json; charset=utf-8",
				success:function(data){
			 		//console.log(data);
					
			 		for(var i=0; i<data.length; i++){
			 			console.log(data[i].lockerNo);
			 			console.log(data[i].lockerStatus);
			 			
			 			if(data[i].lockerStatus == 1){
			 				$("#"+data[i].lockerNo).attr("disabled", true);
			 				
			 			}
			 		}
				},
				error:function(xhr, status, error){
					alert(error);
				}
			}); 
			
			
			 
/*  			for(var i=1; i<=locList.length; i++){
				console.log(i);
			}  */
			
/* 			$.each(${LocList}, function(index, item) {
				console.log(item);
			}); */

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
					alert("선택된 사물함이 있습니다.");
					e.preventDefault();
				}
			});

			//선택하기 버튼 누르면
			$('#scLocBtn').click(function(e) {
				if (locNo == -1) { //사물함이 선택되지 않은 상태에서 누를때
					console.log("locNo:" + locNo + "   ====> 좌석을 선택하세요.");
					alert("좌석을 선택하세요.");
					e.stopPropagation();
					return;
				}
				console.log("결제할 사물함 번호: " + locNo);
			});

		});
	</script>
</body>

</html>
