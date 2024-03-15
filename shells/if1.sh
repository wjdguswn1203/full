#!/bin/bash

echo "File Name : $0"
echo "Parameter : $#"
echo "All Parameter : $@"

if [ "$1" = ok ]; then
	echo good~!! 
else
	echo bad~!!
fi

