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

function CreateDir
{

   # set -xv
   typeset -i level="$1"
   typeset    dirname="$2"

   mkdir $dirname/sub1/
   mkdir $dirname/sub2/

   (( level =- 1 )) 

   if [ $level -gt 0 ] ; then
      CreateDir $level "$dirname/sub1"
      CreateDir $level "$dirname/sub2"
   fi
}
CreateDir
names=$fichero|egrep "([^\/]+)"
echo $fichero
echo ${mathc[0]}
