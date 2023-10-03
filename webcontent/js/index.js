
function loginForm() {
	let loginContainer = document.getElementById("login-container");
	
	loginContainer.innerHTML =
	"<div id='login-overlay'></div>" + 
  		"<div id='login'>" +
  		"<img src='images/logo.png' width='200' height='auto'>"+
    	"<h1>Entrar</h1>" +
   		"<form method='POST' action='apis/pacientes/login.jsp'>" +
   			"<div class='button3'>"+
   				"<span class='btnslct' id='on' onclick='chAction(0)' value='apis/pacientes/login.jsp'>Paciente</span>"+
   				"<span class='btnslct' id='off' onclick='chAction(1)'value='apis/medicos/login.jsp'>Médico</span>"+
   			"</div>"+
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

function chAction(button){
	var path = document.querySelector("form");
	let btn1 = document.getElementById("on"),
		btn2 = document.getElementById("off");
			
		switch(button){
		case 0:
			path.setAttribute('action','apis/pacientes/login.jsp');
			btn1.setAttribute('id', 'off');
			btn2.setAttribute('id', 'on');
			console.log(button);
			break;
		case 1:
			path.setAttribute('action','apis/medicos/login.jsp');
			btn1.setAttribute('id', 'off');
			btn2.setAttribute('id', 'on');
			console.log(button);
			break;
		default:
			console.log("invalid value")
			break;
	}
}

