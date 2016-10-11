<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN-SIVU</title>
<link rel="stylesheet" type="text/css"
	href="../../resources/styles/common.css">
</head>
<body>
<h1>EXTREME SUOJATTU ADMIN-SIVU</h1>

<p>Admin tools...</p>

<p><a href="../main">Pääsivu</a></p>
<p><a href="../../j_spring_security_logout" > Kirjaudu ulos</a></p>


<h1>
		Luo Pelaaja
	</h1>
		<fieldset>
			<form:form modelAttribute="uusipelaaja" method="post">
				
				<p>
					<form:label	path="nimi">Nimi</form:label><br/>
					<form:input path="nimi" cssErrorClass="VirheellinenKentta"/> <form:errors path="nimi" cssClass="Virheteksti"/>
				</p>
				
				<p>	
					<button type="submit">Lisää</button>
				</p>
			</form:form>
			
		</fieldset>


</body>
</html>