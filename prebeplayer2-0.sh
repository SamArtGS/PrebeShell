#!/bin/bash
clear
echo -e '\e[94m' " 
  ____    ____    _____   ____    _____   ____    _          _     __   __  _____   ____    
 |  _ \  |  _ \  | ____| | __ )  | ____| |  _ \  | |        / \    \ \ / / | ____| |  _ \   
 | |_) | | |_) | |  _|   |  _ \  |  _|   | |_) | | |       / _ \    \ V /  |  _|   | |_) |  
 |  __/  |  _ <  | |___  | |_) | | |___  |  __/  | |___   / ___ \    | |   | |___  |  _ <   
 |_|     |_| \_\ |_____| |____/  |_____| |_|     |_____| /_/   \_\   |_|   |_____| |_| \_\  "
 
buscaap=$(ls /usr/bin | grep -c mpg123)
if test $buscaap -eq 0;
	then
	echo "no tienes instalando mpg3"
	read -p "Deseas instalarlo (s/n) " eleccion
	case $eleccion in
		s) sudo apt-get install mpg123
			echo -e "\t\t El mpg123 se instalo"
			;;
		n) echo -e "\t\tBai :)"
			exit
			;;
			
	esac		
else
echo "Ya esta instalado"
echo "Ingrese el directorio donde se encuentre su musica." 
read -e -p ">>" ruta
cd $ruta  

fi
	clear
	echo -e "\t\e[1;33m#############\e[0m \e[1;34m              BIENVENIDO AL MENU         \e[1;33m############\e[0m"
	echo -e "\t\e[1;33m#############\e[0m \e[1;34m1)Reproducir todas las canciones         \e[1;33m############\e[0m"
	echo -e "\t\e[1;33m#############\e[0m \e[1;34m2)Reproducir todas las canciones en aleatorio\e[0m \e[1;33m#######\e[0m"
	echo -e "\t\e[1;33m#############\e[0m \e[1;34m3)Reproducir una sola cancion\e[0m            \e[1;33m############\e[0m"
	echo -e "\t\e[1;33m#############\e[0m \e[1;34m4)Salir\e[0m                                  \e[1;33m############\e[0m"
	read op
case $op in
	1)	clear
		echo -e "\t\e[1;33m*************\e[0m \e[1;34m                   MENU DE OPCIONES                \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mS) Para pausar, presiona                           \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mF) Para ir a la siguiente canción, presiona 	 \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mD) Para retroceder una canción, presiona 		 \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mB) Para reiniciar la canción, presiona 		 \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34m+) Para subir el volumen, presiona	         \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34m-) Para bajar el volumen, presiona 	         \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mL) Para mostrar la lista de reproducción, presiona \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mH) Para mostrar más comandos, presiona             \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mQ) Para salir del reproductor, presiona            \e[1;33m************\e[0m"
		echo ""
		mpg123 -C --title -q $ruta/* | pv -t -p

		;;
	2) 	clear
		echo -e "\t\e[1;33m*************\e[0m \e[1;34m                   MENU DE OPCIONES                \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mS) Para pausar, presiona                           \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mF) Para ir a la siguiente canción, presiona 	 \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mD) Para retroceder una canción, presiona 		 \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mB) Para reiniciar la canción, presiona 		 \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34m+) Para subir el volumen, presiona	         \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34m-) Para bajar el volumen, presiona 	         \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mL) Para mostrar la lista de reproducción, presiona \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mH) Para mostrar más comandos, presiona             \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mQ) Para salir del reproductor, presiona            \e[1;33m************\e[0m"
		echo ""
		mpg123 -C --title -q -z $ruta/*	| pv -t -p
		;;
	3) clear
		echo -e "\t\e[1;33m>>>>>>>>>>>>>\e[0m\e[1;34mIngrese el nombre de la cancion que desee escuchar.\e[1;33m<<<<<<<<<<<<<\e[0m"
		read cancion
		echo -e "\t\e[1;33m*************\e[0m \e[1;34m                   MENU DE OPCIONES                \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mS) Para pausar, presiona                           \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mF) Para ir a la siguiente canción, presiona 	 \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mD) Para retroceder una canción, presiona 		 \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mB) Para reiniciar la canción, presiona 		 \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34m+) Para subir el volumen, presiona	         \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34m-) Para bajar el volumen, presiona 	         \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mL) Para mostrar la lista de reproducción, presiona \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mH) Para mostrar más comandos, presiona             \e[1;33m************\e[0m"
		echo -e "\t\e[1;33m*************\e[0m \e[1;34mQ) Para salir del reproductor, presiona            \e[1;33m************\e[0m"
		echo ""
		mpg123 -C /$ruta/"$cancion.mp3"| pv -t -p -h -V
		;;
	 4) exit
		;;
esac
