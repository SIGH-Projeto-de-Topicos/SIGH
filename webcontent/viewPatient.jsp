<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.PacienteDao" %>
<%@ page import="dao.ConsultaDao" %>
<%@ page import="model.Paciente" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
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
            <span id="name">nome</span>
			<svg onClick="openNav()" id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="35" fill="#238BAD" />
				<text fill="#ffffff" font-size="40" font-family="Open Sans" x="50%" y="52%" dominant-baseline="middle" text-anchor="middle">N</text>
			</svg>
        </div>
    </header>
    <div id="sidenav-background" onClick="closeNav()"></div>
    <nav id="sidenav">
    	<div id="sidenav-title">
    		<span id="sidebar-name">nome</span>
    		<svg id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="40" fill="#238BAD" />
				<text fill="#ffffff" font-size="40" font-family="Open Sans" x="50%" y="52%" dominant-baseline="middle" text-anchor="middle">N</text>
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
    
    <div class="patient-card">
    
    	<span>
		    <span>
		    	<svg id="" width="200" height="200">
		    		<circle cx="100" cy="100" r="75" fill="#238BAD">
		    	</svg>
		    	<p>Nome_paciente</p>
		    </span>
		    
		    <span class="th-1">		
			    <h2>Dados</h2>
		    </span>
		    
		    <span class="tr-1">
		    	<span class="ti-1">a</span>
		    </span>
		    
    	</span>
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