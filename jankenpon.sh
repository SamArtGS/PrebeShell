#!/bin/bash
clear
echo -e "\e[33m
      _      _      _   _           _  __  _____   _   _           ____     ___    _   _ 
     | |    / \    | \ | |         | |/ / | ____| | \ | |         |  _ \   / _ \  | \ | |
  _  | |   / _ \   |  \| |  _____  | ' /  |  _|   |  \| |  _____  | |_) | | | | | |  \| |
 | |_| |  / ___ \  | |\  | |_____| | . \  | |___  | |\  | |_____| |  __/  | |_| | | |\  |
  \___/  /_/   \_\ |_| \_|         |_|\_\ |_____| |_| \_|         |_|      \___/  |_| \_|
  \e[33m"
 re='^[0-9]+$'
 partidas=-1
 while true
 do
  echo -n -e "\e[2;32mCuantas partidas quieres jugar:\e[2;32m "
  read -r partidas
  if ! [[ $partidas =~ $re ]] 
  then
     echo -e "\e[2;32mNo es un numero valido de partidas\e[2;32m"
     echo -e "\e[2;32mPorfavor intenta de nuevo\n\e[2;32m"
  elif [ $partidas -lt 0 ]; then
    echo "\e[2;32mPDebes elegir al menos una ronda\e[2;32mP"
  else
    echo -e "\e[95m$partidas partidas, es hora del duelo!\n\e[95m"
    break
  fi
	done
	
	
while [ $partidas != 0 ]
do
echo -e "\e[95m\t\tPara jugar ingresaras solo el numero que corresponda a tu eleccion:\n\e[95m"
aleatorio=$(( ( RANDOM % 3 )  + 1 ))
echo -e "\e[31m1) Piedra\n\e[31m"
echo -e "\e[32m2) Papel\n\e[32m"
echo -e "\e[34m3) Tijeras\n\e[34m"  
read -e -p ">> " op
case $op in
	1)
	echo -e "\e[31mElegiste Piedra\n\e[31m"
	if [[ $aleatorio == "1" ]]
		then
		echo -e "\e[92m\tLa computadora elegio Piedra\n\n\e[92m"
		echo -e "\e[95m\t\t\tEmpate\n\n\e[95m"
	elif [[ $aleatorio == "2" ]]
		then
			echo -e "\e[93m\tLa computadora eligio Papel\n\n\e[93m"
			echo -e "\e[95m\t\t\tGana la computadora\n\n\n\e[95m"
	elif [[ $aleatorio == "3" ]]
		then
		echo -e "\tLa computadora eligio Tijeras\n\n"
		echo -e "\e[95m\t\t\tTu ganas\n\n\n\e[95m"
	fi
	partidas=$(($partidas -1))
	;;
	2)
	echo -e "\e[32mElegiste Papel\n\e[32m"
	if [[ $aleatorio == "1" ]]
		then
		echo -e "\e[92m\tLa computadora eligio Piedra\n\n\e[92m"
		echo -e "\e[95m\t\t\tTu ganas\n\n\n\e[95m"
	elif [[ $aleatorio == "2" ]]
		then
			echo -e "\e[93m\tLa computadora eligio Papel\n\n\e[93m"
			echo -e "\e[95m\t\t\tEmpate\n\n\n\e[95m"
	elif [[ $aleatorio == "3" ]]
		then 
		echo -e "\e[96m\tLa computadora eligio Tijeras\n\n\e[96m"
		echo -e "\e[95m\t\t\tGana la computadora\n\n\n\e[95m"
	fi
	partidas=$(($partidas -1))
	;;
	3)
	echo -e "\e[34mElegiste Tijeras\n\e[34m"
	if [[ $aleatorio == "1" ]]
		then
		echo -e "\e[92m\tLa computadora eligio Piedra\n\n\e[92m"
		echo -e "\e[95m\t\t\tGana la computadora\n\n\n\e[95m"
		
	elif [[ $aleatorio == "2" ]]
		then
		echo -e "\e[93m\tLa computadora eligio Papel\n\n\e[93m"
		echo -e "\e[95m\t\t\tTu ganas\n\n\n\e[95m"
	elif [[ $aleatorio == "3" ]]
		then
		echo -e "\e[96m\tLa computadora eligio Tijeras\n\n\e[96m"
		echo -e "\e[95m\t\t\tEmpate\n\n\n\e[95m"
	fi
	partidas=$(($partidas -1))
	;;
	esac
	done 
	echo -e "\e[93m\t\tFin del juego, gracias por jugar :D !\e[93m" 
	exit

		
		
