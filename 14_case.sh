#!/bin/bash
#Programa para ejemplificar el uso de la sentencia case

opcion=""


echo "Ejemplo Sentencia case "
read -n1 -p "ingrese una opcion de la A - Z:" opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperacion Guardar Archivo";;
    "B") echo "Operacion Eliminar Archivo";;
    [C-E]) "No esta implementada la operacion";;
    *) "Opcion incorrecta";;
 esac
