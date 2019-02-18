#!/bin/bash
function trenzas
{
	echo "1"
	echo "1"
	print "L"
	for i in *;do
		print "-"
	print $1
	done
}
fichero=$(pwd)
tabs(){
   for i in $1;do
      printf "\n\t"
   done
}
names=$fichero|egrep "([^\/]+)"
echo $fichero
echo "${array[0]} ${array[1]} ${array[2]} ${array[3]}"
let contador=0
counter(){
   for file in "$1"/* 
   do 
   if [ -d "$file" ]
   then
            tabs $contador
            printf ${file##*/}
            echo ""
            contador=(contador)+1
            counter "$file"
    fi
    done
}
counter "/users/samuelarturogarridosanchez/Desktop/"
echo ""