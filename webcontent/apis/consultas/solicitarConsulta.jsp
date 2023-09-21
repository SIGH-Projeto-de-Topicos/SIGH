<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Date" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="dao.ConsultaDao"%>
<%@ page import="model.Consulta"%>
<%
	if (session.getAttribute("id") == null) {
		response.sendRedirect("../");
	} else {		
		ConsultaDao cDao = new ConsultaDao();
		cDao.insert(new Consulta(
					request.getParameter("clinica"),
					Date.valueOf(request.getParameter("date")),
					LocalTime.parse(request.getParameter("time")),
					request.getParameter("especialidade"),
					request.getParameter("modalidade"),
					(Integer)session.getAttribute("id")
				));
		response.sendRedirect("../home.jsp");
	}
%>