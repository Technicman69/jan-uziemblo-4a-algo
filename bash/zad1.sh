#!/bin/bash

max=$1
let max+=1

if [ $max -gt 2 ]; then
	echo 2
fi
if [ $max -gt 3 ]; then
	echo 3
fi

i=4
while [ $i -lt $max ]; do
	j=2
	flag=1
	while [ $j -lt $i ]; do
		if [ `expr $i % $j` -eq 0 ]; then
			flag=0
		fi
		let j+=1
	done
	if [ $flag -eq 1 ]; then
		echo $i
	fi
	let i+=1
done
