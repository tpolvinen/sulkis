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
<title><spring:message code="sulkis.main.jspnimi" /></title>
<link rel="stylesheet" href="../resources/styles/common.css" type="text/css" />
<link rel="stylesheet" href="../resources/styles/form.css" type="text/css" />
</head>
<body>
<div id="langsel">
	<a href="?lang=en">en</a> | <a href="?lang=fi">fi</a>
</div>

<img src="../resources/images/hh_logo.jpg" alt="HAAGA-HELIA" />

<h1><spring:message code="sulkis.main.otsikko" /></h1>
<h2>H7</h2>


	<p>
	<div id="contentbox">
		<p><h4><spring:message code="sulkis.main.tilanne" /></h4></p>
		<table>
			<thead>
				<tr>
<!-- 					<th>id</th> -->
					<th><spring:message code="sulkis.main.pelaajanimi" /></th>
					<th><spring:message code="sulkis.main.voittolkm" /></th>
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
		<p><h4><spring:message code="sulkis.main.ottelutiedot" /></h4></p>
		<p><a href="lisaaottelu"><button class="button"><spring:message code="sulkis.main.lisaaottelu" /></button></a></p>
		
		<table>
			<thead>
				<tr>
					<th><spring:message code="sulkis.main.otteluid" /></th>
					<th><spring:message code="sulkis.main.voittajanimi" /></th>
					<th><spring:message code="sulkis.main.ottelupvm" /></th>
					<th><spring:message code="sulkis.main.pelaaja1" /></th>
					<th></th>
					<th><spring:message code="sulkis.main.pelaaja2" /></th>
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
		
		<p><a href="lisaaottelu"><button class="button"><spring:message code="sulkis.main.lisaaottelu" /></button></a></p>
	
	</div>
	<br>
	<div id="contentbox">
		<h4><spring:message code="kirjautuneena" /><sec:authentication property="principal.username"/></h4>
		<a href="../j_spring_security_logout"><button class="button"><spring:message code="uloskirjaus" /></button></a>

		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<br><br>
			<form:form action="admin/tools" method="get">
				<spring:message code="adminit" />
				<p><button type="submit"><spring:message code="admintools" /></button></p>
			</form:form>
		</sec:authorize>
</div>
</body>
</html>