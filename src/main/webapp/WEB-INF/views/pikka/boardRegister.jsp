<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/exLocker.css">
<link rel="icon" href="icon/booking.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>글쓰기, 저장</title>
</head>
<body>

	<%@ include file="/WEB-INF/views/pikka/nav.jsp"%>

	<table style="border: 1px solid black">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Board Register</h1>
				<hr>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->

		<div class="row">
			<div class="col-md-12 col-xs-12">
				<div class="panel panel-default">


					<div class="panel-body">

						<form role="form" action="boardRegister" method="post">

							<!-- reg_id, title, contents, reg_date, upd_id, upd_date)  -->
							
							<div class="from-group">
								<label>Title</label> <input class="form-control" name='title'>
							</div>

							<div class="from-group">
								<label>Text area</label> <input class="form-control" rows="3"
									name='contents' required="required">
							</div>

							<div class="form-group">
								<label>Writer</label>
								<textarea class="form-control" name='reg_id'>
							</textarea>
							</div>


							<button type="submit" class="btn btn-warning">Submit
								Button</button>
							<button type="reset" class="btn btn-warning">Reset
								Button</button>


							<button type="button" class="btn btn-outline-warning"
								onclick="location.href='boardList' ">Back</button>

						</form>
					</div>
					<!-- end panel-body -->
				</div>
				<!-- end panel-body -->
			</div>
			<!-- end panel -->
		</div>
		<!-- /.row -->

	</table>

	<%@ include file="/WEB-INF/views/pikka/footer.jsp"%>

</body>
</html>

