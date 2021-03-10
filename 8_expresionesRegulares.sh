#!/bin/bash
#Programa para ejemplificar como capturar la informacion del usuario y validar utilizando expresiones regulars
#Autor: Juan Jimenez

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'
fechaNacimientoRegex='^19|20[0-99]|{2}[1-12][1-31]$'

echo "Expresiones regulares"
read -p "Ingresar una identificacion:" identificacion
read -p "Ingresar las iniciales de un pais [EC, COL. US]:" pais
read -p "Ingresar la fecha de nacimineto [yyyyMMdd]:" fechaNacimiento

#Validacion Identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then

    echo "Identificacion $identificacion valida"
else
    echo "Identificacion $identificacion invalida"
fi


#Validacion Pais
if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valida"
else
    echo "Pais $pais invalida"
fi

#Validacion Fecha Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha de Nacimiento $fechaNacimiento valida"
else
    echo "Fecha de Nacimiento $fechaNacimiento invalida"
fi
