#!/bin/bash
for file in $(ls)
do
	if [[ -f $file ]];then
		if echo $file|grep -Eq "[0-9]";then
			echo $file
		fi
	fi
done
