#!/bin/bash

. data.sh
. colors.sh
. res.sh

IFS=""

if  [[ $# != 4 ]]
then
    echo -e "Необходимо 4 параметра\nЗапустите скрипт повторно"
elif  [ "$1" = "$2" ] || [ "$3" = "$4" ]
then
    echo -e "Значения аргументов совпадают\nЗапустите скрипт повторно"
elif [[ $error = 'error' ]]
then
    echo "Таких цветов не существует, запустите скрипт повтортно и выберите от 1 до 6"
else
    echo $data_system
    exit
fi