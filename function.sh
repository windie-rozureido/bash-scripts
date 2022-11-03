#!/usr/bin/bash

function user_details {
	echo "Nombre de usuario: $(whoami)"
	echo "Direccion de usuario: $HOME"
}

user_details
