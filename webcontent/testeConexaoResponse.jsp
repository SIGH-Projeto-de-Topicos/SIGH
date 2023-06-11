<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@page import="util.DataConversor" %>
<%@page import="java.sql.Date" %>
<%@page import="dao.PacienteDao" %>
<%@page import="java.time.LocalDate" %>
<%@page import="java.text.*" %>
<%@page import="model.Paciente" %>
<%
Paciente p = new Paciente(
	request.getParameter("nome"),
	request.getParameter("email"),
	DataConversor.ToSQLDate(request.getParameter("data")),
	request.getParameter("Telefone"),
	request.getParameter("senha")
	);
	PacienteDao pDao = new PacienteDao();
	pDao.cadastro(p);	
	response.sendRedirect("teste conexao.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Response Page</title>
</head>
<body>
	<form action="teste conexao.jsp" method="POST">
		<input name="nome" type="text" placeholder="nome" style="visibility:false;" value="${param.nome}"><br/>
		<input name="email" type="email" placeholder="example@domain.com" style="visibility:false;" value="${param.email}"><br>
		<input name="senha" type="text" placeholder="senha" style="visibility:false;" value="${param.senha}"><br/>
		<input name="datNasc" type="date" style="visibility:false;" value="${param.data}"><br/>
		<input name="fone" type="text" placeholder="Telefone" style="visibility:false;" value="${param.fone}"><BR/>
	</form>
</body>
</html>