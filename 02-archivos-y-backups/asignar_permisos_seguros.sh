#!/bin/bash
# Comprobación de ruta y fichero, y asignación de permisos octales específicos (744)
read -p "Indique la ruta : "  ruta
read -p "Indique el Archivo : "  Archivo
if [ -f $ruta$Archivo ]
then
chmod 744 $ruta$Archivo
echo cambiando permisos del fichero $ruta$Archivo
else
echo "la Archivo especificado no es valido"
fi
