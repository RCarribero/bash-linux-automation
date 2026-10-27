#!/bin/bash
# Registro interactivo de altas de alumnos almacenadas secuencialmente en base de datos de texto
read -p "¿Quieres agregar un alumno a la agenda si/no? " num
while [ $num = "si" ]
do
read -p "Indique nombre del alumno: " nombre
read -p "Indique edad del almno: " edad
read -p "Indique modulos que asiste el alumno: " modulo
echo $nombre >>Datos.txt
echo $edad >>Datos.txt
echo $modulo >>Datos.txt
read -p "¿Quieres agregar un alumno a la agenda si=1 no=0? " num
done
cat Datos.txt
