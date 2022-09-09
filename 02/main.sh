#!/bin/bash

. data.sh

IFS=""

echo $data_system
echo
echo "Save the screen output into a file? (Y/N)"

yes1='y'
yes2='Y'

read answer

if [ "$answer" = "$yes1" ] || [ "$answer" = "$yes2" ]
then
    echo $data_system > $(date +"%d_%m_%Y_%H_%M_%S".status)
    echo "Сохранено"
else
    echo "Не сохранено"    
    exit
fi