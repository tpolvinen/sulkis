<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<html>
<head>
<title><spring:message code="sulkis.login.jspnimi" /></title>
<link rel="stylesheet" href="resources/styles/common.css" type="text/css" />
<link rel="stylesheet" href="resources/styles/form.css" type="text/css" />
</head>
<body>
<div id="langsel">
	<a href="?lang=en">en</a> | <a href="?lang=fi">fi</a>
</div>

	<div id="sisalto">
	<h1><spring:message code="sulkis.login.otsikko" /></h1>

	<c:if test="${not empty loginerror}">
		<p class="Error"><spring:message code="sulkis.login.kirjautumisvirhe" /></p>
	</c:if>

	<c:if test="${not empty loggedout}">
		<p class="Info"><spring:message code="sulkis.login.uloskirjautuminen" /></p>
	</c:if>
	
	<form action="j_spring_security_check" method="post">
	<div id="contentbox">
		<table>
		<tr><td><spring:message code="sulkis.login.kayttajanimi" /></td><td><input type='text' name='j_username' value='aada'></td></tr>
		<tr><td><spring:message code="sulkis.login.salasana" /></td><td><input type='password' name='j_password' value='adminpassu'/></td></tr>
		<tr><td>&nbsp;</td><td><button type="submit"><spring:message code="kirjaudu" /></button></td></tr>
		</table>
	</div>
	</form>
	<div id="contentbox">
		<a href="pelaajat/lista"><button class="button"><spring:message code="takaisin" /></button></a>
	</div>
	</div>
</body>
</html>