#!/bin/bash

is_lower()
{
word="HeLlo WorLd"
echo ${word,,}
#typeset -l word
#echo $word
}

is_root()
{
user=`whoami`
#echo $user
#echo $user | grep root /etc/group

cat /etc/group | while read LINE
do
`touch userfile`
`echo "$LINE" > userfile`
#cat "userfile"
#echo "root" | grep $LINE
length="`grep -i "$user" userfile`"
#echo $length
if [ ${#length} -ne 0 ]
then
echo "User is Root Member"
else
echo "User is not Root Member"
fi

break
done
}

is_user_exists()
{
user=$1
#cat "/etc/passwd" | while read LINE
#do
`touch userfile`
echo `cut -d':' -f1 "/etc/passwd"` > userfile
length="`grep -i "$user" userfile`"
echo "$length"
if [ ${#length} -ne 0 ]
then
return 0
else
return 1
fi

#done
}

#main

is_lower
is_root
is_user_exists $1

if [ $? -eq 0 ]
then
echo "True: User exists"
else
echo "False: User dont exists"
fi

