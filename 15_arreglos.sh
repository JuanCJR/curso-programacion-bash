#!/bin/bash
#Programa para ejemplificar el uso de arreglos
#Autor: Juan C. Jimenez

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Juan, Carlos, Andres, Antonio)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Numeros:${arregloNumeros[*]}"
echo "Arreglo de Cadenas:${arregloCadenas[*]}"
echo "Arreglo de Numeros:${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Numeros:${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas:${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Rangos:${#arregloRangos[*]}"

#Imprimir la psocion 3 del arreglo de numeros, cadenas y rangos
echo "Posicion Arreglo de Numeros:${arregloNumeros[3]}"
echo "Posicion Arreglo de Cadenas:${arregloCadenas[3]}"
echo "Posicion Arreglo de Rangos:${arregloRangos[3]}"

#Añair y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros:${arregloNumeros[*]}"
echo "Tamaño arreglo de numeros: ${#arregloNumeros[*]}"
