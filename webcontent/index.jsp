<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%! String[] especialidades = {
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
	
	String[] cidades = {
		"Pará",
		"São Paulo",
		"Rio de Janeiro",
		"Belo Horizonte",
		"Curitiba",
		"Goiânia",
		"Porto Alegre",
		"Ribeirão Preto",
		"Fortaleza",
		"Brasília",
		"Campinas"
	};
	
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
		"Sulamerica"
	};
	
	public String generateLinks(String[] list) {
		String ul = "<ul class='link-container'>";
		
		for (String item : list) {
			ul += "<li class='link'><a href='#'>" + item + "</a></li>";	
		}
		
		ul += "</ul>";
		
		return ul;
	}
%>

<% 
	session.setAttribute("especialidades", especialidades);
	session.setAttribute("cidades", cidades);
	session.setAttribute("convenios", convenios);
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/login.css">
    
    <script src="js/index.js" type="text/javascript"></script>

    <meta charset="UTF-8">

    <title>SIGH</title>
</head>
<body>
    <header>
        <img src="images/logo.png">
        <div class="button-container">
            <button class="button1" onClick="loginForm()">Entrar</button>
            <button class="button2" disabled="disabled">Cadastre-se</button>
        </div>
    </header>
    <div class="hero">
        <h1>Encontre os melhores profissionais de saúde da sua região e agende uma consulta</h1>
    </div>
    <div class="card-container">
        <div class="card">
            <div class="image-container"><img src="images/clock.png"></div>
            <h2>Agendamento disponível 24h por dia</h2>
            <p>Agende sua consulta a qualquer hora e de qualquer lugar, independente de horários comerciais.</p>
        </div>
        <div class="card">
            <div class="image-container"><img src="images/touch.png"></div>
            <h2>Agendamento de consultas simples e prático</h2>
            <p>Sabemos que é difícil agendar um atendimento pelo seu convênio. Encontre um especialista com poucos cliques</p>
        </div>
        <div class="card">
            <div class="image-container"><img src="images/notification.png"></div>
            <h2>Agende no horário ideal pra você</h2>
            <p>Busque por diversos especialistas ao mesmo tempo e agende uma consulta no melhor horário para você.</p>
        </div>
    </div>
    <div class="button-container2">
        <button class="button1" disabled="disabled">Cadastre-se para buscar médicos pŕoximos de você</button>
    </div>
    <div id="link-container-container-container">
    	<div class="link-container-container">
    		<h2>Especialidades Médicas</h2>
    		<%= generateLinks(especialidades) %>
    	</div>
    	<div class="link-container-container">
    		<h2>Cidades</h2>
    		<%= generateLinks(cidades) %>
    	</div>
    	<div class="link-container-container">
    		<h2>Convênios</h2>
    		<%= generateLinks(convenios) %>
    	</div>
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
    <div id="login-container"></div>
</body>
</html>