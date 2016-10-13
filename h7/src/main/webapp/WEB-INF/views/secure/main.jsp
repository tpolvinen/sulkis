<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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

<p><a href="../j_spring_security_logout" > Kirjaudu ulos</a></p>

</body>
</html>