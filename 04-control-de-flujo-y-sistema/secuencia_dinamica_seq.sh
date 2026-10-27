#!/bin/bash
# Generación de secuencias numéricas dinámicas con seq dentro de bucle for
numero=1
read -p "dime un numero: " num
for i in $(seq 1 $num )
do
echo $numero
numero=$((numero+1))
done
