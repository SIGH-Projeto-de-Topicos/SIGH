<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.PacienteDao" %>
<%@ page import="dao.ConsultaDao" %>
<%@ page import="model.Paciente" %>

<%
	PacienteDao pDao = new PacienteDao();
	Paciente p = pDao.login(request.getParameter("email"), request.getParameter("password"));
	if(p == null){
		response.sendRedirect("../index.jsp");
	} else {
		session.setAttribute("id", p.getID_paciente());
		response.sendRedirect("../home.jsp");
	}
%>