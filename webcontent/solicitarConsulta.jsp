<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <span id="name">Murilo Henrique Conde Da Luz</span>
			<svg onClick="openNav()" id="user-img" width="100" height="100">
				<circle cx="50" cy="50" r="48" fill="#238BAD" />
				<text fill="#ffffff" font-size="45" font-family="Open Sans" x="13.25" y="65">MH</text>
			</svg>
        </div>
    </header>
    <div id="section">
		<h1 id="title">Solicitar Consulta</h1>
		<form action="apis/consultas/solicitarConsulta.jsp" target="_self" method="post">
			<select name="clinica" required>
				<option value="" disabled selected>Clínica</options>
				<option value="wa">waaa</option>	
			</select>
		
			<input type="date" name="date" required>
			
			<input type="time" name="time" required>
			
			<select name="especialidade" required>
				<option value="" disabled selected>Especialidade</options>
				<option value="Pindamonhangaba">Pindamonhagaba</option>	
			</select>
			
			<div id="btn-container">
				<label for="presencial" class="btn-selected" id="presencial-label">
					Presencial
					<input type="radio" id="presencial" name="modalidade" value="presencial" oninput="updateCheckbox()" checked hidden>
				</label>
				
				<label for="online" class="btn-unselected" id="online-label">
					Online
					<input type="radio" id="online" name="modalidade" value="online" oninput="updateCheckbox()" hidden>
				</label>
			</div>
			
			<button class="button2" type="submit"><img src="images/search.png"></button>
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