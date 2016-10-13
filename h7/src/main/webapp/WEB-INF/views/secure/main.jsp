<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pääsivu</title>
<link rel="stylesheet" type="text/css"
	href="../resources/styles/common.css">
</head>
<body>
<h1>SUOJATTU PÄÄSIVU</h1>

<h3>Sisäänkirjautuneena: <sec:authentication property="principal.username"/></h3>


<sec:authorize access="hasRole('ROLE_ADMIN')">

<!-- 	<p><a href="admin/tools">Admin tools</a></p> -->

	<form:form action="secure/admin/tools" method="get"> // vai: "../secure/admin/tools"
	<p><button type="submit">Uusi</button></p>
	</form:form>
	
</sec:authorize>


	<fieldset>
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
	</fieldset>
	
	<fieldset>
		<table>
			<thead>
				<tr>
					<th>id</th>
					<th>pelaaja1</th>
					<th>pelaaja2</th>
					<th>pvm</th>
					<th>p1era1</th>
					<th>p2era1</th>
					<th>p1era2</th>
					<th>p2era2</th>
					<th>p1era3</th>
					<th>p2era3</th>
					<th>voittaja</th>
				</tr>
				<c:forEach var="data" items="${ottelulista}">
					<tr>
						<td>${data.id}</td>
						<td>${data.pelaaja1}</td>
						<td>${data.pelaaja2}</td>
						<td>${data.pvm}</td>
						<td>${data.p1era1}</td>
						<td>${data.p2era1}</td>
						<td>${data.p1era2}</td>
						<td>${data.p2era2}</td>
						<td>${data.p1era3}</td>
						<td>${data.p2era3}</td>
						<td>${data.voittaja}</td>
				
					</tr>
				</c:forEach>
		</table>
	</fieldset>
	
	<h1>
		Luo Ottelu
	</h1>
		<fieldset>
			<form:form modelAttribute="tyhjaottelu" method="post">
				
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