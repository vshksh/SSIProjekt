<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="pl">
<head>
  <title>Rejestracja</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="<c:url value="/resources/css/bootstrap.min.css" />"	rel="stylesheet">
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/scripts.js" />"></script>
    
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
					<a class="navbar-brand" href="/hostel/">Stron główna</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<c:url value="/oferty" />">Oferty</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="<c:url value="/rejestracja" />">Rejestracja</a>
						</li>
						<li><a href="<c:url value="/rejestracja" />">Zaloguj</a></li>
					</ul>
				</div>
				</nav>
			<h3>
				Rejestracja
			</h3>
			<form method="POST" modelAttribute="formularzRejestracji" class="form-horizontal" role="form">
				<div class="form-group">
					 
					<label for="login" class="col-sm-2 control-label">
						Twój login
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="login">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="haslo" class="col-sm-2 control-label">
						Hasło
					</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="haslo">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="nazwisko" class="col-sm-2 control-label">
						Nazwisko
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="nazwisko">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="pesel" class="col-sm-2 control-label">
						PESEL
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="pesel">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="plec" class="col-sm-2 control-label">
						Płeć(m/k)
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="plec">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="adresEmail" class="col-sm-2 control-label">
						Adres email
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="adresEmail">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="adresKorespondencji" class="col-sm-2 control-label">
						Adres korespondencji
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="adresKorespondencji">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="kodPocztowy" class="col-sm-2 control-label">
						Kod pocztowy
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="kodPocztowy">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="telefon" class="col-sm-2 control-label">
						Telefon
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="telefon">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 
						<button type="submit" class="btn btn-default">
							Rejestruj
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
  </body>
</html>