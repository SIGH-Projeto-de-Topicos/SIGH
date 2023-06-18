<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.PacienteDao" %>
<%@ page import="dao.ConsultaDao" %>
<%@ page import="model.Paciente" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%
	PacienteDao pDao = new PacienteDao();
	Paciente p = pDao.login(request.getParameter("email"), request.getParameter("password"));
	if(p == null){
		response.sendRedirect("index.jsp");
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
            <span id="name"><%=p.getNome()%></span>
			<svg onClick="openNav()" id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="48" fill="#238BAD" />
				<text fill="#ffffff" font-size="45" font-family="Open Sans" x="13.25" y="65">MH</text>
			</svg>
        </div>
    </header>
    <div id="sidenav-background" onClick="closeNav()"></div>
    <nav id="sidenav">
    	<div id="sidenav-title">
    		<span id="sidebar-name"><%=p.getNome() %></span>
    		<svg id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="48" fill="#238BAD" />
				<text fill="#ffffff" font-size="45" font-family="Open Sans" x="13.25" y="65"><%=p.getNome().charAt(0) %></text>
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
    	<div id="title">
	    	<h1>Consultas</h1>
	    	<button class="button2">Solicitar Consulta</button>
    	</div>
    	<div id="table">
    	<%
			ConsultaDao cDao = new ConsultaDao();
			ResultSet rs = cDao.Query(p.getID_paciente());
			while(rs.next()){
		%>		
		    <div class="th">
		    	<div class="ti"><%=rs.getString("clinica") %></div>
		    	<div class="ti"><%=rs.getTime("hora") %></div>
		   		<div class="ti"><%=rs.getDate("data") %></div>
		    	<div class="ti"><%=rs.getString("especialidade") %></div>
		   		<div class="ti"><%=rs.getString("modalidade") %></div>
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