#!/bin/bash
# Comparación numérica de valores enteros con operador relacional -ge
read -p "¿Cuál es tu edad? " Edad
if [ $Edad -ge 18 ]
    then   
        echo Eres mayor de edad
    else
        echo No eres mayor de edad
fi
