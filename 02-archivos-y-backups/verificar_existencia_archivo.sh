#!/bin/bash
# Comprobación de existencia de archivo en el sistema de ficheros con operador -f
read -p "Que fichero desea comprobar: " F
if [ -f $F ]
    then 
        echo "El fichero existe"
    else
        echo "El fichero no existe"
fi
