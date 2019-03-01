#!/bin/bash
fichero=$(pwd)
addtabs(){
  for i in $1;do
  printf "           "
  done
}
tabs(){
   for i in $1;do
    echo""
    printf "   "
    echo "|"
    printf "   "
    echo "|"
    printf "   "
    printf " - - -"
    ls | cut -d "/" -f8
    #counter $file $contador
    done      
}
let contador=0
counter(){
   for file in "$1"/* 
   do 
   if [ -d "$file" ];then
            #tabs $contador
            printf ${file##*/}
            #echo ""
            let contador=$2+1
            tabs ${file##*/} $1
            counter ${file##*/} $contador
              
    fi
  done
}
counter "/home/samuel/Escritorio" $contador
echo ""
