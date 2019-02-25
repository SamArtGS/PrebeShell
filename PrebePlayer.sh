#!/bin/bash
clear
echo -e '\e[94m' " 
  ____    ____    _____   ____    _____   ____    _          _     __   __  _____   ____    
 |  _ \  |  _ \  | ____| | __ )  | ____| |  _ \  | |        / \    \ \ / / | ____| |  _ \   
 | |_) | | |_) | |  _|   |  _ \  |  _|   | |_) | | |       / _ \    \ V /  |  _|   | |_) |  
 |  __/  |  _ <  | |___  | |_) | | |___  |  __/  | |___   / ___ \    | |   | |___  |  _ <   
 |_|     |_| \_\ |_____| |____/  |_____| |_|     |_____| /_/   \_\   |_|   |_____| |_| \_\  "
 
buscaap=$(ls /usr/bin | grep -c mpg123)
sudo apt-get -y -qq install pv
function reproductor
{
 #falta poner opciones si se quiere instalar mpg123 o no  
echo "Ingrese el directorio donde se encuentre su musica." 

read -e -p ">>" ruta
	cd $ruta                                                                            
		if [ $? != 0 ]; then
			cd
			read
		else 
			cd 
			clear
		echo -e "\t\tLos siguentes comandos te ayudaran a navegar por la prebe player\n"
		echo -e "\tP)Pausar"
		echo -e "\t\tS)Detener"
		echo -e "\t\t\tF)Saltar a la siguiente cancion"
		echo -e "\t\t\t\t\t\t\tB)Retroceder una cancion"
		echo -e "\t\t\t\t\t\t\t\t\t\tQ)salir"
		
			mpg123 -C --title -q $ruta/*
			echo "Progeso de cancion"

		fi

}
if test $buscaap -eq 0;
	then
	echo "no tienes instalando mpg3"
	read -p "Deseas instalarlo (s n) " eleccion
	case $eleccion in
		s) sudo apt-get install mpg123
			echo -e "\t\t El mpg123 se instalo"
			reproductor
			;;
		n) exit
			;;
			
	esac		
else
echo "Ya esta instalado"
reproductor

fi


