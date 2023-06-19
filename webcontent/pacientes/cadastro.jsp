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