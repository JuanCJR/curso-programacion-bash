#!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteracion for

#Autor: Juan C. Jimenez

arregloNumeros=(1 2 3 4 5 6)



# Iterar en la lista de numeros
for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done

echo "Iterar en la lista de Cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres:$nom"
done

#Iterar en archivos"
for fill in *
do
    echo "Nombre Archivo:$fill"
done

echo "Iterar utilizando un comando"
for fill in $(ls) 
do
    echo "Nomre archivo:$fill"
done

echo "Iterar utilizando el formato tradicional"
for ((i=O;i<10;i++))
do
    echo "Numeros:$i"
done


