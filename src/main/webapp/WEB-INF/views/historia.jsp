<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Strona główna</title>
</head>
<body>

<div id="navbar" class="navbar-collapse collapse">
  <ul class="nav navbar-nav">
  		<a href="<c:url value="/rejestracja" />">Zarejestruj się</a>
		<a href="<c:url value="/login" />">Zaloguj się</a>
		<a href="<c:url value="/oferty" />">Oferty</a>
		<a href="<c:url value="/hitoria" />">Historia</a>
		<a href="<c:url value="/kontakt" />">Kontakt</a>
	    
  </ul>
</div>

<b>Strona w budowie</b>
</body>
</html>