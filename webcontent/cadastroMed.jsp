<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%!
	String[] UF= {
			"AC",
	     	"AL",
	    	"AP",
	   		"AM",
	    	"BA",
	    	"CE",
	    	"DF",
	    	"ES",
	   		"GO",
	   		"MA",
	   		"MT",
	   		"MS",
    		"MG",
    		"PA",
    		"PB",
	    	"PR",
	   		"PE",
	   		"PI",
	   		"RJ",
	   		"RN",
    		"RS",
	   		"RO",
    		"RR",
	   		"SC",
	   		"SP",
	   		"SE",
    		"TO"
    };

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
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/cadastro.css">
	<title>Cadastrar Médico</title>
</head>
<body>
	<form id="card" action="apis/medicos/cadastrarMed.jsp" method="GET">
		<div class="title">		
			<img alt="logo" src="images/logo.png">
			<h1>Cadastre-se</h1>
		</div>
		
		<div class="form-container">
			<label>Nome</label><br>
			<input type="text" placeholder="nome" name="nome" maxlength="45">
		</div>
		
		<div class="form-container">
			<label>UF</label><br>
			<select id="form-select" name="UF">
				
				<option value="" disabled selected>UF</option>
				<%
					for(String UF:UF){
				%>
					<option  value="<%=UF%>"><%=UF%></option>
				<%}%>
			</select>
		</div>
		
		<div class="form-container">
			<label>CRM</label><br>
			<input type="text" placeholder="CRM" name="CRM" maxlength="6">
		</div>
		
		<div class="form-container">
			<label>Especialidade</label>
			<select id="form-select" name="especialidade">
				<option value="" disabled selected>especialidade</option>
				<%
					for(String especialidade:especialidades){
				%>
					<option value="<%=especialidade%>"><%=especialidade%></option>
				<%
					}
				%>
			</select>
		</div>
		
		<div class="form-container">
			<label>Hospital</label><br>
			<select id="form-select" name="convenio">
				<option value="" disabled selected>convenio</option>
					<%
						for(String convenios:convenios){
					%>
						<option value="<%=convenios%>"><%=convenios%></option>
					<%
						}
					%>
			</select>			
		</div>
		
		<div class="form-container">
			<label>Email</label><br>
			<input type="email" placeholder="email" name="email" maxlength="45">
		</div>
		
		<div class="form-container">
			<label>Senha</label><br>
			<input type="password" placeholder="senha" name="password" minlength="8" maxlength="45">
		</div>
		<div class="form-container">
			<label>Confirmar Senha</label><br>
			<input type="password" placeholder="senha" name="confirm-password" minlength="8" maxlength="45">
		</div>
		<button class="button2">cadastrar</button>
	</form>
</body>
</html>