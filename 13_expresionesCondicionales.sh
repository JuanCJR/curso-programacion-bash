#!/bin/bash
#Programa para ejemplificar el uso de expresiones condicionales 

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese pais:" pais;
read -p "ingrese el path de su archivo:" pathArchivo

echo -e "\nExpresiones condicionales con numeros:"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niñ"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolecente"
else
    echo "La persona es mayor de edad"
fi


echo -e "\nExpresiones condicionales con cadenas:"
if [ $pais = "EEUU"  ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es del Sur de America"
else
    echo "Se desconoce la nacionalidad"
fi

echo -e "\nExpresiones condicionales con archivos:"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "La persona $pathArchivo no existe"
fi
