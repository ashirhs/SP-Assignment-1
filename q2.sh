#!/bin/bash

#declare -i count=1
count=1
`touch evenfile oddfile`
cat $1 | while read LINE
do
#echo `expr $count % 2`
if [ `expr $count % 2` = 0 ]
then
`echo $LINE >> evenfile`
else
`echo $LINE >> oddfile`
fi
count=`expr $count + 1`
#echo $count
done
