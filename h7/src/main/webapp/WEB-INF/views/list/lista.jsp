<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<title>Lista: pelaajat</title>
<link rel="stylesheet" type="text/css" href="../resources/styles/common.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/form.css">

</head>	
<body>

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