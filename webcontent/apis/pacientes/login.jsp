<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.PacienteDao" %>
<%@ page import="dao.ConsultaDao" %>
<%@ page import="model.Paciente" %>

<%
	PacienteDao pacienteDao = new PacienteDao();
	Paciente paciente = pacienteDao.login(
			request.getParameter("email"),
			request.getParameter("password")
	);
	
	if(paciente == null){
		response.sendRedirect("../../index.jsp");
	} else {
		session.setAttribute("id", paciente.getId());
		response.sendRedirect("../../home.jsp");
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