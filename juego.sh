#!/bin/bash


casilla=(         )


function cuadricula ()
{
echo  " | ${casilla[0]} | ${casilla[1]} | ${casilla[2]} | "
echo  " | ${casilla[3]} | ${casilla[4]} | ${casilla[5]} | "
echo  " | ${casilla[6]} | ${casilla[7]} | ${casilla[8]} | "
}

#DEVULEVE EL ESTADO DE UNA CASILLA 
function estados ()
{

read -p "Ingrese un número" cuadro
case $cuadro in
[1-9]) if [  -z ${casilla[$cuadro]}   ]; then # -z comprueba si una cadena está vacía
	estado=vacio
	else 
	estado=ocupado
	fi
	;;


*) echo "Ingresa una opción válida";;
esac	

}



#PERMITE LA ASIGNACION DE SIMBOLOS
function eleccion ()
{
estados
	if [ "$estado" == "vacio" ]; then
#en la siguiente linea, a la casilla elegida por el usuario se le asignará un símbolo
	casilla[$cuadro]=simbolo # simbolo será X ó O...hacer una función aparte
	else 
	echo "Opción inválida (casilla ocupada) "
#se hace un llamado a la función misma hasta que el usuario ingrese una opción válida 
eleccion
	fi
}


#DICTA EL TURNO DEL JUGADOR 
function turnos ()
{

contador=1 
while true
do
contador=contador+1
paroinpar=`expr "$contador" % 2` ##guarda en el resultado de la expresión, aentos graves
	if [ "$paroinpar" == "0" ]; then 
	echo  "$jugador1 selecciona una casilla: "
	simbolo="O"
eleccion
	else
	echo "$juagdor2 selecciona una casilla: "
	simbolo="X"
eleccion
	fi
cuadricula

done
}

#NOMBRE DE JUGADORES
function jugadores ()
{
read -p "Nombre del jugador uno" jugador1
read -p "Nombre del jugador dos" jugador2
}



#MENÚ INICIAL
echo "Nombre del juego"
echo "¿qué deseas hacer?" 
echo "1)Jugar" 
echo "2)Salir"

read opcion
while true
do

case $opcion in

1) jugadores
   clear
   cuadricula #el llamado a cuadrícula sólo imprime las casillas
   turnos;;

2) break;; #agregar un break

*) echo "Selecciona una opción válida";;
esac
done
