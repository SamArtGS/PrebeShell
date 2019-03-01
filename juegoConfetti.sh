#!/bin/bash

function preguntas
{
	while IFS='' read -r line|| [[ -n "$line" ]]; do
    echo $line
    if (( "$line" == "r"));then
    	read -p "Ingresa la respuesta:" p
    fi
    done < "$1"
}
clear
echo "         C O N F E T T I P R E B E S "
echo ""
echo "Bienvenido a CONFETI PREBE. La versión foreverAlone de CONFETI"
#say "Hola CONFETI PREBES, aquí puedes ganar mucho, pero mucho, diiineeerooo."
echo ""
let random=$((RANDOM%(30000 - 10000 + 1000 ) + 10000))
echo "Y el premio de hoy es de: $random dólares americanos."
#say "Y el premio de hoy es de: $random dólares americanos"
printf "\n"
let seleccion=true
echo "      Te mostramos unas instrucciones algo diferentes"
echo ""
echo "Primero, por pregunta incorrecta, se te descuenta el 20% del premio. Por lo que a la quinta respuesta mal no tendrás nada."
#say "Primero, por pregunta incorrecta, se te descuenta el 20% del premio. Por lo que a la quinta respuesta mal estás fuera."
echo ""
echo "Pero como somos un CONFETI diferente, te dejamos seleccionar el tema: "
#say "Pero como somos un CONFETI diferente, te dejamos seleccionar el tema"
echo ""
echo "1) LINUX		2) Funny "
while true; do
	read -p "Ingrese el área en donde desea jugar: " seleccion
	if ((seleccion==1));then

		break
	elif ((seleccion==2));then

		break
	else
		echo "No seas wey, ingresa algo que esté en las opciones"
		say "No seas wey, ingresa algo que esté en las opciones"
	fi
done
array=("preguntasLin.txt" "preguntaFun.txt")
let contador=1
let total=15
if ((seleccion==1));then
		#say "Has elegido la sección de LINUX"
		preguntas ${array[0]}
else
		say "Has elegido las sección divertida"
fi
