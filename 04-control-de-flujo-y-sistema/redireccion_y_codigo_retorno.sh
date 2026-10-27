#!/bin/bash
# Redirección de salida estándar y verificación del código de retorno de la última orden ($?)
ls /home/alumno >> /null/Basura.txt 2>&1
EXITO=$?
if [ $EXITO -eq 0 ]
    then
        echo "Orden ejecutada"
    else
        echo "Orden no ejecutada"
fi
