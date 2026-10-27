#!/bin/bash
# Validación de argumentos posicionales, verificación de existencia y tamaño, y compresión de archivos
if [ $#  -eq 2 ]
    then
        if [ -f $1 ]
            then
                    if [ -f $2 ]
            then
                if [ -s $1 ]
                then
                                if [ -s $2 ]
                then
                echo comprimiendo los archivos $1 y $2
                rar a compress.rar $1 $2
                else
                echo los ficheros no existen
                fi
                else
                echo El archivo esta vacio
                fi
                else
            echo los ficheros no existen
        fi
        else
            echo los ficheros no existen
        fi
    else 
        echo Numero de parametros incorrecto
fi
