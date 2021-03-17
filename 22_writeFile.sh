#!/bin/bash
#Programa para ejemplificar como se escribe en un archivo
#Autor: Juan C. Jimenez


echo "Escribir en un archivo"

echo "Valores escritos con echo" >> $1

#Adicion multilinea
cat <<EOM>>$1
$2
Hola como estas aaaaa
a
b
c
d
e
j
k
l
m
o
p
q
EOM
