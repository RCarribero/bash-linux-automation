#!/bin/bash
# Cifrado de directorios y datos mediante clave utilizando GnuPG
read -p "Ingrese la ruta del directorio que desea encriptar: " directorio
read -p "Ingrese la clave de encriptación: " clave
echo
gpg "$clave" "$directorio"
echo "Encriptación completada exitosamente."
