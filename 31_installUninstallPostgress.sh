#!/bin/bash
#Programa que permite manejar las utilidades de postgres
#Autor: Juan Jimenez

opcion=0

#Funcion para instalar postgres
instalar_postgres () {
    echo -e "\nVerificar instalacion de postgres..."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\nPostgres ya se encuentra instalado en el equipo"
    else
        read -s -p "ingresar contraseña a utiizar en postgres:" passwordPostgres
        echo -e "\n Instalacion en proceso..."
        $(brew install postgresql)
        $(brew services start postgresql)
        $(postgres -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDPOSTGRESS}'")

        fi
        
        read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..." 

}

#Funcion para desinstalar postgress
desinstalar_postgres () {
    echo "Desinstalar postgress"
}

#Funcion para sacar respaldo
sacar_respaldo () {
    echo "Sacar respaldo"
    echo "directorio respaldo:" $1
}

#Funcion para restaurar respaldo
restaurar_respaldo () {
    echo "Restaurar respaldo"
    echo "directorio respaldo:" $1
}



while :
do
    #Limpiar la Pantalla 
    #clear
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
           instalar_postgres
           sleep 3
           ;;
        2) 
            desinstalar_postgres
            sleep 3
            ;;
        3) 
            read -p "Directorio de Backup:" directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4) 
            read -p "Directorio de Respaldos:" directorioRespaldo
            restaurar_respaldo $directorioRespaldo
            sleep 3
            ;;
        5) 
            echo -e "\nSalir del programa"
            exit 0
            ;;
    esac
done
