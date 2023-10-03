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
	session.setAttribute("idmed", idmed);
	Medico medico = new MedicoDao().get(idmed);
	
	ArrayList<Consulta> consultas = new ConsultaDao().getConsultas(medico.getId());
	
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<link rel="stylesheet" href="css/home.css">
	<link rel="stylesheet" href="css/home_medic.css">
    <link rel="stylesheet" href="css/style.css">
    
    <script src="js/home.js" type="text/javascript"></script>
	<script src="js/home_medic.js" type="text/javascript"></script>

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
				<text fill="#ffffff" font-size="40" font-family="Open Sans" x="50%" y="52%" dominant-baseline="middle" text-anchor="middle"><%=medico.getNome().charAt(0) %></text>
			</svg>
        </div>
    </header>
    <div id="sidenav-background" onClick="closeNav()"></div>
    <nav id="sidenav">
    	<div id="sidenav-title">
    		<span id="sidebar-name"><%=medico.getNome() %></span>
    		<svg id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="35" fill="#238BAD" />
				<text fill="#ffffff" font-size="40" font-family="Open Sans" x="50%" y="52%" dominant-baseline="middle" text-anchor="middle"><%=medico.getNome().charAt(0) %></text>
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
    		<p><%=medico.getHospital()%></p>
    	</span>
    	
    	<span onclick="refresh()">
    		<img alt="refresh" src="images/refresh.svg" onclick="console.log('click')">
    		<p>atualizar</p>
    	</span>
    	
    </div>
    	<div id="title">
	    	<h1>Consultas</h1>
    	</div>
    	<form method="POST" action="apis/medicos/viewconsulta.jsp">
	    	<%
	    		for(Consulta con:consultas){
	    		Paciente pac = new PacienteDao().get(con.getIdPaciente());
	    	%>
	    		<div class="resume">
	    			<svg width="60px" height="60px">
	    				<circle cx="50%" cy="50%" r="50%" fill="#238BAD"/>
	    				<text fill="#ffffff" font-size="25" font-family="Open Sans" x="50%" y="50%" dominant-baseline="middle" text-anchor="middle"><%=pac.getNome().toUpperCase().charAt(0)%></text>
	    			</svg>
	    			<span class="u-name">nome <b><%=pac.getNome()%></b></span>
	  				<span class="u-name">data <b><%=con.getData()%></b></span>	
	    			<hr>
	    			<button class="next" name="idcon" value="<%=con.getId()%>">Ver mais +</button>
	    		</div>
	    	<%}%>		
    	</form>
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