function openNav() {
	document.getElementById('sidenav').style.display = 'flex';
	document.getElementById('sidenav-background').style.display = 'block';
}

function closeNav() {
	document.getElementById('sidenav').style.display = 'none';
	document.getElementById('sidenav-background').style.display = 'none';
}

function expand(id) {
	row = document.getElementById(id);
	
	row.hidden = !row.hidden;
}