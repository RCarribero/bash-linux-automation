#!/bin/bash 
# Generador dinámico de código HTML con medición del tiempo de ejecución (benchmark)
time1=`date +%s`
read -p "Indica cuantas Filas quieres: " row
read -p "Indica cuantas Columnas quieres: " col
read -p "Indica cuantas numero de px borde quieres: " bd
read -p "Indica cuantas numero de anchura en px quieres: " wht
read -p "Indica cuantas numero de altura en px quieres: " hht
touch index.html
echo "
<HTML>
    <HEAD>
        <TITLE></TITLE>
    </HEAD>
    <BODY>
        <H1 align="center" >Tabla de $row  x $col</H1>
        <!--Tabla generada dinámicamente-->
        <TABLE align="center" width="$wht" px height="$hht" px border="$bd">" > index.html
rowi=1
while [ $rowi -le $row ]
    do
        echo "            <TR>" >> index.html
        coli=1
    while [ $coli -le $col ]
    do
        echo "                <TD>$rowi</TD>" >> index.html
        ((coli++))
    done
        echo "            </TR>" >> index.html
        ((rowi++))
    done
echo "        </TABLE>  
    </BODY> 
</HTML>" >> index.html
time2=`date +%s`
xdg-open ./index.html 2>/dev/null || open ./index.html 2>/dev/null || echo "Archivo index.html generado con éxito."
echo "Tiempo total transcurrido: $((time2 - time1)) segundos"
