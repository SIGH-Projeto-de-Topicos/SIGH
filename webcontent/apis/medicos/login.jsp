<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.MedicoDao" %>
<%@ page import="model.Medico"%>
<%@ page import="java.sql.ResultSet" %>

<%
	Medico medico = new MedicoDao().login(request.getParameter("email"), request.getParameter("password"));

	if(medico == null){
		response.sendRedirect("../../index.jsp");
	}else{
		session.setAttribute("idmed", medico.getId());
		response.sendRedirect("../../home_medic.jsp");
	}
%>