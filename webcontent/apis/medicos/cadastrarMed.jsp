<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Medico" %>
<%@ page import="dao.MedicoDao" %>
	<%
		MedicoDao medDao = new MedicoDao();
		
		Medico med = medDao.insert(
				request.getParameter("nome"),
				request.getParameter("email"),
				request.getParameter("especialidade"), 
				request.getParameter("UF"), 
				request.getParameter("CRM"), 
				request.getParameter("convenio"), 
				request.getParameter("password"));
		if(med == null){
			response.sendRedirect("../../cadastroMed.jsp");
		}else{
			response.sendRedirect("../../index.jsp");
		}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cadastrar medico</title>
</head>
<body>
</body>
</html>