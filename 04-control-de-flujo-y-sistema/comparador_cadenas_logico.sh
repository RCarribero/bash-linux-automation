#!/bin/bash
# Comparación lógica de cadenas de texto y evaluación con operador OR (-o)
nombre=merche
nombre2=Merche
read -p "Escribe tu nombre: " NOMBRE
if [ "$NOMBRE" = "$nombre" -o "$nombre2" = "$nombre" ]
    then
        echo El nombre existe
    else
        echo El nombre no existe
fi
