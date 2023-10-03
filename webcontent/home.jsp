<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.PacienteDao" %>
<%@ page import="dao.ConsultaDao" %>
<%@ page import="model.Paciente" %>
<%@ page import="model.Consulta" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%
	int id = (Integer)session.getAttribute("id");
	session.setAttribute("id", id);
	PacienteDao pacienteDao = new PacienteDao();
	Paciente paciente = pacienteDao.get(id);
	
	if (paciente == null) {
		response.sendRedirect("./index.jsp");
	}
	
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<link rel="stylesheet" href="css/home.css">
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
            <span id="name"><%=paciente.getNome()%></span>
			<svg onClick="openNav()" id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="35" fill="#238BAD" />
				<text fill="#ffffff" font-size="40" font-family="Open Sans" x="50%" y="52%" dominant-baseline="middle" text-anchor="middle"><%=paciente.getNome().charAt(0)%></text>
			</svg>
        </div>
    </header>
    <div id="sidenav-background" onClick="closeNav()"></div>
    <nav id="sidenav">
    	<div id="sidenav-title">
    		<span id="sidebar-name"><%=paciente.getNome() %></span>
    		<svg id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="35" fill="#238BAD" />
				<text fill="#ffffff" font-size="40" font-family="Open Sans" x="50%" y="52%" dominant-baseline="middle" text-anchor="middle"><%=paciente.getNome().charAt(0)%></text>
			</svg>
    	</div>
    	<div id="sidenav-links"> 
			<a href="#">Visualizar Consultas</a>
			<a href="#">Solicitar Consulta</a>
			<a href="#">Meus Dados</a>
			<a href="#">Termos de Serviço</a>
			<a href="index.jsp">log out</a>
    	</div>
    </nav>
    <article>
    	<div id="title">
	    	<h1>Consultas</h1>
	    	<button type="button" class="button2" onclick="window.open('solicitarConsulta.jsp', '_self')">Solicitar Consulta</button>
    	</div>
    	<div id="table">
    		<div class="th">
    			<div class="ti">Clínica</div>
    			<div class="ti">Horário</div>
    			<div class="ti">Data</div>
    			<div class="ti">Modalidade</div> 
    		</div>
    	<%
			ConsultaDao consultaDao = new ConsultaDao();
			ArrayList<Consulta> consultas = consultaDao.fromPaciente(paciente.getId());
			
			for (Consulta consulta : consultas) {				
		%>		
		    <div class="tr" id="<%=consulta.getId()%>" onclick="expand(<%=consulta.getId()%>)">
		    	<div class="ti-group">
			    	<div class="ti"><%=consulta.getClinica()%></div>
			    	<div class="ti"><%=consulta.getHora()%></div>	
			   		<div class="ti"><%=consulta.getData()%> </div>
			   		<div class="ti"><%=consulta.getModalidade()%></div>
			   		
		    	</div>
		    	<!--  
		    	<div class="btn-group" hidden="true">
		    		<button class="btn-cancel" onclick="deletarConsulta(<-%=consulta.getId()%>);">Cancelar</button>
		    		<button class="btn-edit" onclick="editarConsulta(<-%=consulta.getId()%>);">Editar</button>
		    	</div>
		    	-->
		    </div>
		<%
			}
		%>
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