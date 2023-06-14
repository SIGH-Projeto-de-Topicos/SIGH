<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.DataConversor"%>
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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
</head>
<body>
	<script type="text/javascript">
		window.alert("É aqui que vai o código que usa o dao para cadastrar um novo paciente!")
	</script>
</body>
</html>