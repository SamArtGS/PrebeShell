#!/bin/bash
clear
echo -e '\e[94m' " 
  ____    ____    _____   ____    _____   ____    _          _     __   __  _____   ____    
 |  _ \  |  _ \  | ____| | __ )  | ____| |  _ \  | |        / \    \ \ / / | ____| |  _ \   
 | |_) | | |_) | |  _|   |  _ \  |  _|   | |_) | | |       / _ \    \ V /  |  _|   | |_) |  
 |  __/  |  _ <  | |___  | |_) | | |___  |  __/  | |___   / ___ \    | |   | |___  |  _ <   
 |_|     |_| \_\ |_____| |____/  |_____| |_|     |_____| /_/   \_\   |_|   |_____| |_| \_\  "
 
gorra=$(ls /usr/bin | grep -c mpg123)

if test $gorra -eq 0;then
echo "no tienes instalando mpg3"
else
echo "Ya esta instalado"
fi
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
			mpg123 -C --title -q $ruta/*
		fi
