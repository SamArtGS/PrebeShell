#!/bin/bash
clear
echo -e " 
      _      _      _   _           _  __  _____   _   _           ____     ___    _   _ 
     | |    / \    | \ | |         | |/ / | ____| | \ | |         |  _ \   / _ \  | \ | |
  _  | |   / _ \   |  \| |  _____  | ' /  |  _|   |  \| |  _____  | |_) | | | | | |  \| |
 | |_| |  / ___ \  | |\  | |_____| | . \  | |___  | |\  | |_____| |  __/  | |_| | | |\  |
  \___/  /_/   \_\ |_| \_|         |_|\_\ |_____| |_| \_|         |_|      \___/  |_| \_|
  "
 
echo -e "\t\tPara jugar ingresaras solo el numero que corresponda a tu eleccion:\n"
aleatorio=$(( ( RANDOM % 3 )  + 1 ))
echo -e "1) Piedra\n"
echo -e "2) Papel\n"
echo -e "3) Tijeras\n"  
read -e -p ">> " op
case $op in
	1)
	echo -e "Elegiste Piedra\n"
	if $aleatorio=1
		then
		echo "\tElegi Piedra\n\n"
		echo "\t\t\tEmpate\n\n\n"
	elif $aleatorio=2
		then
			echo "\tElegi Papel\n\n"
			echo "\t\t\tGana la computadora\n\n\n"
		elif $aleatorio=3
			then
				echo "\tElegi Tijeras\n\n"
				echo "\t\t\tTu ganas\n\n\n"
	fi		
	break ;;
	2)
	echo -e "Elegiste Papel\n"
	if $aleatorio=1
		then
		echo "\tElegi Piedra\n\n"
		echo "\t\t\tTu ganas\n\n\n"
	elif $aleatorio=2
		then
			echo "\tElegi Papel\n\n"
			echo "\t\t\tEmpate\n\n\n"
	elif $aleatorio=3
		then 
		echo "\tElegi Tijeras\n\n"
		echo "\t\t\tGana la computadora\n\n\n"
	fi
	break ;;
	3)
	echo "Elegiste Tijeras\n"
	if $aletorio=1
	then
		echo "\tElegi Piedra\n\n"
		echo "\t\t\tGana la computadora\n\n\n"
	elif $aleatorio=2
		then
		echo "\tElegi Papel\n\n"
		echo "\t\t\tTu ganas\n\n\n"
		elif $aleatorio=3
			then
				echo "\tElegi Tijeras\n\n"
				echo "\t\t\tEmpate\n\n\n"
	fi
	break ;;
		
		
