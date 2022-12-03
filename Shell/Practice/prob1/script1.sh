#!/bin/bash
if(($#<1));then
echo "Usage script1.sh filename1 filename2 .."
exit
fi

for file in $*
do
if [[ -e $file ]];then
	if [[ -f $file ]];then
		if [[ -x $file ]];then
			echo "$file is currently executable"
			ls -l $file
			echo "$file executable permission is now changing."
			chmod -x $file
			ls -l $file
			echo "$file is currently not executable"
		else
			ls -l $file
			echo "$file is currently not executable"
		fi
	else
		echo "$file is not a regular file"
	fi
else 
	echo "$file doesn't exist"
fi
done
