#!/bin/bash
# Verificación de parámetros recibidos por línea de comandos y eliminación del archivo especificado
# read -p "Indica el archivo a borrar" archivo
# rm $archivo
if [ $# -eq 1 ]
    then
        echo "Has indicado el archivo  $1"
        echo "Eliminando $1"
        rm $1
    else
        echo "No has indicado nada"
fi
