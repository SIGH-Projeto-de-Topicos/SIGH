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