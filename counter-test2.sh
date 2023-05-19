#!/bin/bash

# в этом тесте дан недействительный аргумент 

res=result.txt
fol=Folder123

chmod +x counter-script.sh
./counter-script.sh $fol

if [[ $? -eq 0 ]] && [[ -f $res ]]
then
    echo "Тест успешен"
    exit 0
else
    echo "Тест провален"
    exit 1
fi
