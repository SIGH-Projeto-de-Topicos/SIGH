<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.PacienteDao" %>
<%@ page import="model.Paciente" %>
<%@ page import="java.sql.Date" %>

<%
	PacienteDao pacienteDao = new PacienteDao();
	Paciente paciente = pacienteDao.insert(
			request.getParameter("name"),
			request.getParameter("email"),
			request.getParameter("born"),
			request.getParameter("phone"),
			request.getParameter("password")
	);
	
	if (paciente == null) {
		response.sendRedirect("../../cadastro.jsp");		
	} else {
		response.sendRedirect("../../index.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../../css/animations.css">
<title>Insert title here</title>
</head>
<body>
	<div class="loading-frame">
		<div class="loading-dots">
		</div>
		<div class="loading-dots">
		</div>
		<div class="loading-dots">
		</div>		
	</div>
</body>
</html>