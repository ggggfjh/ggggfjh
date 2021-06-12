#!/bin/bash
read -p "输入密码:" PASSWORD
for UNAME in `cat users.txt`
do
id $UNAME &> /dev/null;
if [ $? -eq 0 ];
then echo "Already Exists"
else
	useradd $UNAME &> /dev/null;
#	echo "$UNAME"
	echo "$UNAME:$PASSWORD" | chpasswd &> /dev/null
if [ $? -eq 0 ]
	then echo " $UNAME,Create Success"
else
	echo "$UNAME,Create Failture"
fi
fi
done
for UNAME in `cat users.txt`
do
	userdel $UNAME &> /dev/null
done
