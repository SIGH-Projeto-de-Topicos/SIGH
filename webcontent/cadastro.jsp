<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/cadastro.css">
	
	<script src="js/cadastro.js" type="text/javascript"></script>
	
	<link rel="icon" type="image/x-icon" href="images/favicon.png">
	
	<meta charset="UTF-8">
	
	<title>Cadastre-se</title>
</head>
<body>
	<form id="card" method="POST" action="#">
		<div class="title">
			<h1>Cadastre-se</h1>
			<p>Marque e gerencie todas as suas consultas em um só lugar.</p>
		</div>
		<div class="form-container">
			<label for="name">Nome:</label>
			<input type="text" name="name" id="name" value="" placeholder="Digite seu nome" maxlength="45" required="required">
		</div>
		<div class="form-container">
			<label for="born">Data de nascimento:</label>
			<input type="date" name="born" id="born" value="" required="required">
		</div>
		<div class="form-container">
			<label for="phone">Número de telefone:</label>
			<input type="tel" name="phone" id="phone" value="" maxlength="15" placeholder="(00) 00000-0000" onInput="formatarNumero()" required="required">
		</div>
		<div class="form-container">
			<label for="email">Email:</label>
			<input type="email" name="email" id="email" value="" maxlength="45" placeholder="Digite seu email" required="required">
		</div>
		<div class="form-container">
			<label for="passwowd">Senha:</label>
			<input type="password" name="password" id="password" value="" maxlength="45" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Deve conter, pelo menos, um número, uma letra maiúscula, uma letra minúscula e 8 ou mais caracteres" placeholder="Digite sua senha" required="required">
		</div>
		<div class="form-container">
			<label for="confirm-passwowd">Confirme a sua senha:</label>
			<input type="password" name="confirm-password" id="confirm-password" value="" placeholder="Repita a senha" required="required">
		</div>
		<button class="button2" id="submit" onclick="send(submit)">Enviar</button>
	</form> 
</body>
</html>