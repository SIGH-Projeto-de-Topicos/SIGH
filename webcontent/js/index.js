function loginForm() {
	let loginContainer = document.getElementById("login-container");
	
	loginContainer.innerHTML =
	"<div id='login-overlay'></div>" + 
  		"<div id='login'>" +
    	"<h1>Entrar</h1>" +
   		"<form method='POST' action='apis/pacientes/login.jsp'>" +
      		"<div class='form-group'>" +
        		"<label class='form-label' for='email'>E-mail</label>" +
       			"<input placeholder='Entre com seu e-mail...' name='email' type='email' id='email' class='form-control' value=''>" +
      	"</div>" +
//
      	"<div class='form-group'>" +
        	"<label class='form-label' for='password'>Senha</label>" +
        	"<input placeholder='Entre com sua senha...' name='password' type='password' id='password' class='form-control' value=''>" +
      "</div>" +
//
      "<a href='#'>Esqueci minha senha</a>" +
      "<button class='button2' onclick='login()'>Entrar</button>" +
      "</form>" +
//
	"</div>";
	
	let loginOverlay = document.getElementById("login-overlay");
	loginOverlay.addEventListener("click", close);
}

function close() {
	let loginContainer = document.getElementById("login-container");
	
	loginContainer.innerHTML = "";
}