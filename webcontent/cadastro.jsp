<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/cadastro.css">
	
	<link rel="icon" type="image/x-icon" href="images/favicon.png">
	
	<meta charset="UTF-8">
	
	<title>Cadastro</title>
</head>
<body>
	<form id="card" method="POST" action="#">
		<div class="title">
			<h1>Cadastre-se</h1>
			<p>Marque e gerencie todas as suas consultas em um só lugar.</p>
		</div>
		<div class="form-container">
			<label for="name">Nome:</label>
			<input type="text" name="name" id="name" value="" placeholder="Digite seu nome">
		</div>
		<div class="form-container">
			<label for="phone">Número de telefone:</label>
			<input type="tel" name="phone" id="phone" value="" pattern="([0-9]{3}) [0-9]{(4|5)-[0-9]{4}" placeholder="Digite seu número de telefone">
		</div>
		<div class="form-container">
			<label for="email">Email:</label>
			<input type="email" name="email" id="email" value="" placeholder="Digite seu email">
		</div>
		<div class="form-container">
			<label for="passwowd">Senha:</label>
			<input type="password" name="password" id="password" value="" placeholder="Digite seu senha">
		</div>
		<div class="form-container">
			<label for="confirm-passwowd">Confirme a sua senha:</label>
			<input type="password" name="confirm-password" id="confirm-password" value="" placeholder="Repita a senha">
		</div>
		<button type="submit" class="button2">Enviar</button>	
	</form>
</body>
</html>