#!/bin/bash
#Programa para ejemplificar como capturar la informacion, utilizando el comando echo, read y $REPLY
#Autor: Juan Jimenez


option=0
backupName=""

echo "Programa de Utilidades Postgress"
echo -n "Ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo:"
read
backupName=$REPLY
echo "Opcion:$option , backupName:$backupName"
