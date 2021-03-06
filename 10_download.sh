11_ifElse.sh                                                                                        000755  000765  000024  00000000572 14022226032 014604  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el uso de la sentencia de decision if, else if, else


notaClase=0
edad=0

echo "Ejemplo Sentencia IF -else"
read -p "Indique cual es su edad:" edad
if [ $edad -le 18  ]; then
    echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64]; then 
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi
                                                                                                                                      12_ifAnidados.sh                                                                                    000755  000765  000024  00000001022 14024200425 015426  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el uso de los ifs anidados 

notaClase=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "indique cual es su nota (1-7)" notaClase
echo -e "\n"
if [ $notaClase -ge 4 ]; then
    echo "El alumno apruba la materia"
    read -p "Si va continuar estudiando en el siguiente nivel:" continua
    if [ $continua = "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros, mucha suerte"
    fi
else
 echo "El alumno reprueba la materia";
 fi
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              13_expresionesCondicionales.sh                                                                      000755  000765  000024  00000001646 14024200425 020441  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el uso de expresiones condicionales 

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese pais:" pais;
read -p "ingrese el path de su archivo:" pathArchivo

echo -e "\nExpresiones condicionales con numeros:"
if [ $edad -lt 10 ]; then
    echo "La persona es un ni??o o ni??"
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
                                                                                          14_case.sh                                                                                          000755  000765  000024  00000000565 14024200425 014315  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el uso de la sentencia case

opcion=""


echo "Ejemplo Sentencia case "
read -n1 -p "ingrese una opcion de la A - Z:" opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperacion Guardar Archivo";;
    "B") echo "Operacion Eliminar Archivo";;
    [C-E]) "No esta implementada la operacion";;
    *) "Opcion incorrecta";;
 esac
                                                                                                                                           15_Reto3.sh                                                                                         000755  000765  000024  00000000550 14024200425 014371  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar uso de case

valor=0

echo -e "\nIngrese un valor del 1 al 5"
read -p "Ingresar valor:" valor

case $valor in
    
    [1-5])
        echo "Ha ingresado el numero $valor";;
    [6-9])
        echo "El numero $valor se encuentra fuera de rango";;
    *)
        echo "Ha ingresado un valor invalido. Valor:$valor";;
esac
                                                                                                                                                        15_arreglos.sh                                                                                      000755  000765  000024  00000001735 14024200425 015221  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el uso de arreglos
#Autor: Juan C. Jimenez

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Juan, Carlos, Andres, Antonio)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Numeros:${arregloNumeros[*]}"
echo "Arreglo de Cadenas:${arregloCadenas[*]}"
echo "Arreglo de Numeros:${arregloRangos[*]}"

#Imprimir los tama??os de los arreglos
echo "Tama??o Arreglo de Numeros:${#arregloNumeros[*]}"
echo "Tama??o Arreglo de Cadenas:${#arregloCadenas[*]}"
echo "Tama??o Arreglo de Rangos:${#arregloRangos[*]}"

#Imprimir la psocion 3 del arreglo de numeros, cadenas y rangos
echo "Posicion Arreglo de Numeros:${arregloNumeros[3]}"
echo "Posicion Arreglo de Cadenas:${arregloCadenas[3]}"
echo "Posicion Arreglo de Rangos:${arregloRangos[3]}"

#A??air y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros:${arregloNumeros[*]}"
echo "Tama??o arreglo de numeros: ${#arregloNumeros[*]}"
                                   16_forLoop.sh                                                                                       000755  000765  000024  00000001155 14024200425 015020  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteracion for

#Autor: Juan C. Jimenez

arregloNumeros=(1 2 3 4 5 6)



# Iterar en la lista de numeros
for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done

echo "Iterar en la lista de Cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres:$nom"
done

#Iterar en archivos"
for fill in *
do
    echo "Nombre Archivo:$fill"
done

echo "Iterar utilizando un comando"
for fill in $(ls) 
do
    echo "Nomre archivo:$fill"
done

echo "Iterar utilizando el formato tradicional"
for ((i=O;i<10;i++))
do
    echo "Numeros:$i"
