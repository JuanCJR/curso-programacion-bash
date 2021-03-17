#!/bin/bash
#Programa para ejemplificar el empaquetamiento con clave utilizando zip
#Autor: Juan C. Jimenez

echo "Empaquetar todos los scripts de la carpeta del curso con zip y asignarle una clave de seguridad"

zip -e shellCourse *.sh
