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