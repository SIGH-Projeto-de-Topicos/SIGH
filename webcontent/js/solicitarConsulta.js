function updateCheckbox() {
	if (document.getElementById("presencial").checked) {
		document.getElementById("presencial-label").className = "btn-selected";
		document.getElementById("online-label").className = "btn-unselected";
	} else {
		document.getElementById("presencial-label").className = "btn-unselected";
		document.getElementById("online-label").className = "btn-selected";
	} 
}
function chkDate(){
	const date = new Date();
	let datef = document.getElementById("date").value,
		dateform = new Date(datef);
	console.log("form:",dateform.getTime());
	
	console.log("today:",new Date(Date.now()).getTime());
	
	console.log(new Date(Date.now()).getTime() > dateform.getTime());
	
	if(new Date(Date.now()).getTime() > dateform.getTime()){
		
		document.getElementById("date").value = new Date(Date.now()).toDateString();	
		
	}
}
function chkTime(){
	const time = new Date();
	let timef = document.getElementById("time").value;
	console.log(timef);
		
}