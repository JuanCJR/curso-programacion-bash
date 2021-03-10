#!/bin/bash
#Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilizacion 
#Autor: Juan Jimenez

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La informacion actual es la siguiente: $ubicacionActual"
echo "Informacion del Kernel: $infoKernel"


