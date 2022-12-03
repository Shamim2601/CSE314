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

echo $max_score>>output.csv
echo $max_student_id>>output.csv
