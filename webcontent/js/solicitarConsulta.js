function updateCheckbox() {
	if (document.getElementById("presencial").checked) {
		document.getElementById("presencial-label").className = "btn-selected";
		document.getElementById("online-label").className = "btn-unselected";
	} else {
		document.getElementById("presencial-label").className = "btn-unselected";
		document.getElementById("online-label").className = "btn-selected";
	} 
}