#!/bin/bash
# Menú interactivo de monitorización del sistema y usuarios conectados
echo "1)Usuarios conectados"
echo "2)Ruta actual"
echo "3)Muestra listado de directorios acutual"
echo "4)Salir"
read -p "Indica una opcion: " Op
case $Op in 
    1)
        who | cut -d" " -f1,14
    ;;
    2)
        pwd
    ;;
    3)
        ls -li
    ;;
    4)
        exit
    ;;
    *)
        echo "Opcion no valida"
    ;;
esac
