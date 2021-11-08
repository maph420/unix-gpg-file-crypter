#!/bin/bash

argToArray(){

	if [ $# -lt 1 ]
	then
		echo "no args, try again"
		exit
	fi

declare -ga args_arr

	for i in `seq $#`
	do
	args_arr[i-1]=$1
	shift
	done
}

menu(){

argToArray $@

options=${args_arr[@]}

optlen=`wc -w <<< "$options"` # word count, <<< to erase part of output 

select option in $options; do
	if [ "$REPLY" -le "$optlen" ] && [ "$REPLY" -gt 0 ]
	then
		#echo "input received: $REPLY"
		#echo "option: $option"
		echo $option
		break # in case we want statements to happen only once
	else
		echo "not a valid option"
	fi
	done
}
menu $@