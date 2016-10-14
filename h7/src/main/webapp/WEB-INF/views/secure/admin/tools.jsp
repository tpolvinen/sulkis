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
<title>Admin Tools</title>
<link rel="stylesheet" href="../../resources/styles/common.css" type="text/css" />
<link rel="stylesheet" href="../../resources/styles/form.css" type="text/css" />
</head>
<body>
	<img src="../../resources/images/hh_logo.jpg" alt="HAAGA-HELIA" />
	
	<h1>Sulkiskuppi</h1>
	<h2>H7</h2>
	
	
	<div id="contentbox">	
		<h3>Lisää pelaaja:</h3>
		<form:form modelAttribute="uusipelaaja" method="post">
			<p>
			<form:label	path="nimi">Nimi</form:label><br/>
			<form:input path="nimi" cssErrorClass="VirheellinenKentta"/> <form:errors path="nimi" cssClass="Virheteksti"/>
			</p>
			<p><button type="submit">Lisää</button></p>
		</form:form>
	
	</div>
	<br>
	<div id="contentbox">
		<p><a href="../main"><button class="button">Takaisin pääsivulle</button></a></p>
	</div>	
	<br>
	<p>Nyt ihan helvetin VAROVASTI!</p>
	<p>Nämä painikkeet tekevät kumpikin k.o. taulun TRUNCATE:n, eli tiedot häviävät ja laskurit nollautuvat. KYSELEMÄTTÄ!</p>
	<br>
	<div id="contentbox">
		<p><a href="pelaajatpoisto"><button class="button">Pelaajatpoisto</button></a></p>
		ACHTUNG! Todesgefahr! ACHTUNG!
		<p><a href="ottelutpoisto"><button class="button">Ottelutpoisto</button></a></p>
	</div>
	<br>
	<div id="contentbox">
		<h4>Sisäänkirjautuneena: <sec:authentication property="principal.username"/></h4>
		<p><a href="../../j_spring_security_logout"><button class="button">Kirjaudu ulos</button></a></p>
	</div>
</body>
</html>