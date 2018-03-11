#!/bin/bash

files=(`ls`)
#echo ${files[*]}

for i in ${files[*]}
do
ext=${i##*.} 
#echo $i
#echo "$ext"
if [ ext != "" -a -f $i ]
then
if [ -d $ext ]
then
`mv $i $ext`
else
`mkdir $ext`
`mv $i $ext`
fi  
fi
done
