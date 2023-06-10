function checkName() {
	let result = ! document.getElementById("name").value == '';
	document.getElementById("alert-name").hidden = result;
	return result;
}

function checkDate() {
	let result = /\d{4}-\d{2}-\d{2}/.test(document.getElementById("born").value);
	document.getElementById("alert-born").hidden = result;
	return result;
}

function formatarNumero() {
	let phone = document.getElementById("phone");
	let value = phone.value;
	let result = /\(\d{2}\)\s\d{4,5}-\d{4}/.test(value);
	document.getElementById("alert-phone").hidden = result;
	if (!value) phone.value = "";
	value = value.replace(/\D/g,'')
	value = value.replace(/(\d{2})(\d)/,"($1) $2")
	value = value.replace(/(\d)(\d{4})$/,"$1-$2")
	
	phone.value = value;
	return result;
}

function checkEmail() {
	let result = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/.test(document.getElementById("email").value);
	document.getElementById("alert-email").hidden = result;
	return result;
}

function checkPassword() {
	let result = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/.test(document.getElementById("password").value);
	document.getElementById("alert-password").hidden = result;
	return result;
}

function checkPasswords() {
	let result = document.getElementById("password").value == document.getElementById("confirm-password").value; 
	document.getElementById("alert-confirm-password").hidden = result;
	return result;  
}

function checkButton() {
	document.getElementById("submit").disabled = ! (checkName() && checkDate() && formatarNumero() && checkEmail() && checkPassword() && checkPasswords());
}

function send(formId) {
	if (document.getElementById("password").value == document.getElementById("confirm-password").value) {
		sendData(formId);	
	} else {
		window.alert("As senhas não correspondem");
	}
}
