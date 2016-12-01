<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="pl">
<head>
  <title>Rejestracja</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

       <form:form method="POST" modelAttribute="formularzRejestracji">   <!-- modelAttribute - klasa, którą wysłał kontroler-->
                                    <!-- Pola form:input odpowiadają polom tej klasy -->
                <table>
        <tr>
              <th>Twój login</th>
              <td><form:input type="text" path="login" /><form:errors path="login" /></td>
	</tr>
        
        <tr>
              <th>Hasło:</th>
              <td><form:input type="password" path="haslo" /><form:errors path="haslo" /></td>
	</tr>
        
        <tr>
              <th>Nazwisko</th>
              <td><form:input type="text" path="nazwisko" /><form:errors path="nazwisko" /></td>
	</tr>
    <tr>
              <th>PESEL</th>
              <td><form:input type="text" path="pesel" /><form:errors path="pesel" /></td>
	</tr>
	<tr>
              <th>Płeć(m/k):</th>
              <td><form:input type="text" path="plec" /><form:errors path="plec" /></td>
	</tr>
        <tr>
              <th>Adres email:</th>
              <td><form:input type="text" path="adresEmail" /><form:errors path="adresEmail" /></td>
	</tr>   
       
        <tr>
              <th>Adres korespondencji:</th>
              <td><form:input type="text" path="adresKorespondencji" /><form:errors path="adresKorespondencji" /></td>
	</tr>        
        <tr>
              <th>Kod pocztowy:</th>
              <td><form:input type="text" path="kodPocztowy" /><form:errors path="kodPocztowy" /></td>
	</tr>        
        <tr>
              <th>Telefon:</th>
              <td><form:input type="text" path="telefon" /><form:errors path="telefon" /></td>
	</tr>        

              </table>
        
        
        
        
        
          <div class="form-group"> 
                  <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" input type="submit" class="btn btn-default">Zarejestruj</button>
                  </div>
          </div>

      
              </form:form>
              
</body>
</html>