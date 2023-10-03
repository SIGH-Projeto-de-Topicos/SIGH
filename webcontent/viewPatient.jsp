<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	session.setAttribute("id", idmed);
	int idconsulta = (int)session.getAttribute("idcon");
	session.setAttribute("id", idconsulta);
	
	Medico medico = new MedicoDao().get(idmed);
	Consulta consulta = new ConsultaDao().get(idconsulta);
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<link rel="stylesheet" href="css/home.css">
	<link rel="stylesheet" href="css/home_medic.css">
    <link rel="stylesheet" href="css/style.css">
    
    <script src="js/home.js" type="text/javascript"></script>

	<link rel="icon" type="image/x-icon" href="images/favicon.png">

	<meta charset="UTF-8">
	<title>SIGH - Home</title>
</head>
<body>
	<header>	
        <img src="images/logo.png">
        <div id="user">
            <span id="name"><%=medico.getNome() %></span>
			<svg onClick="openNav()" id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="35" fill="#238BAD" />
				<text fill="#ffffff" font-size="40" font-family="Open Sans" x="50%" y="52%" dominant-baseline="middle" text-anchor="middle"><%=medico.getNome().toUpperCase().charAt(0) %></text>
			</svg>
        </div>
    </header>
    <div id="sidenav-background" onClick="closeNav()"></div>
    <nav id="sidenav">
    	<div id="sidenav-title">
    		<span id="sidebar-name"><%=medico.getNome()%></span>
    		<svg id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="40" fill="#238BAD" />
				<text ><%=medico.getNome().toUpperCase().charAt(0) %></text>
			</svg>
    	</div>
    	<div id="sidenav-links"> 
			<a href="#">Visualizar Consultas</a>
			<a href="#">Solicitar Consulta</a>
			<a href="#">Meus Dados</a>
			<a href="#">Termos de Serviço</a>
    	</div>
    </nav>
    <article>
    
    <%
    	Paciente paciente = new PacienteDao().get(consulta.getIdPaciente());
    %>
    <div class="tb-1">
    	<svg class="user.photo" width="150" height="150">
    		<circle cx="50%" cy="50%" r="50%" fill="#238BAD"/>
    		<text fill="#ffffff" font-size="60px" font-family="Open Sans" x="50%" y="50%" dominant-baseline="middle" text-anchor="middle"><%=paciente.getNome().toUpperCase().charAt(0) %></text>
    	</svg>
    	<H2><%=paciente.getNome() %></H2>
    	<div class="th-1">Dados da consulta</div>
    	
    	<div class="tr-1">
    		<div class="ti-1">Horário</div>
			<div class="ti-1"><%=consulta.getHora() %></div>
    	</div>
    	
    	<div class="tr-1">
    		<div class="ti-1">Data</div>
			<div class="ti-1"><%=consulta.getData() %></div>
    	</div>
    	
    	<div class="tr-1">
    		<div class="ti-1">Especialidade</div>
			<div class="ti-1"><%=medico.getEspecialidade()%></div>
    	</div> 
    	
    	<div class="tr-1">
    		<div class="ti-1">Modalidade</div>
			<div class="ti-1"><%=consulta.getModalidade()%></div>
    	</div>
    	   	    	
    </div>	
    </article>
    <footer>
        <div class="content">
            <img src="images/logo.png">
            <ul>
                <li>
                    <a href="#">Política de Privacidade</a>
                </li>
                <li>
                    <a href="#">Termos de Uso</a>
                </li>
                <li>
                    <a href="#">Pedido do Titular</a>
                </li>
            </ul>
        </div>
        <p>2023 Ⓒ SIGH - Todos os direitos reservados</p>
    </footer>
</body>
</html>