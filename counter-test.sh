#!/bin/bash

res=result.txt
./groups_same.sh $text1 $text2

if [[ $? -eq 0 ]] && [[ -f $res ]]
then
    echo "Тест успешен"
    exit 0
else
    echo "Тест провален"
    exit 1
fi
