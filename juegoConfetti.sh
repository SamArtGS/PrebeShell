#!/bin/bash
function preguntas
{
		$contador=$contador +1
		echo "Pregunta número $contador: $line"
		say "Pregunta número: $contador, $el"
		echo "a) $line		b) $line	 c) $line	 d) $line"
		say "inciso a, $la,inciso b $lo, inciso c, $al, inciso d, $le"
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
echo "Primero, por pregunta incorrecta, se te descuenta el 20% del premio. Por lo que a la quinta respuesta mal estás fuera."
#say "Primero, por pregunta incorrecta, se te descuenta el 20% del premio. Por lo que a la quinta respuesta mal estás fuera."
echo ""
echo "Pero como somos un CONFETI diferente, te dejamos seleccionar el tema: "
#say "Pero como somos un CONFETI diferente, te dejamos seleccionar el tema"
echo ""
echo "1) LINUX		2) MATEMATICAS		3) CULTURA GENERAL		4) FUNNY"
while true; do
	read -p "Ingrese el área en donde desea jugar: " seleccion
	if ((seleccion==1));then
		break
	elif ((seleccion==2));then
		break
	elif ((seleccion==3));then
		break
	elif ((seleccion==4));then
		break
	else
		echo "No seas wey, ingresa algo que esté en las opciones"
		say "No seas wey, ingresa algo que esté en las opciones"
	fi
done
let contador=1
let total=15
if ((seleccion==1));then
		#say "Has elegido la sección de LINUX"
		for i in $(seq 1 15);do
			preguntas $i
		done
		reading
elif ((seleccion==2));then
		
		say "Has elegido la sección de MATEMÁTICAS"
elif ((seleccion==3));then
		
		say "Has elegido la sección de CULTURA GENERAL"
elif ((seleccion==4));then
		say "Has elegido las sección divertida"
fi
