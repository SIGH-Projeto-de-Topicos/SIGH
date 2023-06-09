function formatarNumero() {
	let phone = document.getElementById("phone");
	let value = phone.value;
	if (!value) phone.value = "";
	value = value.replace(/\D/g,'')
	value = value.replace(/(\d{2})(\d)/,"($1) $2")
	value = value.replace(/(\d)(\d{4})$/,"$1-$2")
	
	phone.value = value;
}

function send(formId) {
	// do some data verifications
	
	sendData(formId);
}

function sendData(formId) {
    const XHR = new XMLHttpRequest();

    // Bind the FormData object and the form element
    const FD = new FormData(document.getElementById(formId));

    // Define what happens on successful data submission
    XHR.addEventListener("load", (event) => {
      alert(event.target.responseText);
    });

    // Define what happens in case of error
    XHR.addEventListener("error", (event) => {
      alert("Oops! Something went wrong.");
    });

    // Set up our request
    XHR.open("POST", "https://example.com/cors.php");

    // The data sent is what the user provided in the form
    XHR.send(FD);
  }
