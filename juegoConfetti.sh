#!/bin/bash
puntaje="1000"
let jaja=""
function preguntas
{
while IFS='' read -r line|| [[ -n "$line" ]]; do
    echo $line
	sleep 2
	clear
    done < "$1"
}
clear
echo -e "\e[95m✷ 　 　　 　 ·　 ˚ * .
 　 　　 *　　 * ⋆ 　 .✷ 　 　　 　 ·　 ˚ * .
 　 　　 *　　 * ⋆ 　 .
 · 　　 ⋆ 　　　 ˚ ˚ 　　 ✦　 ⋆ · 　 * 　　　　 ⋆ ✧　 　 · 　 ✧　✵ 　 · ✵
 · 　　 ⋆ 　　　 ˚ ˚ 　　 ✦　 ⋆ · 　 *　　　　 ⋆ ✧　 　 · 　 ✧　✵　 · ✵"
echo "  ____ ___  _   _ _____ _____ _____ _____ ___ ____  ____  _____ ____ 
 / ___/ _ \| \ | |  ___| ____|_   _|_   _|_ _|  _ \|  _ \| ____| __ )| ____|
| |  | | | |  \| | |_  |  _|   | |   | |  | || |_) | |_) |  _| |  _ \|  _|  
| |__| |_| | |\  |  _| | |___  | |   | |  | ||  __/|  _ <| |___| |_) | |___ 
 \____\___/|_| \_|_|   |_____| |_|   |_| |___|_|   |_| \_\_____|____/|_____|
"
echo -e "\e[94m"
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

resp1=("" "" "" "" "" "" "" "" "" "" "" "" "" "" "")
resp1C=("1" "3" "4" "3" "1" "1" "3" "4" "3" "1" "1" "3" "4" "3" "1")

correctas=0
if ((seleccion==1));then
{
		#say "Has elegido la sección de LINUX"
		preguntas ${array[0]}
    for i in {1..15}
        do
    read     -p "Respuesta: "${resp[i]}
    done

    for i in {1..15}
        do
    if [ ${resp1[i]} == ${resp1C[i]}];then
        $(( correctas++ ))
    fi
    echo "tuviste" $correctas "correctas"
}
else
{
		preguntas ${array[1]}
		#say "Has elegido las sección divertida"
		echo "Ingresa las respuestas correctas: "
		read -p "Ingresa las respuestas correctas como un número" respuestas2
}
fi
