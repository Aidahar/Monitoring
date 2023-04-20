#!/bin/bash

REGEX="^[Yy]"

if [ $# -ne 0 ]
    then
        echo "Параметры не нужны!"
else 
    ./script.sh
    read -p "Хотите сохранить данные в файл? " input
    if [[ $input =~ $REGEX ]] ; then           
            ./script.sh >$(date +"%d_%m_%y_%H_%M_%S").status
    fi
fi