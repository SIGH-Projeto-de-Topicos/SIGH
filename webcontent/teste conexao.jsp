<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@page import="util.Conexao"%>
<%@page import="java.sql.*"%>
<%@page import="model.Paciente" %>
<%@page import="dao.pacienteDao" %>

<%!
Paciente p = new Paciente(1, "Henrique Belém dos Santos", "email@gmail.com", new Date(10000), "40028922", "senha1234");
%>
<%
pacienteDao pDao = new pacienteDao(); 
pDao.update(p);
response.sendRedirect("testeConexaoResponse.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Response Page</title>
</head>
<body>

</body>
</html>