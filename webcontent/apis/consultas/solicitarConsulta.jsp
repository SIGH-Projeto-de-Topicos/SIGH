<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Date" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="dao.ConsultaDao"%>
<%@ page import="model.Consulta"%>
<%
	session.setAttribute("id", session.getAttribute("id"));
	if (session.getAttribute("id") == null) {
		response.sendRedirect("../../index.jsp");
	} 
	else {		
		new ConsultaDao().insert(
				request.getParameter("clinica"),
				request.getParameter("date"),
				request.getParameter("time"), 
				request.getParameter("modalidade"), 
				(int)session.getAttribute("id"),
				Integer.parseInt(request.getParameter("idMedico"))
		);
		
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