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
	<form id="card" method="POST" action="apis/pacientes/cadastrar.jsp">
		<div class="title">
			<h1>Cadastre-se</h1>
			<p>Marque e gerencie todas as suas consultas em um só lugar.</p>
		</div>
		<div class="form-container">
			<span class="alert" id="alert-name" hidden="true">"Nome" não pode estar vazio</span>
			<label for="name">Nome:</label>
			<input type="text" name="name" id="name" placeholder="Digite seu nome" maxlength="45" onInput="checkButton()" required="required">
		</div>
		<div class="form-container">
			<span class="alert" id="alert-born" hidden="true">Digite uma data de nascimento válida</span>
			<label for="born">Data de nascimento:</label>
			<input type="date" name="born" id="born" onInput="checkButton()" required="required">
		</div>
		<div class="form-container">
			<span class="alert" id="alert-phone" hidden="true">Digite um telefone válido</span>
			<label for="phone">Número de telefone:</label>
			<input type="tel" name="phone" id="phone" value="" maxlength="15" placeholder="(00) 00000-0000" onInput="checkButton()" required="required">
		</div>
		<div class="form-container">
			<span class="alert" id="alert-email" hidden="true">Digite um email válido</span>
			<label for="email">Email:</label>
			<input type="email" name="email" id="email" maxlength="45" placeholder="Digite seu email" onInput="checkButton()" required="required">
		</div>
		<div class="form-container">
			<span class="alert" id="alert-password" hidden="true">Senha deve conter, pelo menos, um número, uma letra maiúscula, uma letra minúscula e 8 ou mais caracteres</span>
			<label for="passwowd">Senha:</label>
			<input type="password" name="password" id="password" maxlength="45" placeholder="Digite sua senha" onInput="checkButton()" required="required">
		</div>
		<div class="form-container">
			<span class="alert" id="alert-confirm-password" hidden="true">As senhas não correspondem</span>
			<label for="confirm-passwowd">Confirme a sua senha:</label>
			<input type="password" name="confirm-password" id="confirm-password" placeholder="Repita a senha" onInput="checkButton()" required="required">
		</div>
		<button type="submit" class="button2" id="submit" disabled>Enviar</button>
		<input name="state" style="visibility:hidden" value="true">
	</form> 
</body>
</html>