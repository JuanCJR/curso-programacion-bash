#!/bin/bash
#Programa para ejemplificar como capturar la informacion, utilizando el comando  read 
#Autor: Juan Jimenez

option=0
backupName=""

echo "Programa de Utilidades Postgress"
read -p "Ingresar una opcion:" option
read -p "Ingresar el nombre del archivo:" backupName
echo "Opcion:$option , backupName:$backupName"
