#!/bin/bash
if(($#!=2));then
echo "Invalid number of argument"
exit
fi

for file in $(ls)
do
if head -n$1 $file|tail -n1|grep -q $2 ;then
if [[ $file = *.txt ]];then
echo "$2 found in $file in line $1"
fi
fi
done
