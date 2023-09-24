<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Date" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="dao.ConsultaDao"%>
<%@ page import="model.Consulta"%>
<%
	if (session.getAttribute("id") == null) {
		response.sendRedirect("../../index.jsp");
	} 
	/*else {		
		ConsultaDao consultaDao = new ConsultaDao();
		consultaDao.insert(
				request.getParameter("clinica"),
				data,
				hora,
				modalidade,
				idPaciente,
				idMedico
			);
		response.sendRedirect("../../home.jsp");
	}*/
%>

that is not working lol