#!/bin/bash
#Programa para ejemplificar el uso de los ifs anidados 

notaClase=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "indique cual es su nota (1-7)" notaClase
echo -e "\n"
if [ $notaClase -ge 4 ]; then
    echo "El alumno apruba la materia"
    read -p "Si va continuar estudiando en el siguiente nivel:" continua
    if [ $continua = "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros, mucha suerte"
    fi
else
 echo "El alumno reprueba la materia";
 fi
