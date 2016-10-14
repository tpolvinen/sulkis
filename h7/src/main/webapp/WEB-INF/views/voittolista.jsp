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
<title>Voittolista</title>
<link rel="stylesheet" href="../resources/styles/common.css" type="text/css" />
<link rel="stylesheet" href="../resources/styles/form.css" type="text/css" />
</head>
<body>
<img src="../resources/images/hh_logo.jpg" alt="HAAGA-HELIA" />

<h1>Sulkiskuppi</h1>
<h2>H7</h2>


	<div id="contentbox">
	<h3>Sulkiskupin tilanne:</h3><br>
		<table>
			<thead>
				<tr>
<!-- 					<th>id</th> -->
					<th>nimi</th>
					<th>voittolkm</th>
				</tr>
				<c:forEach var="data" items="${pelaajalista}">
					<tr>
<%-- 						<td>${data.id}</td> --%>
						<td>${data.nimi}</td>
						<td>${data.voittolkm}</td>
				
					</tr>
				</c:forEach>
		</table>
	
	<br>
	<p>
	<a href="../loginpage"><button class="button">Kirjaudu!</button></a>
	</p>
<!-- 		<p> -->
<!-- 			<a href="../loginpage">loginpage</a><br/> -->
<!-- 			<a href="../secure/main">secure/main</a><br/> -->
<!-- 			<a href="../secure/admin/tools">secure/admin/tools</a> -->
<!-- 		</p> -->
	</div>
	
	<br><br><br><br><br><br><br><br>
	<p>Oppikirjana käytetty:</p>
	<p><a href="https://www.goodreads.com/book/show/29437996-copying-and-pasting-from-stack-overflow"><img src="../resources/images/copypaste.jpg" alt="COPYPASTE" /></a></p>
	<p><a href="https://www.goodreads.com/book/show/29437996-copying-and-pasting-from-stack-overflow">Goodreads-linkki</a></p>
	

</body>
</html>