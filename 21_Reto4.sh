#!/bin/bash
#Programa para ejemplificar un menu de opciones
#Autor: Juan C. Jimenez

option=0


while :
do
    #Limpiar pantalla  
    clear

    #Desplegar menu de opciones
    echo "------------------------------------------"
    echo "|     Reto 4 - Monitoreo de Recursos     |"
    echo "------------------------------------------"
    echo "|              Menu Principal            |"
    echo "------------------------------------------"
    echo "|1.- Procesos Actuales                   |"
    echo "|2.- Memoria Disponible                  |"
    echo "|3.- Espacio en Disco                    |"
    echo "|4.- Informacion de Red                  |"
    echo "|5.- Variables de Entorno                |"
    echo "|6.- Informacion Programa                |"
    echo "|7.- Backup Informacion                  |"
    echo "|8.- Salir                               |"

    #Leer los datos del usuario - capturar informacion
    read -n1 -p "Ingresar una opcion [1-8]:" option

    #Validar la opcion ingresada
    case $option in 

        1)
           echo -e "\nProcesos en ejecucion:"
           echo -e "\n"
           top 
           ;;
        2)
           echo -e "\nMemoria disponible:"
           free -h
           ;;
        3)
           echo -e "\nEspacio en disco:"
           df -h
           ;;
        4)
           echo -e "\nInformacion de red:"
           ifconfig -a
           ;;
        5) 
           echo -e "\nVariables de entorno"
           env
           ;;
        6) 
           echo -e "\nInformacion de programas"
           dpkg --get-selections
           ;;
        7)
           echo -e "\nBackup de informacion"
           sleep 3
           ;;
        8) 
           echo -e "\nTerminado la aplicacion..."
           sleep 2
           exit 0
           ;;
     esac
 done