done


                                                                                                                                                                                                                                                                                                                                                                                                                   17_whileLoop.sh                                                                                     000755  000765  000024  00000000332 14024200425 015337  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el uso de la sentencia de iteracion while

#Autor: Juan C. Jimenez

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done

                                                                                                                                                                                                                                                                                                      18_loopsAnidados.sh                                                                                 000755  000765  000024  00000000352 14024200425 016177  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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
                                                                                                                                                                                                                                                                                      19_breackContinue.sh                                                                                000755  000765  000024  00000000620 14024200425 016333  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el uso de break y continiue
#Autor: Juan C. Jimenez


echo "Sentencias break y continue"
for fill in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fill = "15_Reto3.sh"  ]; then
            break;
        elif [[ $fill == 4* ]]; then
            continue;
        else
            echo "Nombre del archivo:$fill _ $nombre"
        fi   
     done
done
                                                                                                                1_utilityPostgres.sh                                                                                000755  000765  000024  00000000206 14024200425 016540  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para realizar algunas operaciones utilitarios de postgres
echo "Hola bienvenido al curso de programacion bash" 
                                                                                                                                                                                                                                                                                                                                                                                          20_menuOpciones.sh                                                                                  000755  000765  000024  00000002335 14024207014 016041  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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
    read -n1 -p "Ingrese una opci??n [1-5]:" opcion
    
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
done                                                                                                                                                                                                                                                                                                   21_Reto4.sh                                                                                         000755  000765  000024  00000003437 14024206601 014400  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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

                                                                                                                                                                                                                                 21_archivosDirectorios.sh                                                                           000755  000765  000024  00000000564 14024207762 017437  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar la creacion de archivos y directorios 
#Autor: Juan C. Jimenez


echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esta opcion: $1"
fi

                                                                                                                                            22_writeFile.sh                                                                                     000755  000765  000024  00000000376 14024415303 015336  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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
                                                                                                                                                                                                                                                                  23_readFile.sh                                                                                      000755  000765  000024  00000000677 14024406460 015130  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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

                                                                 24_Reto5.sh                                                                                         000755  000765  000024  00000004573 14024420163 014407  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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
    read -n1 -p "Ingrese una opci??n [1-5]:" opcion
    
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
                                                                                                                                     24_fileOperations.sh                                                                                000755  000765  000024  00000000661 14024407714 016375  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar las operaciones de un archivo 
#Autor: Juan C. Jimenez


echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScritps"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicacion: $HOME"
mv backupScripts $HOME


echo -e "\nEliminar Archvivos"
rm prueba*.txt 

                                                                               25_tar.sh                                                                                           000755  000765  000024  00000000303 14024421476 014173  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando tar
#Autor: Juan C. Jimenez

echo "Empaquetar todos los scripts de la carpeta del curso"
tar -cvf shellCourse.tar *.sh


                                                                                                                                                                                                                                                                                                                             26_gzip.sh                                                                                          000755  000765  000024  00000000555 14024422311 014355  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando tar y gzip
#Autor: Juan C. Jimenez

echo "Empaquetar todos los scripts de la carpeta del curso"
tar -cvf shellCourse.tar *.sh
#Cuando empaquetamos con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_options.sh 


                                                                                                                                                   27_pbzip2.sh                                                                                        000755  000765  000024  00000000472 14024423103 014611  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el empaquetamiento con el comando pbzip
#Autor: Juan C. Jimenez

echo "Empaquetar todos los scripts de la carpeta del curso"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar


echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2

                                                                                                                                                                                                      2_variables.sh                                                                                      000755  000765  000024  00000000446 14022161403 015265  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para revisar la declaracion de variables

opcion=0
nombre=juan

echo "Opcion: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible a los demas procesos
export nombre

#Llamar al siguiente script para recuperar la variable
./2_variables_2.sh

                                                                                                                                                                                                                          2_variables_2.sh                                                                                    000755  000765  000024  00000000171 14022161556 015512  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para revisar la declaracion de variables

