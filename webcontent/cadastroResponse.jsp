<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="util.DataConversor"%>
<%@ page import="java.sql.Date"%>
<%@ page import="dao.PacienteDao"%>
<%@ page import="model.Paciente"%>

<%
	PacienteDao pDao = new PacienteDao();
	pDao.cadastro(new Paciente(
					request.getParameter("name"),
					request.getParameter("email"),
					DataConversor.ToSQLDate(request.getParameter("born")),
					request.getParameter("phone"),
					request.getParameter("password")));
	response.sendRedirect("index.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>