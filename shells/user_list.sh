#!/bin/bash

input="/etc/passwd"
i=1
while IFS=':' read -r username pw uid gid comment home shell
do
	echo "$i : $username - $uid - $gid - $home - $shell" 
	let i++
done < $input

