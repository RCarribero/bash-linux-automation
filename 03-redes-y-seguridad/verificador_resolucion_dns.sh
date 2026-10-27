#!/bin/bash
# Comprobación de resolución de nombres DNS en bucle for sobre una lista de hosts
for HOST in www.google.com www.altavista.com www.yahoo.com
do
echo "----------------"
echo $HOST
echo "----------------"
/usr/bin/host $HOST
echo "----------------"
done
