#!/bin/bash
clear
negro='\e[0;30m'
grisosc='\e[1;30m'
azul='\e[0;34m'
azulf='\e[1;34m'
rojo='\e[0;31m'
rojof='\e[1;31m'
cian='\e[0;36m'
cianf='\e[1;36m'
verde='\e[0;32m'
verdef='\e[2;32m'
purpura='\e[0;35m'
purpuraf='\e[1;35m'
cafe='\e[0;33m'
amarillo='\e[1;33m'
gris='\e[0;37m'
blanco='\e[1;37m'
pred='\e[0m' #regresa al color predeterminado



casilla=(          )
casill=(0 1 2 3 4 5 6 7 8 9)


#ALGUIEN GANÓ
function gana ()
{
clear
cuadricula
echo "!ALGUIEN HA GANADO!"
echo "FELICIDADES JUGADR $simbolo"

exit
}

#COMBINACIONES GANADORAS 
function combinacion()
{
	if [ $simbolo == "${casilla[1]}" ] && [ $simbolo == "${casilla[2]}" ] && [ $simbolo == "${casilla[3]}" ]; then
     	gana
	elif [ $simbolo == "${casilla[4]}" ] && [ $simbolo == "${casilla[5]}" ] && [ $simbolo == "${casilla[6]}" ]; then
  	gana 
	elif [ $simbolo == "${casilla[7]}" ] && [ $simbolo == "${casilla[8]}" ] && [ $simbolo == "${casilla[9]}" ]; then
	gana     
 	elif [ $simbolo == "${casilla[1]}" ] && [ $simbolo == "${casilla[4]}" ] && [ $simbolo == "${casilla[7]}" ]; then
	gana 
	elif [ $simbolo == "${casilla[2]}" ] && [ $simbolo == "${casilla[5]}" ] && [ $simbolo == "${casilla[8]}" ]; then
	gana 
	 elif [ $simbolo == "${casilla[3]}" ] && [ $simbolo == "${casilla[6]}" ] && [ $simbolo == "${casilla[9]}" ] ; then
	gana 
	elif [ $simbolo == "${casilla[1]}" ] && [ $simbolo == "${casilla[5]}" ] && [ $simbolo == "${casilla[9]}" ]; then
	gana 
	elif [ $simbolo == "${casilla[3]}" ] && [ $simbolo == "${casilla[5]}" ] && [ $simbolo == "${casilla[7]}" ]; then
	gana 
	fi
	
}


function cuadricula ()
{
echo -e "$blanco"
echo  " | ${casilla[1]} | ${casilla[2]} | ${casilla[3]} |	=| ${casill[1]} | ${casill[2]} | ${casill[3]} | "
echo  " | ${casilla[4]} | ${casilla[5]} | ${casilla[6]} |	=| ${casill[4]} | ${casill[5]} | ${casill[6]} | "	
echo  " | ${casilla[7]} | ${casilla[8]} | ${casilla[9]} |	=| ${casill[7]} | ${casill[8]} | ${casill[9]} | "
echo -e "$pred"
}

#DEVULEVE EL ESTADO DE UNA CASILLA 
function estados ()
{


read  -e -p "Ingrese un número: " cuadro
clear
case $cuadro in
[1-9]) if [ -z ${casilla[$cuadro]} ]; # -z comprueba si una cadena está vacía
	then 
	estado=vacio
	
	else 
	estado=ocupado
	fi
	;;


*) while true
	do
	echo "Ingresa una opción válida"
	break
	done
	;;
esac	


}



#PERMITE LA ASIGNACION DE CARACTERES
function eleccion ()
{
	estados 
	
	if [ "$estado" == "vacio" ]; 
	then
	#en la siguiente linea, a la casilla elegida por el usuario se le asignará 		un símbolo 	
	casilla[$cuadro]=$1 # simbolo será X ó O...hacer una función aparte
	combinacion
	else
	echo "Opción inválida (casilla ocupada) "
	cuadricula #se hace un llamado a la función misma hasta que el usuario ingrese una opción válida 
	estados
	fi
}


#DICTA EL TURNO DEL JUGADOR 
function turnos ()
{
contador=0
while true
do
#echo "el contador es : $contador" #control de contador
	if (( ( "$contador" % 2) == 0 )) ; 
	then 
	echo  "$1 selecciona una casilla: "
	simbolo="O"
	eleccion $simbolo
	
	contador=$((contador+ 1))  
	
	else
	echo "$2 selecciona una casilla: "
	simbolo="X"
	eleccion $simbolo
	contador=$((contador+ 1))  
	fi
cuadricula
combinacion
done
}

#NOMBRE DE JUGADORES
function jugadores ()
{
echo -e "$blanco Nombre del jugador uno: $pred" 
read jugador1
echo -e "$blanco Nombre del jugador dos: $pred"
read jugador2
clear
cuadricula #el llamado a cuadrícula sólo imprime las casillas
turnos $jugador1 $jugador2 #manda a "turnos" los valores  de jugador1 y de juagdor 2
return 0;
}


#MENÚ INICIAL

function menu ()
{
echo -e "$verde
_________          _______  _______  _______    ______   _______  _          _______  _______ _________ _______ 
\__    _/|\     /|(  ____ \(  ____ \(  ___  )  (  __  \ (  ____ \( \        (  ____ \(  ___  )\__   __/(  ___  )
   )  (  | )   ( || (    \/| (    \/| (   ) |  | (  \  )| (    \/| (        | (    \/| (   ) |   ) (   | (   ) |
   |  |  | |   | || (__    | |      | |   | |  | |   ) || (__    | |        | |      | (___) |   | |   | |   | |
   |  |  | |   | ||  __)   | | ____ | |   | |  | |   | ||  __)   | |        | | ____ |  ___  |   | |   | |   | |
   |  |  | |   | || (      | | \_  )| |   | |  | |   ) || (      | |        | | \_  )| (   ) |   | |   | |   | |
|\_)  )  | (___) || (____/\| (___) || (___) |  | (__/  )| (____/\| (____/\  | (___) || )   ( |   | |   | (___) |
(____/   (_______)(_______/(_______)(_______)  (______/ (_______/(_______/  (_______)|/     \|   )_(   (_______)
                                                                                                                
                                                                                                                
$pred "

echo -e "$blanco ¿qué deseas hacer?" 
echo -e " 1)Jugar " 
echo -e " 3)Reglas "
echo -e " 2)Salir $pred"

while true
do
read -e -p ">" opcion 
case $opcion in
1) jugadores
exit	
clear;;
  

2) exit;; 

*) 	clear
	echo -e "$blanco Opción inválida, selecciona una opción válida $pred"
	break
	;;
esac
done
menu
}
menu





