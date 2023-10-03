<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.MedicoDao" %>
<%@ page import="model.Medico"%>
<%@ page import="dao.ConsultaDao" %>
<%@ page import="model.Consulta"%>
<%@ page import="dao.PacienteDao" %>
<%@ page import="model.Paciente"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>

<%
	int idmed = (int)session.getAttribute("idmed");
	session.setAttribute("idmed", idmed);
	int idcon = Integer.parseInt(request.getParameter("idcon"));
	session.setAttribute("idcon", idcon);
	
	response.sendRedirect("../../viewPatient.jsp");
%>
