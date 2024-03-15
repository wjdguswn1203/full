#!/bin/bash

input="user.dat"

while IFS=',' read -r username uid gid comment 
do 
	echo "Adding $username"
	useradd -u "$uid" -g "$gid" -c "$comment" -m "$username"
	grep "$username" /etc/passwd
done < $input
echo
