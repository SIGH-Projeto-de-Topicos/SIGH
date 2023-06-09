<%@page import="util.Conexao"%>
<%@page import="java.sql.*"%>
<%@page import="model.*" %>
<%@page import="java.time.LocalDate" %>
<%@page import="java.time.format.DateTimeFormatter" %>
<%@page import="dao.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! Conexao conn = new Conexao(); %>
<%
Conexao con = null;
Paciente p = new Paciente(request.getParameter("nome"), request.getParameter("email"),  Date.valueOf(LocalDate.parse(request.getParameter("dataNasc"),DateTimeFormatter.ofPattern("d /MM/ YYYY"))), request.getParameter("fone"), request.getParameter("senha"));
pacienteDao pDao = new pacienteDao();
%>
<!DOCTYPE htlm>	
<html>
	<head>
		<title>Test Page</title>
	</head>
	<body>
	<h1>registro</h1>
		<form action="testeConexaoResponse.jsp" method="POST">
			<label>Nome:</label><input id="nome" type="text" placeholder="nome" ><br/>
			<label>Email:</label><input id="email" type="email" placeholder="example@domain.com" ><br>
			<label>Senha:</label><input id="senha" type="text" placeholder="senha" ><br/>
			<label>Data de nascimento:</label><input id="datNasc" type="date"><br/>
			<label>Telefone:</label><input id="fone" type="text" placeholder="Telefone"><BR/>
			<input type="submit" onClick="" value="cadastro">
			<input id="status" type="text" value="" style="visibility:hidden;" disabled><br>
		</form>
		<script type="text/javascript">
			console.log();
		</script>
	</body>
</html>
