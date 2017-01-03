<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Strona główna</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">

					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/hostel/">Strona główna</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="<c:url value="/oferty" />">Oferty</a></li>
						<li class="active"><a href="<c:url value="/kontakt" />">Kontakt</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="<c:url value="/rejestracja" />">Rejestracja</a>
						</li>
						<li><a href="<c:url value="/logowanie" />">Zaloguj</a></li>
					</ul>
				</div>

				</nav>
				<p><strong>W sprawie rezerwacji prosimy kontaktować się z nami
					telefonicznie, wybierając jeden z podanych numerów:</strong></p>
				<address>
					<abbr title="Telefon_1">Telefon pierwszy:</abbr> <strong>123 456 789</strong><br>
					<abbr title="Telefon_11">Telefon drugi:</abbr> <strong>987 654 321</strong><br>
				</address>
				
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/scripts.js" />"></script>

</body>
</html>