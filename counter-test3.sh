#!/bin/bash

# в этом тесте аргумент не дан

res=result.txt

chmod +x counter-script.sh
./counter-script.sh

if [[ $? -eq 0 ]] && [[ -f $res ]]
then
    echo "Тест успешен"
    exit 0
else
    echo "Тест провален"
    exit 1
fi
