#!/bin/bash
# Comprobación de la variable de entorno de directorio de trabajo $PWD
if test $PWD
    then 
        echo "El directorio de trabajo es $PWD"
fi
