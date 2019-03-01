#!/bin/bash
clear
echo -e "\e[36m☆ ∩∩ （ • •）☆
┏━∪∪━━━━━━━━━━━━━━━━━━━━━┓
 ☆ SOY UN PREBE FELIZ ☆
┗━━━━━━━━━━━━━━━━━━━━━━━━┛\e[36m﻿"
bash "$PWD/portada.sh"
echo -e "Por favor, inicia sesión."
#Evita que le pongas ^C o ^Z
#trap '' SIGINT 
#trap '' SIGSTOP

if [ "$USER" != "root" ];then
  echo "No podrás usar el programa, necesitas poner sudo a la PrebeShell"
  exit
fi
read -p "Ingrese un nombre de usuario (registrado en el equipo actual): " user

userR=`grep "$user" /etc/shadow | cut -d: -f1`
echo $userR
if (( "$userR" == "$user" ));then
	echo -e "Estás admitido"
else
	echo "	Fuera wee. No existes. Llégale, órale órale órale..."
	exit
fi

salsa=`awk -F: '$1=="samuel" {gsub(/\$[^$]+$/, "$",$3);print $2}' OFS=: /etc/shadow`



mkpasswd -m sha-512 $contrasena -S "/gIs.RMV">contrasenaEncriptada.txt
contra2=$(<contrasenaEncriptada.txt)

echo $salsa
echo $contra2

if [ "$salsa" == "$contra2" ];then
	echo -e "Únete compa"
else
	echo -e "Deja de hakiarme, llégale >:v"
	exit 
fi

let menu
while [ "$menu" != "salir" ]
do
echo -e "\e[36m☆ ∩∩ （ • •）☆
┏━∪∪━━━━━━━━━━━━━━━━━━━━━┓
 ☆ SOY UN PREBE FELIZ ☆
┗━━━━━━━━━━━━━━━━━━━━━━━━┛﻿\e[36m"
bash "$PWD/portada.sh"
echo -e "\e[34marbol - fecha - hora - jankenpon - Confetti - Casilas - tareas - PrebePlayer - ayuda - creditos -salir\e[34m"
read -p "Ingrese una de las opciones que están: (escríbalas pues...): " menu
case $menu in
        arbol )
            bash "$PWD/arbol.sh"
	    read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
		clear
            ;;

        fecha )
            bash "$PWD/fecha.sh"
	    read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
            clear
            ;;

        hora )
            bash "$PWD/hora.sh"
            read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
            clear
            ;;
	jankenpon )
            bash "$PWD/jankenpon.sh"
            read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
            clear
            ;;
	confetti )
            bash "$PWD/juegoConfetti.sh"
            read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
            clear
            ;;
	casillas )
            bash "$PWD/juego.sh"
            read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
            clear
            ;;
 	prebeplayer )
            bash "$PWD/prebeplayer2-0.sh"
            read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
            clear
            ;;
	 tareas )
            bash "$PWD/tareas.sh"
            read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
            clear
            ;;
 	ayuda )
            bash "$PWD/ayuda.sh"
            read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
            clear
            ;;
    creditos)
            bash "$PWD/creditos.sh"
            read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."
            clear
            ;;
	
  esac
done


