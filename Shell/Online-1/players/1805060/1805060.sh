#!/bin/bash

replacer() {
    for file in $*; do
        if [[ -d $file ]]; then
            cd $file
            replacer $(ls)
            cd ..
        elif [[ "${file##*.}" == "txt" ]]; then
            player_name=$(cat $file | head -n1)
            country_name=$(cat $file | head -n2 | tail -n1)
            role=$(cat $file | head -n4 |tail -n1)



            pwd
        fi
    done
}

ls
replacer $(ls)
