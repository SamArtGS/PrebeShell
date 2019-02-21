#!/bin/bash
if(("$USER" != "root"));then
	$USER = "root"
fi
echo "Bienvenido a la prebe Shell"
echo "Por favor, inicia sesión."
##Evita que le pongas ^C o ^Z
#trap '' SIGINT 
#trap '' SIGSTOP

Salt=$1;
HashLinux="md5";
contrasenaN=$3;
__RPWD=$2; 
for lista in $contrasenaN
do
        pass_temp=`mkpasswd -H $HashLinux "$lista" -S $Salt |cut -f4 -d ‘$’`;
        if [ "$__RPWD" = "$pass_temp" ]; then
                echo ""
                echo "Password Cracked."
                echo "Decrypted password is: $lista"
                exit
        fi
        i=`expr $i + 1`;
done

let user
let contrasena
read -p "Ingrese un nombre de usuario (registrado en el equipo actual): " user
read -s "Ingresa la contraseña:" contrasena
echo "$user"
echo "$contrasena"
export contrasena
export usuario = `echo $usuario | cut -d '$' -f1`
export primeraParte=`echo $contrasena | cut -d '$' -f2`
export segundaParte=`echo $contrasena | cut -d '$' -f3`
if (($user!=$(grep "$user" /etc/shadow | cut -d: -f1)));then
	echo "Inciación con éxito"
else
	echo "ValisteV"
	echo ""
	exit