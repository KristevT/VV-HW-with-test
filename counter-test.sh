#!/bin/bash

res=result.txt
./counter-scripts.sh

if [[ $? -eq 0 ]] && [[ -f $res ]]
then
    echo "Тест успешен"
    exit 0
else
    echo "Тест провален"
    exit 1
fi
