<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Groupes</title>
</head>
<body>
<h1>Liste des groupes teams</h1>
<p>Ici, vous pouvez consulter et modifiere les groueps</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">Id</th><th width="15%">Nom</th><th width="10%">Evaluation</th><th width="10%">actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="team" items="${teams}">
<tr>
	<td>${team.id}</td>
	<td>${team.name}</td>
	<td>${team.rating}</td>
	<td>
	<a href="${pageContext.request.contextPath}/team/edit/${team.id}.html">Modifier</a><br/>
	<a href="${pageContext.request.contextPath}/team/delete/${team.id}.html">Supprimer</a><br/>
	</td>
</tr>
</c:forEach>
</tbody>
</table>

<p><a href="${pageContext.request.contextPath}/index.html">Acceuil</a></p>

</body>
</html>