#!/bin/bash
# Auditoría de usuarios del sistema (/etc/passwd), comprobación de conexión y búsqueda
echo Menu
echo "Opcion 1 Mostrar los nombre y uid de los usuarios del sistema"
echo "Opcion 2 Comprobador de usuarios conectados al sistema"
echo "Opcion 3 Mostrar los directorios que empiezan por a o A"
read -p "Indica una de las opciones: " option
case $option in
1)
cat /etc/passwd | cut -d ':' -f 1,3
;;
2)
read -p "Ingrese el nombre de usuario: " usuario

if who | grep -wq "$usuario"; 
then
    echo "El usuario $usuario está conectado al sistema."
else
    echo "El usuario $usuario no está conectado al sistema."
fi
;;
3)
find ~ -type f -name 'a*'
;;
*)
echo No has elegido ninguna opcion valida
;;
esac