echo "Opcion nombre pasada del script anterior: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                       2_variales.sh                                                                                       000755  000765  000024  00000000200 14024200425 015107  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para revisar la declaracion de variables

opcion=0
nombre=Juan

echo "Opcion: $opcion y Nombre: $nombre"

                                                                                                                                                                                                                                                                                                                                                                                                3_tipoOperadores.sh                                                                                 000755  000765  000024  00000001576 14022164426 016332  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para revisar los tipos de operadores
#Autor: Juan Jimenez

numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))


echo -e "\nOperadores Relacionales"
echo "Numeros: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo -e "\nOperadores Asignacion"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A+=B =" $((numA += numB))
echo "Sumar A-=B =" $((numA -= numB))
echo "Sumar A*=B =" $((numA *= numB))
echo "Sumar A/=B =" $((numA /= numB))
echo "Sumar A%=B =" $((numA %= numB))
                                                                                                                                  4_arguments.sh                                                                                      000755  000765  000024  00000000407 14022165267 015335  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar el paso de argumentos


nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario $horarioCurso"
echo "El numero de parametros enviados es: $#"
echo "Los parametros enviados son: $*"

                                                                                                                                                                                                                                                         5_sustitucionComand.sh                                                                              000755  000765  000024  00000000473 14022175574 017051  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilizacion 
#Autor: Juan Jimenez

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La informacion actual es la siguiente: $ubicacionActual"
echo "Informacion del Kernel: $infoKernel"


                                                                                                                                                                                                     6_readEcho.sh                                                                                       000755  000765  000024  00000000551 14022177543 015044  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar como capturar la informacion, utilizando el comando echo, read y $REPLY
#Autor: Juan Jimenez


option=0
backupName=""

echo "Programa de Utilidades Postgress"
echo -n "Ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo:"
read
backupName=$REPLY
echo "Opcion:$option , backupName:$backupName"
                                                                                                                                                       7_read.sh                                                                                           000755  000765  000024  00000000503 14022200066 014226  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar como capturar la informacion, utilizando el comando  read 
#Autor: Juan Jimenez

option=0
backupName=""

echo "Programa de Utilidades Postgress"
read -p "Ingresar una opcion:" option
read -p "Ingresar el nombre del archivo:" backupName
echo "Opcion:$option , backupName:$backupName"
                                                                                                                                                                                             8_expresionesRegulares.sh                                                                           000755  000765  000024  00000001743 14022205731 017545  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar como capturar la informacion del usuario y validar utilizando expresiones regulars
#Autor: Juan Jimenez

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'
fechaNacimientoRegex='^19|20[0-99]|{2}[1-12][1-31]$'

echo "Expresiones regulares"
read -p "Ingresar una identificacion:" identificacion
read -p "Ingresar las iniciales de un pais [EC, COL. US]:" pais
read -p "Ingresar la fecha de nacimineto [yyyyMMdd]:" fechaNacimiento

#Validacion Identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then

    echo "Identificacion $identificacion valida"
else
    echo "Identificacion $identificacion invalida"
fi


#Validacion Pais
if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valida"
else
    echo "Pais $pais invalida"
fi

#Validacion Fecha Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha de Nacimiento $fechaNacimiento valida"
else
    echo "Fecha de Nacimiento $fechaNacimiento invalida"
fi
                             8_readValidate.sh                                                                                   000755  000765  000024  00000000727 14022215255 015717  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para ejemplificar como capturar la informacion del usuario y validarla
#Autor: Juan Jimenez

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
#Acepta el ingreso de informacion de solo un caracter
read -n1 -p "Ingresar una opcion:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n" 
echo "opcion:$opcion - backupName:$backupName"
read -s -p "Clave:" clave
echo "Clave: $clave"

                                         utilityHosh.sh                                                                                      000755  000765  000024  00000000364 14024412165 015426  0                                                                                                    ustar 00juanjimenez                     staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#Programa para inicializar variables e imprimir sus valores

option=1
result=Resultado

optionArgument=$1
resultArgument=$2

echo "Opcion: $option - Resultado:$resul
echo "Argumento 1: $optionArgument - Argumento 2: $resultArgument
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            