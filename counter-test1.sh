#!/bin/bash

# в этом тесте дан действительный аргумент 

res=result.txt
fol=Folder

chmod +x counter-script.sh
./counter-script.sh $fol

if [[ $? -eq 0 ]] && [[ -f $fol/$res ]]
then
    echo "Тест успешен"
    exit 0
else
    echo "Тест провален"
    exit 1
fi
