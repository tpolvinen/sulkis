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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="sulkis.lisaaottelu.jspnimi" /></title>
<link rel="stylesheet" href="../resources/styles/common.css" type="text/css" />
<link rel="stylesheet" href="../resources/styles/form.css" type="text/css" />
</head>
<body>
<div id="langsel">
	<a href="?lang=en">en</a> | <a href="?lang=fi">fi</a>
</div>

<img src="../resources/images/hh_logo.jpg" alt="HAAGA-HELIA" />
	
	<h1>Sulkiskuppi</h1>
	<h2>H7</h2>

<div id="contentbox">
	<h3><spring:message code="sulkis.lisaaottelu.otsikko" /></h3>
	<form:form modelAttribute="ottelu" method="post">
	<spring:hasBindErrors name="ottelu">
		<p class="Virheotsikko"><spring:message code="sulkis.lisaaottelu.virheotsikko" /></p>
<%-- 	<div class="Virheblokki"><form:errors path="*"/></div> --%>
	</spring:hasBindErrors>
	<table>
		<tr>
			<td>
				<form:label	path="pelaaja1"><spring:message code="sulkis.lisaaottelu.pel1" /></form:label><br/>
				<select name="pelaaja1">
				<c:forEach var="data" items="${pelaajalista}">
					<option value=${data.nimi}>${data.nimi}</option>
				</c:forEach>
				</select>
				<form:errors path="pelaaja1" cssClass="Virheteksti"/>
			</td>
			<td>
				<form:label	path="pelaaja2"><spring:message code="sulkis.lisaaottelu.pel2" /></form:label><br/>
				<select name="pelaaja2">
				<c:forEach var="data" items="${pelaajalista}">
						<option value=${data.nimi}>${data.nimi}</option>
				</c:forEach>
				</select>
				<form:errors path="pelaaja2" cssClass="Virheteksti"/>	
			</td>
		</tr>
		<tr>
			<td>
				<form:label	path="p1era1"><spring:message code="sulkis.lisaaottelu.p1e1" /></form:label><br/>
				<form:input path="p1era1" cssErrorClass="VirheellinenKentta"/> <form:errors path="p1era1" cssClass="Virheteksti"/>	<br/>
			</td>
			<td>
				<form:label	path="p2era1"><spring:message code="sulkis.lisaaottelu.p2e1" /></form:label><br/>
				<form:input path="p2era1" cssErrorClass="VirheellinenKentta"/> <form:errors path="p2era1" cssClass="Virheteksti"/>	<br/>
			</td>
		</tr>
		<tr>
			<td>
				<form:label	path="p1era2"><spring:message code="sulkis.lisaaottelu.p1e2" /></form:label><br/>
				<form:input path="p1era2" cssErrorClass="VirheellinenKentta"/> <form:errors path="p1era2" cssClass="Virheteksti"/>	<br/>
			</td>
			<td>
				<form:label	path="p2era2"><spring:message code="sulkis.lisaaottelu.p2e2" /></form:label><br/>
				<form:input path="p2era2" cssErrorClass="VirheellinenKentta"/> <form:errors path="p2era2" cssClass="Virheteksti"/>	<br/>
			</td>
		</tr>
		<tr>
			<td>
				<form:label	path="p1era3"><spring:message code="sulkis.lisaaottelu.p1e3" /></form:label><br/>
				<form:input path="p1era3" cssErrorClass="VirheellinenKentta"/> <form:errors path="p1era3" cssClass="Virheteksti"/>	<br/>
			</td>
			<td>
				<form:label	path="p2era3"><spring:message code="sulkis.lisaaottelu.p2e3" /></form:label><br/>
				<form:input path="p2era3" cssErrorClass="VirheellinenKentta"/> <form:errors path="p2era3" cssClass="Virheteksti"/>	<br/>
			</td>
		</tr>
		
	
	</table>
	<button type="submit"><spring:message code="sulkis.lisaaottelu.ottelulisays" /></button>
	</p>	
	</form:form>
			
		
</div>
<br>
<div id="contentbox">
		<p><a href="main"><button class="button"><spring:message code="sulkis.lisaaottelu.paluu" /></button></a></p>
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