#!/bin/bash

gcd ()
{
	if [[ $1 -eq $2 ]]; then
		echo "GCD is $1"
		return
	elif [[ $1 -gt $2 ]]; then
		let "M = $1 - $2"
		gcd $M $N
	else [[ $2 -gt $1 ]];
		let "N = $2 - $1"
		gcd $M $N
	fi
}

read M N
while [[ $M -ne "" ]]; do
	gcd $M $N
	read M N
done

echo "bye"
