<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<body class="container-fluid"
	style="background-color: black; color: white; text-align: center">
	<a href="./" title="Retour à l'accueil ?"><img src="logo-eni.png"
		style="float: left"></a>
	<h1>TODO APP</h1>
	<br />
	<h3>CREATION DE COMPTE</h3>
	<br>
	<form method="post" action="log">
		<div>
			<input type="text" name="nom"
				style="border-color: white; background-color: black; color: #0083FF"
				placeholder="  Nom d'utilisateur ?">
		</div>
		<br>
		<div>
			<input type="password" name="mdp"
				style="border-color: white; background-color: black; color: #0083FF"
				placeholder="  Mot de passe ?">
		</div>
		<br> <input type="submit" class="btn btn-primary"
			value="Créer le compte">
	</form>
</body>
</html>