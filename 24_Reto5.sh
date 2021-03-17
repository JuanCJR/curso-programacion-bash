#!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Juan Jimenez

opcion=0
logDir="$(pwd)/log"
date=`date +%Y-%m-%d-%H:%M:%S`

#Valdida si el archivo log existe
if [ -f $logDir ]; then

echo "$date Inicio de actividad" >> $logDir 

else

touch $logDir

echo "$date Inicio de actividad" >> $logDir 

fi


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
            
            date=`date +%Y-%m-%d-%H:%M:%S`
            echo "$date Inicio de instalacion" >> $logDir 
            sleep 3
            date=`date +%Y-%m-%d-%H:%M:%S`
            echo "$date Fin de instalacion" >> $logDir 
            ;;

        2) 
            echo -e "\nDesinstalar postgres..."
            date=`date +%Y-%m-%d-%H:%M:%S`
            echo "$date Inicio de desintalacion" >> $logDir 
            sleep 3
            date=`date +%Y-%m-%d-%H:%M:%S`
            echo "$date Fin de desinstalacion" >> $logDir 
            ;;
        3) 
            echo -e "\nSacar Respaldo..."
            date=`date +%Y-%m-%d-%H:%M:%S`
            echo "$date Inicio de respaldo" >> $logDir 
            sleep 3
            date=`date +%Y-%m-%d-%H:%M:%S`
            echo "$date Fin de respaldo" >> $logDir 
            ;;
        4) 
            echo -e "\nRestaurar Respaldo..."
            date=`date +%Y-%m-%d-%H:%M:%S`
            echo "$date Inicio de restauracion" >> $logDir 
            sleep 3
            date=`date +%Y-%m-%d-%H:%M:%S`
            echo "$date Fin de restauracion" >> $logDir 
            ;;
        5) 
            date=`date +%Y-%m-%d-%H:%M:%S`
            echo "$date Fin de actividad" >> $logDir 
            echo -e "\n" >> $logDir 
            echo -e "\nSalir del programa"
            exit 0
            ;;
    esac
done
