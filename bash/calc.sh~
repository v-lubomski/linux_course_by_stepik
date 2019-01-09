#!/bin/bash

while [[ True ]]; do
	read arg1 sign arg2
	if [[ $arg1 == "exit" ]]; then echo bye; exit; fi
	if [[ -z $arg1 || -z $arg2 || -z $sign ]]; then echo error; exit; fi
	signs='+ - * / % **'
	if [[ $signs =~ "$sign" ]]; then let "sum = $arg1 $sign $arg2"; echo "$sum"; else echo error; exit; fi
done
