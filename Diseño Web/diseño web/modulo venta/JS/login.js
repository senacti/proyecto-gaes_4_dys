const form = document.getElementById('form');
const usuario = document.getElementById('username');
const password = document.getElementById('password');

form.addEventListener('submit', e => {
	e.preventDefault();
	
	checkInputs();
});

function checkInputs() {
	// trim to remove the whitespaces
	const usuarioValue = usuario.value.trim();
	const passwordValue = password.value.trim();
	
	if(usuarioValue === '') {
		setErrorFor(usuario, 'No Puede dejar el usuario en blanco');
	} else {
		setSuccessFor(usuario);
	}
	
	if(passwordValue === '') {
		setErrorFor(password, 'NO puede dejar la contraseña en blanco.');
	} else {
		setSuccessFor(password);
	}
	
}

function setErrorFor(input, message) {
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	formControl.className = 'form-control error';
	small.innerText = message;
}

function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'form-control success';
}

function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}

function visitPage(){
	window.location='http://www.example.com';
}