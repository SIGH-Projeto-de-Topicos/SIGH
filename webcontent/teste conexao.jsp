<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Response Page</title>
</head>
<body>
	<h1>registro</h1>
		<form action="testeConexaoResponse.jsp" method="GET">
			<label>Nome:</label><input name="nome" type="text" placeholder="nome" ><br/>
			<label>Email:</label><input name="email" type="email" placeholder="example@domain.com" ><br>
			<label>Senha:</label><input name="senha" type="text" placeholder="senha" ><br/>
			<label>Data de nascimento:</label><input name="data" type="date"/><br/>
			<label>Telefone:</label><input name="fone" type="text" placeholder="Telefone"><BR/>
			<input type="submit" onClick="" value="cadastro">
		</form>
</body>
</html>