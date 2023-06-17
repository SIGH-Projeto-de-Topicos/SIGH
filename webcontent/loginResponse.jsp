<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dao.PacienteDao" %>
 <%@ page import="model.Paciente" %>
 <%
 	PacienteDao pDao = new PacienteDao();
 	if(pDao.login(request.getParameter("email"), request.getParameter("password")) != null){ 		
	 	response.sendRedirect("index.jsp");
 	}else{
 		response.sendRedirect("home.jsp");	
 	}
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