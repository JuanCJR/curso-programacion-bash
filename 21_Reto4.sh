#!/bin/bash
#Programa para ejemplificar menu de opciones
#autor: Juan C. Jimenez

opcion=0

while :
do
    #Limpiar la Pantalla
    clear
    echo "-----------------------------"
    echo "----Monitoreo de recursos----"
    echo "-----------------------------"
    echo "------Menu Principal---------"
    echo "-----------------------------"
    echo "1.- Procesos actuales"
    echo "2.- Memoria disponible"
    echo "3.- Espacio en diaco"
    echo "4.- Informacion de red"
    echo "5.- Variables de entorno"
    echo "6.- Informacion de programas"
    echo "7.- Backup de informacion"
    echo "8.- Salir"
    
    #Leer los Datos del usuario - capturar informacion
    read  -p "Ingrese una opcion [1-8]:" opcion
    
    case $option in
    
        1)
            echo -e "\nProcesos en ejecucion actual"
           
            ;;
        8)
            echo -e "\nTerminando la aplicacion..."
            sleep 3
            exit 0
            ;;
    esac


done
