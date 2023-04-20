#/bin/bash

if [ $# -ne 1 ]
    then
        echo "Требуется 1 параметр!"
elif [ $(bash script.sh $1) -eq 1 ]
    then
        echo "Некорректный ввод!"
else
	  echo "$1"
fi