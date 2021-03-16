#!/bin/bash
#Programa para ejemplificar uso de case

valor=0

echo -e "\nIngrese un valor del 1 al 5"
read -p "Ingresar valor:" valor

case $valor in
    
    [1-5])
        echo "Ha ingresado el numero $valor";;
    [6-9])
        echo "El numero $valor se encuentra fuera de rango";;
    *)
        echo "Ha ingresado un valor invalido. Valor:$valor";;
esac
