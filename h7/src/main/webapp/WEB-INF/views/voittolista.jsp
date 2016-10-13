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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Voittolista</title>
</head>
<body>
<h1>Lista!</h1>

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
	<br>
	<fieldset>
		<p>
			<a href="../loginpage">loginpage</a><br/>
			<a href="../secure/main">secure/main</a><br/>
			<a href="../secure/admin/tools">secure/admin/tools</a>
		</p>
	</fieldset>

</body>
</html>