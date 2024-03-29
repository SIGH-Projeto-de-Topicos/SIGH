<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.PacienteDao"%>
<%@ page import="model.Paciente" %>
<%@ page import="dao.MedicoDao" %>
<%@ page import="model.Medico" %>
<%!
String[] convenios = {
		"Particular",
		"Unimed",
		"Bradesco",
		"Amil",
		"Cassi",
		"Geap",
		"Mediservice",
		"Saúde Caixa",
		"Omint",
		"Sulamerica"};
%>
<%
	MedicoDao medicoDao = new MedicoDao();
	ArrayList<Medico> medico = medicoDao.getAll();
	int id = (Integer)session.getAttribute("id");
	session.setAttribute("id", id);
	Paciente pac = new PacienteDao().get(id);
%>
<%!
String[] especialidades = {
		"Médico clínico",
        "Médico pediatra",
        "Médico cardiologista",
        "Médico ginecologista e obstetra",
        "Médico psiquiatra",
        "Médico dermatologista",
        "Médico ortopedista e traumatologista",
        "Médico oftalmologista",
        "Médico endocrinologista e metabologista",
        "Psicólogo clínico"
	};
%>					
<!DOCTYPE html>
<html lang="pt-br">
<head>
<script src="js/home.js" type="text/javascript"></script>
<script src="js/solicitarConsulta.js" type="text/javascript"></script>

<link rel="stylesheet" href="css/solicitarConsulta.css"> 
<link rel="stylesheet" href="css/style.css">

<meta charset="UTF-8">
<title>Solicitar Consulta</title>
</head>
<body>
	<header>	
        <img src="images/logo.png">
        <div id="user">
            <span id="name"><%=pac.getNome() %></span>
			<svg onClick="openNav()" id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="35" fill="#238BAD" />
				<text fill="#ffffff" font-size="40" font-family="Open Sans" x="40%" y="60%"><%=pac.getNome().charAt(0) %></text>
			</svg>
        </div>
    </header>
    <div id="section">
		<h1 id="title">Solicitar Consulta</h1>
		<form action="apis/consultas/solicitarConsulta.jsp" target="_self" method="post">
			<select name="clinica" required>
				<option value="" disabled selected>Convênio</options>
				<%for(String convenio:convenios){ %>
					<option value="<%=convenio%>">
						<%=convenio%>
					</option>
				<%} %>	
			</select>
		
			<input type="date" name="date" id="date" onInput="chkDate()" required>
			
			<input type="time" name="time" id="time" onInput="chkTime()" required>
			
			<select name="especialidade" required>
				<option value="" disabled selected>Especialidade</option>
				<%
					for(String especialidade:especialidades){
				%>
						<option name="especialidade" value="<%=especialidade%>">
							<%=especialidade %>
						</option>
				<%
					}
				%>				
			</select>
			<select name="idMedico" required> 
				<option value=" " disabled selected>Médico</option>
				<%
					for(Medico med:medico){
				%>
					<option value="<%=med.getId()%>" >
						<%=med.getNome() %>
					</option>
				<%}%>
			</select>
			<div id="btn-container" >
				<label for="presencial" class="btn-selected" id="presencial-label">
					Presencial
					<input type="radio" id="presencial" name="modalidade" value="presencial" oninput="updateCheckbox()" checked hidden>
				</label>
				
				<label for="online" class="btn-unselected" id="online-label">
					Online
					<input type="radio" id="online" name="modalidade" value="online" oninput="updateCheckbox()" hidden>
				</label>
			</div>
			
			<button class="button2" type="submit"><img style="width:28px; height:28px;" src="images/saveiko.svg"></button>
		</form>
    </div>
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