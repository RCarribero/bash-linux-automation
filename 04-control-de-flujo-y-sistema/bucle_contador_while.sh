#!/bin/bash
# Bucle while con condición numérica e incremento aritmético con let
num=0
while [ $num -le 10 ]
do
echo "$num: $num"
let num=$num+1
done
