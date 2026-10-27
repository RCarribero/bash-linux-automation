#!/bin/bash
# Comprobación de existencia de fichero mediante negación lógica (!) y creación en caso contrario
read -p "Indica el nombre y la ruta del fichero: " Nombre
if [ ! -f $Nombre ]
    then
        touch $Nombre
        echo Fichero $Nombre creado
    else
    echo El fichero $Nombre ya existe
fi
