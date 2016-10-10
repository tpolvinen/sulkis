<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lis�sivu</title>
</head>
<body>

<h3><c:out value="${viesti}"/></h3>
<h1>Lista!</h1>
<!-- 	<div id="contentbox"> -->
	<fieldset>
<!-- 	<div class="tableDiv"> -->
		<table>
			<thead>
				<tr>
					<th>id</th>
					<th>nimi</th>
					<th>voittolkm</th>
				</tr>
				<c:forEach var="data" items="${pelaajalista}">
					<tr>
						<td>${data.id}</td>
						<td>${data.nimi}</td>
						<td>${data.voittolkm}</td>
				
					</tr>
				</c:forEach>
		</table>
		N�� ei en�� toimi...
		<form:form action="javascript:history.back()">
   			<p><button type="submit">Takaisin edelliseen</button></p>
		</form:form>
		
		<form:form action="../">
   			<p><button type="submit">Takaisin alkuun</button></p>
		</form:form>
	</fieldset>
<!-- 	</div> -->
</body>
</html>