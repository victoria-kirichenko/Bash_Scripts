#!/bin/bash

. data.sh
. colors.sh
. res.sh

IFS=""

if  [[ $# != 0 ]]
then
    echo -e "Параметров не должно быть"
else
    echo $data_system
    echo
    echo $output
    exit
fi