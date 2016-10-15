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
<title><spring:message code="sulkis.tools.jspnimi" /></title>
<link rel="stylesheet" href="../../resources/styles/common.css" type="text/css" />
<link rel="stylesheet" href="../../resources/styles/form.css" type="text/css" />
</head>
<body>
<div id="langsel">
	<a href="?lang=en">en</a> | <a href="?lang=fi">fi</a>
</div>

	<img src="../../resources/images/hh_logo.jpg" alt="HAAGA-HELIA" />
	
	<h1><spring:message code="sulkis.tools.otsikko" /></h1>
	<h2>H7</h2>
	
	
	<div id="contentbox">	
		<h3><spring:message code="sulkis.tools.plisaysotsikko" /></h3>
		<form:form modelAttribute="uusipelaaja" method="post">
			<p>
			<form:label	path="nimi"><spring:message code="sulkis.tools.pelaajanimi" /></form:label><br/>
			<form:input path="nimi" cssErrorClass="VirheellinenKentta"/> <form:errors path="nimi" cssClass="Virheteksti"/>
			</p>
			<p><button type="submit"><spring:message code="sulkis.tools.pelaajalisays" /></button></p>
		</form:form>
	
	</div>
	<br>
	<div id="contentbox">
		<p><a href="../main"><button class="button"><spring:message code="sulkis.tools.paluu" /></button></a></p>
	</div>	
	<br>
	<p><spring:message code="sulkis.tools.varoitus1" /></p>
	<p><spring:message code="sulkis.tools.varoitus2" /></p>
	<br>
	<div id="contentbox">
		<h3><spring:message code="sulkis.tools.poistootsikko" /></h3>
		<p><a href="pelaajatpoisto"><button class="button"><spring:message code="sulkis.tools.ppoisto" /></button></a></p>
		<spring:message code="sulkis.tools.varoitus3" />
		<p><a href="ottelutpoisto"><button class="button"><spring:message code="sulkis.tools.opoisto" /></button></a></p>
	</div>
	<br>
	<div id="contentbox">
		<h4><spring:message code="kirjautuneena" /><sec:authentication property="principal.username"/></h4>
		<p><a href="../../j_spring_security_logout"><button class="button"><spring:message code="uloskirjaus" /></button></a></p>
	</div>
</body>
</html>