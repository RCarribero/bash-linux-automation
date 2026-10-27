#!/bin/bash
# Bucle while con decremento aritmético de variables
number=10
while [ $number -gt 5 ];
do
echo $number
number=$(($number-1))
done
