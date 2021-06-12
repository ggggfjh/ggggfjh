#!/bin/bash
read -p "输入你的分数:" Score
if [ $Score -ge 85 ] && [ $Score -le 100 ];
	then echo "$Score is excellent"
elif [ $Score -ge 60 ] && [ $Score -le 84 ];
	then echo "$Score is pass"
elif [ $Score -lt 60 ];
	then echo "$Score is fail"
else echo "$Score is invid"
fi
