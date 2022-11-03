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

#function total_directories counts the no. of dirs.
function total_directories {
	find $1 -type d | wc -l
}

tar -czf $output $input 2> /dev/null

echo -n "Total de archivos incluidos:"
total_files $input
echo -n "Total de directorios incluidos:"
total_directories $input

echo "Respaldo completado!"

echo "Detalles del archivo destino"
ls -l $output
