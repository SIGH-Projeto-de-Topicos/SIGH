<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/cadastro.css">
	<title>Insert title here</title>
</head>
<body>
	<form id="card" action="" method="">
		<div class="title">		
			<img alt="logo" src="images/logo.png" style="max-width:60%">
			<h1>Cadastre-se</h1>
		</div>
		<div class="form-container">
			<label>Nome:</label><br>
			<input type="text" placeholder="nome" name="nome">
		</div>
		<div class="form-container">
			<label>UF:</label><br>
			<input type="text" placeholder="nome" name="nome">
		</div>
		<div class="form-container">
			<label>CRM:</label><br>
			<input type="text" placeholder="nome" name="nome">
		</div>
		<div class="form-container">
			<label>Hospital:</label><br>
			<select>
				<%
					String foda[]= {"foda1","foda2","foda3"};
					for(String i:foda){
				%>
					<option><%=i%></option>
				<%
					}
				%>
			</select>
		<div class="form-container">
			<label>email:</label><br>
			<input type="text" placeholder="nome" name="nome">
		</div>
		<div class="form-container">
			<label>senha:</label><br>
			<input type="text" placeholder="nome" name="nome">
		</div>
		</div>
	</form>
</body>
</html>