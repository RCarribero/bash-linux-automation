#!/bin/bash
# Bucle for para iterar dinámicamente sobre elementos introducidos por el usuario
echo "Escriba la cantidad de letras"
read x
for i in $x; do
echo "Letra $i"
read y
echo $y
done
