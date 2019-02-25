#!/bin/bash
clear
echo -e " 
      _      _      _   _           _  __  _____   _   _           ____     ___    _   _ 
     | |    / \    | \ | |         | |/ / | ____| | \ | |         |  _ \   / _ \  | \ | |
  _  | |   / _ \   |  \| |  _____  | ' /  |  _|   |  \| |  _____  | |_) | | | | | |  \| |
 | |_| |  / ___ \  | |\  | |_____| | . \  | |___  | |\  | |_____| |  __/  | |_| | | |\  |
  \___/  /_/   \_\ |_| \_|         |_|\_\ |_____| |_| \_|         |_|      \___/  |_| \_|
  "
 re='^[0-9]+$'
 partidas=-1
 while true
 do
  echo -n "Cuantas partidas quieres jugar: "
  read -r partidas
  if ! [[ $partidas =~ $re ]] 
  then
     echo "No es un numero valido de partidas"
     echo -e "Porfavor intenta de nuevo\n"
  elif [ $partidas -lt 0 ]; then
    echo "Debes elegir al menos una ronda"
  else
    echo -e "$partidas partidas, es hora del duelo!\n"
    break
  fi
	done
	
	
while [ $partidas != 0 ]
do
echo -e "\t\tPara jugar ingresaras solo el numero que corresponda a tu eleccion:\n"
aleatorio=$(( ( RANDOM % 3 )  + 1 ))
echo -e "1) Piedra\n"
echo -e "2) Papel\n"
echo -e "3) Tijeras\n"  
read -e -p ">> " op
case $op in
	1)
	echo -e "Elegiste Piedra\n"
	if [[ $aleatorio == "1" ]]
		then
		echo -e "\tLa computadora elegio Piedra\n\n"
		echo -e "\t\t\tEmpate\n\n"
	elif [[ $aleatorio == "2" ]]
		then
			echo -e "\tLa computadora eligio Papel\n\n"
			echo -e "\t\t\tGana la computadora\n\n\n"
	elif [[ $aleatorio == "3" ]]
		then
		echo -e "\tLa computadora eligio Tijeras\n\n"
		echo -e "\t\t\tTu ganas\n\n\n"
	fi
	partidas=$(($partidas -1))
	;;
	2)
	echo -e "Elegiste Papel\n"
	if [[ $aleatorio == "1" ]]
		then
		echo -e "\tLa computadora eligio Piedra\n\n"
		echo -e "\t\t\tTu ganas\n\n\n"
	elif [[ $aleatorio == "2" ]]
		then
			echo -e "\tLa computadora eligio Papel\n\n"
			echo -e "\t\t\tEmpate\n\n\n"
	elif [[ $aleatorio == "3" ]]
		then 
		echo -e "\tLa computadora eligio Tijeras\n\n"
		echo -e "\t\t\tGana la computadora\n\n\n"
	fi
	partidas=$(($partidas -1))
	;;
	3)
	echo -e "Elegiste Tijeras\n"
	if [[ $aleatorio == "1" ]]
		then
		echo -e "\tLa computadora eligio Piedra\n\n"
		echo -e "\t\t\tGana la computadora\n\n\n"
		
	elif [[ $aleatorio == "2" ]]
		then
		echo -e "\tLa computadora eligio Papel\n\n"
		echo -e "\t\t\tTu ganas\n\n\n"
	elif [[ $aleatorio == "3" ]]
		then
		echo -e "\tLa computadora eligio Tijeras\n\n"
		echo -e "\t\t\tEmpate\n\n\n"
	fi
	partidas=$(($partidas -1))
	;;
	esac
	done 
	echo -e "\t\tFin del juego, gracias por jugar :D !" 
	exit

		
		
