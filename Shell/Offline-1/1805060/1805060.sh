#!/bin/bash
max_score=100
max_student_id=5
if(($#==2));then
    max_score=$1
    if(($2>=1 && $2<=9));then
        max_student_id=$2
    else
        echo "Value of arg2 should be between 1 and 9."
    fi
fi

echo "student_id,score">output.csv
cd Submissions
i=1
while((i<=$max_student_id))
do
if [[ -d "180512$i" ]];then
    score=$max_score
    if [[ -f "180512$i/180512$i.sh" ]];then
        bash 180512$i/180512$i.sh | diff -w ../AcceptedOutput.txt - >180512$i/diff.txt
        count=$(grep '[<>]' 180512$i/diff.txt | wc -l)
        score=$((score-count*5))
        rm 180512$i/diff.txt
    else
        score=0
    fi
    echo "180512$i,$score">>../output.csv
else
    echo "180512$i,0">>../output.csv
fi
i=$(($i+1))
done
cd ..
