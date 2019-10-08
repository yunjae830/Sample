<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Core CSS - Include with every page -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<!-- Page-Level Plugin CSS - Tables -->
<link href="/resources/css/plugins/dataTables/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- SB Admin CSS - Include with every page -->
<link href="/resources/css/sb-admin.css" rel="stylesheet">
</head>
<body>
	<div id="wrapper">

		<%@include file="../includes/header.jsp"%>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Board Register</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Board Register</div>
						<div class="panel-body">
							<form role="form" action="/board/register" method="post">
								<div class="form-group">
									<label>Title</label> <input class="form-control" name="title">
								</div>
								<div class="form-group">
									<label>Text area</label>
									<textarea class="form-control" rows="3" name="content"></textarea>
								</div>
								<div class="form-group">
									<label>Writer</label> <input class="form-control" name="writer">
								</div>
								<button type="submit" class="btn btn-default">Submit
									Button</button>
								<button type="reset" class="btn btn-default">Reset
									Button</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->
	<%@include file="../includes/footer.jsp"%>
</body>
</html>