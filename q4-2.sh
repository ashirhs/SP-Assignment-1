#!/bin/bash

filename=$1
`rm uniquefile2`
`touch uniquefile2`
declare -i count=0
sizez="`cat $1 | wc -l`"
echo $sizez
declare -i num=0

cat $filename | while read i
do

cat $filename | while read j
do
num=`expr $num + 1`
if [ "$i" = "$j" ]
then
count="`expr $count + 1`"
fi
if [ $sizez -eq $num ]
then
if [ $count -le 1 ]
then
echo $i >> "uniquefile2"
fi
fi
done

done
