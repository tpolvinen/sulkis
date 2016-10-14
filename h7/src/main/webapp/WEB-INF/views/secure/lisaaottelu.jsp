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
<title>Luo ottelu</title>
<link rel="stylesheet" type="text/css"
	href="../resources/styles/common.css">
</head>
<body>

<h3>Sisäänkirjautuneena: <sec:authentication property="principal.username"/></h3>

<sec:authorize access="hasRole('ROLE_ADMIN')">

<!-- 	<p><a href="admin/tools">Admin tools</a></p> -->

	<form:form action="secure/admin/tools" method="get"> // vai: "../secure/admin/tools"
	<p><button type="submit">Uusi</button></p>
	</form:form>
	
</sec:authorize>

	<h1>
		Luo Ottelu
	</h1>
		<fieldset>
		
			<form:form modelAttribute="ottelu" method="post">
				
				<p>
					<form:label	path="pelaaja1">pelaaja1</form:label><br/>
					<form:input path="pelaaja1" cssErrorClass="VirheellinenKentta"/> <form:errors path="pelaaja1" cssClass="Virheteksti"/>	<br/>	
				
					<form:label	path="pelaaja2">pelaaja2</form:label><br/>
					<form:input path="pelaaja2" cssErrorClass="VirheellinenKentta"/> <form:errors path="pelaaja1" cssClass="Virheteksti"/>	<br/>
					
					<form:label	path="p1era1">p1era1</form:label><br/>
					<form:input path="p1era1" cssErrorClass="VirheellinenKentta"/> <form:errors path="p1era1" cssClass="Virheteksti"/>	<br/>
				
					<form:label	path="p2era1">p2era1</form:label><br/>
					<form:input path="p2era1" cssErrorClass="VirheellinenKentta"/> <form:errors path="p2era1" cssClass="Virheteksti"/>	<br/>
					
					<form:label	path="p1era2">p2era3</form:label><br/>
					<form:input path="p1era2" cssErrorClass="VirheellinenKentta"/> <form:errors path="p1era2" cssClass="Virheteksti"/>	<br/>
				
					<form:label	path="p2era2">p2era2</form:label><br/>
					<form:input path="p2era2" cssErrorClass="VirheellinenKentta"/> <form:errors path="p2era2" cssClass="Virheteksti"/>	<br/>
				
					<form:label	path="p1era3">p1era3</form:label><br/>
					<form:input path="p1era3" cssErrorClass="VirheellinenKentta"/> <form:errors path="p1era3" cssClass="Virheteksti"/>	<br/>
				
					<form:label	path="p2era3">p2era3</form:label><br/>
					<form:input path="p2era3" cssErrorClass="VirheellinenKentta"/> <form:errors path="p2era3" cssClass="Virheteksti"/>	<br/>					
				</p>
				<p>	
					<button type="submit">Lisää</button>
				</p>
				
			</form:form>
			
		</fieldset>

<p><a href="../j_spring_security_logout" > Kirjaudu ulos</a></p>
</body>
</html>