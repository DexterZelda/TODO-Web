<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8" import="java.util.ArrayList"
	import="fr.eni.ejb.bean.ToDo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EJB</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	function actionSupprimerCompte() {
		var ok = confirm("Êtes-vous certain de vouloir supprimer votre compte et les TODO associées ?");
		if (ok) {
			document.SupprimerForm.submit();
		}
	}
</script>
</head>
<body class="container-fluid"
	style="background-color: black; color: white; text-align: center">
	<a href="deconnexion" title="Retour à l'accueil et déconnexion ?"><img
		src="logo-eni.png" style="float: left"></a>
	<h1>TODO APP</h1>
	<br>
	<h3>
		Liste des TODO de<span class="text-primary"> <%=session.getAttribute("nom")%></span>
	</h3>
	<form method="post" action="supprimerCompte" name="SupprimerForm">
		<button type="button" class="btn btn-primary" style="float: right"
			onClick="actionSupprimerCompte();">Supprimer votre compte ?</button>
	</form>
	<br>
	<br>
	<table class="table table-dark">
		<thead style="background-color: #0083FF">
			<tr>
				<th scope="col">ToDo</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
				ArrayList<ToDo> liste = (ArrayList<ToDo>) session.getAttribute("toDo");
				for (ToDo td : liste) {
			%>
			<tr>
				<td><%=td.getLibelle()%></td>
				<td>
					<form method="post" action="maj">
						<input type="hidden" name="idToDo" value="<%=td.getId()%>">
						<input class="btn btn-warning" type="submit" value="Modifier"
							style="margin-bottom: 4px">
					</form>
					<form method="post" action="effacer">
						<input type="hidden" name="idToDo" value="<%=td.getId()%>">
						<input class="btn btn-danger" type="submit" value="Supprimer">
					</form>
				</td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<form method="post" action="newToDo.jsp">
		<button type="submit" class="btn btn-success" style="float: right">Ajouter
			TODO</button>
	</form>
</body>
</html>