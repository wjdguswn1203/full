#!/bin/bash

a=1

while [ $a != "0" ]; do
	echo -n "Input : "
	read a


	if [ $a -gt 1 ] && [ $a -lt 10 ]; then
		for k in 1 2 3 4 5 6 7 8 9
		do
			echo "$a * $k = `expr $a \* $k`"
		done
	elif [ $a -eq 0 ]; then
		break;
	else	
		echo "2~9 input plz"
	fi

done
echo Exit

