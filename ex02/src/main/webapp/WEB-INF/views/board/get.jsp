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
							<div class="form-group">
								<label>Bno</label> <input class="form-control" name="bno" value="<c:out value="${board.bno }"/>" readonly="readonly">
							</div>
							<div class="form-group">
								<label>Title</label> <input class="form-control" name="title" value="<c:out value="${board.title }"/>" readonly="readonly">
							</div>
							<div class="form-group">
								<label>Text area</label>
								<textarea class="form-control" rows="3" name="content" readonly="readonly"><c:out value="${board.content }"/></textarea>
							</div>
							<div class="form-group">
								<label>Writer</label> <input class="form-control" name="writer" value="<c:out value="${board.writer }"/>" readonly="readonly">
							</div>
							<button data-oper="modify" class="btn btn-default" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">Modify
								Button</button>
							<button data-oper="list" class="btn btn-info" onclick="location.href='/board/list'">List
								Button</button>
								
							<form id="operForm" action="/board/modify" method="get">
								<input type="hidden" id="bno" name="bno" value="<c:out value="${board.bno }"/>">
								<input type="hidden" name="amount" value="<c:out value="${cri.amount }"/>">
								<input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum }"/>">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			
			var operForm = $("#operForm");
			
			$("button[data-oper='modify']").on("click", function(e){
				operForm.attr("action", "/board/modify").submit();
			});
			
			$("button[data-oper='list']").on("click", function(e){
				operForm.find("#bno").remove();
				operForm.attr("action", "/board/list");
				operForm.submit();
			});
		});
	</script>
	<!-- /#page-wrapper -->
	<%@include file="../includes/footer.jsp"%>
</body>
</html>