#!/bin/bash
for HOSTIP in `cat ipadds.txt`
do
ping -c 4 -i 0.2 -W 3 $HOSTIP &> /dev/null
if [ $? -eq 0 ];
then echo -e "\033[32m HOST $HOSTIP is On-line \033[0m"
else echo -e "\033[31m HOST $HOSTIP is Off--line \033[0m"
	fi
done
