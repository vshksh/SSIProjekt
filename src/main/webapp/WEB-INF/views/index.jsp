<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Strona główna</title>
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
				<div class="page-header">
					<h1>
						Super hostel! <small>Dla Ciebie, dla rodziny</small>
					</h1>
				</div>
				<div class="jumbotron">
					<p>Witamy na stronie naszego super hostelu. Zapoznaj się z
						proponowanymi ofertami ponizej, bądź skorzystaj z wyszukiwarki.</p>
				</div>
				<div class="row">
					<div class="col-md-7">
						<div class="carousel slide" id="carousel-25408">
							<ol class="carousel-indicators">
								<li class="active" data-slide-to="0"
									data-target="#carousel-25408"></li>
								<li data-slide-to="1" data-target="#carousel-25408"></li>
								<li data-slide-to="2" data-target="#carousel-25408"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img alt="Carousel Bootstrap First"
										src="http://lorempixel.com/output/sports-q-c-1600-500-1.jpg">
									<div class="carousel-caption">
										<h4>First Thumbnail label</h4>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
									</div>
								</div>
								<div class="item">
									<img alt="Carousel Bootstrap Second"
										src="http://lorempixel.com/output/sports-q-c-1600-500-2.jpg">
									<div class="carousel-caption">
										<h4>Second Thumbnail label</h4>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
									</div>
								</div>
								<div class="item">
									<img alt="Carousel Bootstrap Third"
										src="http://lorempixel.com/output/sports-q-c-1600-500-3.jpg">
									<div class="carousel-caption">
										<h4>Third Thumbnail label</h4>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
									</div>
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-25408"
								data-slide="prev"><span
								class="glyphicon glyphicon-chevron-left"></span></a> <a
								class="right carousel-control" href="#carousel-25408"
								data-slide="next"><span
								class="glyphicon glyphicon-chevron-right"></span></a>
						</div>
						<div class="carousel slide" id="carousel-510552">
							<ol class="carousel-indicators">
								<li class="active" data-slide-to="0"
									data-target="#carousel-510552"></li>
								<li data-slide-to="1" data-target="#carousel-510552"></li>
								<li data-slide-to="2" data-target="#carousel-510552"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img alt="Carousel Bootstrap First"
										src="http://lorempixel.com/output/sports-q-c-1600-500-1.jpg">
									<div class="carousel-caption">
										<h4>First Thumbnail label</h4>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
									</div>
								</div>
								<div class="item">
									<img alt="Carousel Bootstrap Second"
										src="http://lorempixel.com/output/sports-q-c-1600-500-2.jpg">
									<div class="carousel-caption">
										<h4>Second Thumbnail label</h4>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
									</div>
								</div>
								<div class="item">
									<img alt="Carousel Bootstrap Third"
										src="http://lorempixel.com/output/sports-q-c-1600-500-3.jpg">
									<div class="carousel-caption">
										<h4>Third Thumbnail label</h4>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
									</div>
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-510552"
								data-slide="prev"><span
								class="glyphicon glyphicon-chevron-left"></span></a> <a
								class="right carousel-control" href="#carousel-510552"
								data-slide="next"><span
								class="glyphicon glyphicon-chevron-right"></span></a>
						</div>
					</div>
					<div class="col-md-5">
						<h3 class="text-right">Wypełnij kryteria wyszukiwania</h3>
						<form class="form-horizontal" role="form">
							<div class="form-group">

								<label for="inputEmail3" class="col-sm-2 control-label">
									Ile dni </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3">
								</div>
								<label for="inputEmail3" class="col-sm-2 control-label">
									Ile osób </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3">
								</div>
								<label for="inputEmail3" class="col-sm-2 control-label">
									itd </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3">
								</div>
							</div>
						</form>

						<button type="button" class="btn btn-default">Szukaj</button>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>