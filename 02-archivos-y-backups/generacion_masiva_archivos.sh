#!/bin/bash
# Creación masiva secuencial de archivos mediante bucle while y listado por comodín
VAL=1
while [ $VAL -lt 10 ]
do
echo Creando archivo arch$VAL
touch arch$VAL
VAL=$(($VAL+1))
done
ls -l arch[0-9]*
