#!/bin/bash
if(("$USER" != "root"));then
	$USER = "root"
fi
echo "Bienvenido a la prebe Shell"
echo "Por favor, inicia sesión."
##Evita que le pongas ^C o ^Z
#trap '' SIGINT 
#trap '' SIGSTOP


let user
let contrasena
let salt
read -p "Ingrese un nombre de usuario (registrado en el equipo actual): " user
if grep -rnw '/etc/shadow' -e $user;then
{
read -s "Ingresa la contraseña:" contrasena
salt=egrep -o "$user:(.*$){1}" /etc/shadow
if((mkpasswd -m sha-512 contrasena -S $salt==))
}else{
echo "No te encuentras registrado, vete AL"
}
echo "$user"
echo "$contrasena"
