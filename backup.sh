#!/usr/bin/bash

# Este script se utiliza para hacer un respaldo del directorio /home a /tmp
# Para las pruebas se hace el backup de scripting
user=$(whoami)
input=/home/$user/Documents/scripting
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

# La funcion total_files cuenta el numero de archivos en un directorio
function total_files {
	find $1 -type f | wc -l
}

tar -czf $output $input 2> /dev/null

echo "Respaldo completado!"

echo "Detalles del archivo destino"
ls -l $output
