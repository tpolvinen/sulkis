<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pääsivu</title>
<link rel="stylesheet" href="../resources/styles/common.css" type="text/css" />
<link rel="stylesheet" href="../resources/styles/form.css" type="text/css" />
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="../resources/styles/common.css"> -->
</head>
<body>
<img src="../resources/images/hh_logo.jpg" alt="HAAGA-HELIA" />

<h1>Sulkiskuppi</h1>
<h2>H7</h2>


	<p>
	<div id="contentbox">
		<p><h4>Sulkiskupin tilanne:</h4></p>
		<table>
			<thead>
				<tr>
<!-- 					<th>id</th> -->
					<th>Pelaaja</th>
					<th>Voitot</th>
				</tr>
				<c:forEach var="data" items="${pelaajalista}">
					<tr>
<%-- 						<td>${data.id}</td> --%>
						<td>${data.nimi}</td>
						<td>${data.voittolkm}</td>
				
					</tr>
				</c:forEach>
		</table>
	
	</div>
	</p>
	<div id="contentbox">
		<p><h4>Otteluiden tiedot:</h4></p>
		<p><a href="lisaaottelu"><button class="button">Lisää ottelu</button></a></p>
		
		<table>
			<thead>
				<tr>
					<th>Nro.</th>
					<th>Voittaja</th>
					<th>Päiväys</th>
					<th>Pelaaja 1</th>
					<th></th>
					<th>Pelaaja 2</th>
					<th></th>
					<th align="center">1</th>
					<th></th>
					<th></th>
					<th></th>
					<th align="center">2</th>
					<th></th>
					<th></th>
					<th></th>
					<th align="center">3</th>
					<th></th>
					
				</tr>
				<c:forEach var="data" items="${ottelulista}">
					<tr>
						<td>${data.id}</td>
						<td>${data.voittaja}</td>
<%-- 						<td>${data.pvm}</td> --%>
						<td><fmt:formatDate value="${data.pvm}" pattern="dd.MM.YYYY"/></td>
						<td align="right">${data.pelaaja1}</td>
						<td align="center">-</td>
						<td align="left">${data.pelaaja2}</td>
						<td align="right">${data.p1era1}</td>
						<td align="center">-</td>
						<td align="left">${data.p2era1}</td>
						<td>. .</td>
						<td align="right">${data.p1era2}</td>
						<td align="center">-</td>
						<td align="left">${data.p2era2}</td>
						<td>. .</td>
						<td align="right">${data.p1era3}</td>
						<td align="center">-</td>
						<td align="left">${data.p2era3}</td>
						
				
					</tr>
				</c:forEach>
		</table>
		
		<p><a href="lisaaottelu"><button class="button">Lisää ottelu</button></a></p>
	
	</div>
	<br>
	<div id="contentbox">
		<h4>Sisäänkirjautuneena: <sec:authentication property="principal.username"/></h4>
		<a href="../j_spring_security_logout"><button class="button">Kirjaudu ulos</button></a>

		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<br><br>
			<form:form action="admin/tools" method="get">
				Tästä pääset lisäämään pelaajia ja nollaamaan tietokannan:
				<p><button type="submit">Admin Tools</button></p>
			</form:form>
		</sec:authorize>
</div>
</body>
</html>