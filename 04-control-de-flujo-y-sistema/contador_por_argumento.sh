#!/bin/bash
# Contador iterativo con límite definido por argumento posicional ($1)
num=1
while [ $num -le $1 ]
do
echo $num
num=$(($num+1))
done
