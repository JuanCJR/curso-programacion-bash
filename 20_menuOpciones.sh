#!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Juan Jimenez

opcion=0

while :
do
    #Limpiar la Pantalla 
    clear
    #Desplegar el menu de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de utilidad de Postgres"
    echo "-----------------------------------------"
    echo "         MENU PRINCIPAL                  "
    echo "-----------------------------------------"
    echo "1.- Instalar Postgres"
    echo "2.- Desinstalar Postgress"
    echo "3.- Sacar un respaldo"
    echo "4.- Restar respaldo"
    echo "5.- Salir"
    
    #Leer los datos del usurio - capturar informacion
    read -n1 -p "Ingrese una opción [1-5]:" opcion
    
    #Validar la opcion ingresada
    case $opcion in 
        1)
            echo -e "\nInstalar postgress...."
            sleep 3
            ;;
        2) 
            echo -e "\nDesinstalar postgres..."
            sleep 3
            ;;
        3) 
            echo -e "\nSacar Respaldo..."
            sleep 3
            ;;
        4) 
            echo -e "\nRestaurar Respaldo..."
            sleep 3
            ;;
        5) 
            echo -e "\nSalir del programa"
            exit 0
            ;;
    esac
done