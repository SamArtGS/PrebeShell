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
    printf ${1##*/} | cut -d "/" -f5
    counter $file $contador
    done      
}
let contador=0
counter(){
   for file in "$1"/* 
   do 
   if [ -f "$file" ];then
            #tabs $contador
            printf ${file##*/} | cut -d "/" -f8
            #echo ""
            let contador=$2+1
            tabs $file $1
            counter $file $contador
              
    fi
  done
  for file in "$1"/* 
  do 
    if [ -d "$file" ];then
            #tabs $contador
            printf ${file##*/}
            #echo ""
            let contador=$2+1
            tabs $file $1
            
              
    fi
    done
}
counter "/users/samuelarturogarridosanchez/desktop/CProteco" $contador
echo ""