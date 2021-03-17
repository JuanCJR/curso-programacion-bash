#!/bin/bash
#Programa para ejemplificar como se lee un archivo
#Autor: Juan C. Jimenez


echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza la variable IFS (Internal Field Separator) para evitar los espacios en blanco se recorten al inicio o al final

echo -e "\nLeer archivos linea por linea utilizando while"

while IFS= read linea
do
    echo "$linea"
done < $1 

