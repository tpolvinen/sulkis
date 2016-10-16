<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><spring:message code="sulkis.voittolista.jspnimi" /></title>
<link rel="stylesheet" href="../resources/styles/common.css" type="text/css" />
<link rel="stylesheet" href="../resources/styles/form.css" type="text/css" />
</head>
<body>
<img src="../resources/images/hh_logo.jpg" alt="HAAGA-HELIA" />

<div id="langsel">
	<a href="?lang=en">de</a> | <a href="?lang=fi">fi</a>
</div>
	
<h1><spring:message code="sulkis.voittolista.otsikko" /></h1>

<h2>H7</h2>


	<div id="contentbox">
	<h3><spring:message code="sulkis.voittolista.tilanne" /></h3><br>
	
		<table>
			<thead>
			<tr>
<!-- 			<th>id</th> -->
			<th><spring:message code="sulkis.voittolista.pelaajanimi" /></th>
			<th><spring:message code="sulkis.voittolista.voittolkm" /></th>
			</tr>
			<c:forEach var="data" items="${pelaajalista}">
				<tr>
<%-- 				<td>${data.id}</td> --%>
				<td>${data.nimi}</td>
				<td>${data.voittolkm}</td>	
				</tr>
			</c:forEach>
		</table>
	
	<br>
	<p>
	<a href="../loginpage"><button class="button"><spring:message code="kirjaudu" /></button></a>
	</p>
<!-- 		<p> -->
<!-- 			<a href="../loginpage">loginpage</a><br/> -->
<!-- 			<a href="../secure/main">secure/main</a><br/> -->
<!-- 			<a href="../secure/admin/tools">secure/admin/tools</a> -->
<!-- 		</p> -->
	</div>
	
	<br><br><br><br><br><br><br><br>
	<p><spring:message code="sulkis.voittolista.oppikirjana" /></p>
	<p><a href="https://www.goodreads.com/book/show/29437996-copying-and-pasting-from-stack-overflow"><img src="../resources/images/copypaste.jpg" alt="COPYPASTE" /></a></p>
	<p><a href="https://www.goodreads.com/book/show/29437996-copying-and-pasting-from-stack-overflow">Goodreads</a></p>
	

</body>
</html>