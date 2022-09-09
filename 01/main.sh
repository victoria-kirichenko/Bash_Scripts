#!/bin/bash
num='^[+-]?[0-9]+([.][0-9]+)?$'
if  [ $# != 1 ]
then
    echo Неверное количество параметров
    exit
elif  [[ $1 =~ $num ]]
then
    echo Параметр не является строкой
else
    echo "$1"
fi