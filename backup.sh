#!/usr/bin/bash

# Este script se utiliza para hacer un respaldo del directorio /home a /tmp
# Para las pruebas se hace el backup de scripting
user=$(whoami)
input=/home/$user/Documentos/scripting
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf $output $input 2> /dev/null

echo "Respaldo completado!"

echo "Detalles del archivo destino"
ls -l $output
