#!/bin/sh
while true
do

echo "\n ¿Qué desea relaizar? \n"
echo "1)Crear una tarea"
echo "2)Regresar \n"
read -p "Ingrese el número de la opción:  " opcion
case $opcion in
1) echo "Ingrese los parámetros de la tarea que desea crear"
   read -p "Ingrese los minutos(0-59) " min
   read -p "Ingrese la hora(0-23) " hora
   read -p "Ingrese el dia del mes (1-31) " diames
   read -p "Ingrese el mes(0-12) " mes 
   read -p "Ingrese el día de la semana " diasemana
   read -p "Ingrese las instrucciones que sea ejecutar " comando 
   echo "$min $hora $diames $mes $diasemana	root $comando" >>/etc/crontab
   echo "TAREA CREADA";;

2)break ;;

*)echo "NO HA INTRODUCIDO NINGUNA OPCIÓN VÁLIDA";;
esac
done

