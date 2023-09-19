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
				<circle cx="50" cy="50" r="35" fill="#238BAD" />
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
    <div class="navmed">
    
    	<span>
    		<img alt="clinic_name" src="images/hospital.svg">
    		<p>nome_clinica</p>
    	</span>
    	
    	<span>
    		<img alt="refresh" src="images/refresh.svg" onclick="console.log('click')">
    		<p onclick="console.log('click')">atualizar</p>
    	</span>
    	
    </div>
    	<div id="title">
	    	<h1>Consultas</h1>
    	</div>
    	<div id="table">
    		<div class="th">
    			<div class="ti">Paciente</div>
    			<div class="ti">Modalidade</div>
    		</div>

		    <div class="tr" id="" onclick="">
 		    	<div class="ti-group">
			    	<div class="ti"></div>
			    	<div class="ti"></div>
			   		<div class="ti"></div>
			    	<div class="ti"></div>
			   		<div class="ti"></div>
 		    	</div>
 		    	<div class="btn-group" hidden="true"> -->
		    		<button class="btn-cancel" onclick="">Cancelar</button>
		    		<button class="btn-edit" onclick="">Editar</button>
 		    	</div>
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