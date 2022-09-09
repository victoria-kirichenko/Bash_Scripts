#!/bin/bash

name=$1

IFS=""

if [[ -d $1 ]] 
then
    . data.sh
    echo $data_system
else
    echo "Каталога не существует!"
fi