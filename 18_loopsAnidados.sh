#!/bin/bash
#Programa para ejemplificar el uso de los loops anidados
#Autor: Juan C. Jimenez

echo "Loops Anidados"
for fill in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre del archivo:$fill _ $nombre"
     done
done
