#!/bin/bash

data_system=$(
    echo -e "${back_1}${text_1}HOSTNAME ${ENDCOLOR} = ${back_2}${text_2}$host_name ${ENDCOLOR}"
    echo -e "${back_1}${text_1}TIMEZONE ${ENDCOLOR} = ${back_2}${text_2}$time_zone ${ENDCOLOR}"
    echo -e "${back_1}${text_1}USER ${ENDCOLOR} = ${back_2}${text_2}$user ${ENDCOLOR}"
    echo -e "${back_1}${text_1}OS ${ENDCOLOR} = ${back_2}${text_2}$OS ${ENDCOLOR}"
    echo -e "${back_1}${text_1}DATE ${ENDCOLOR} = ${back_2}${text_2}$data ${ENDCOLOR}"
    echo -e "${back_1}${text_1}UPTIME ${ENDCOLOR} = ${back_2}${text_2}$uptime ${ENDCOLOR}"
    echo -e "${back_1}${text_1}UPTIME_SEC ${ENDCOLOR} = ${back_2}${text_2}$uptime_sec ${ENDCOLOR}"
    echo -e "${back_1}${text_1}IP ${ENDCOLOR} = ${back_2}${text_2}$ip ${ENDCOLOR}"
    echo -e "${back_1}${text_1}MASK ${ENDCOLOR} = ${back_2}${text_2}$mask ${ENDCOLOR}"
    echo -e "${back_1}${text_1}GATEWAY ${ENDCOLOR} = ${back_2}${text_2}$gateway ${ENDCOLOR}"
    echo -e "${back_1}${text_1}RAM_TOTAL ${ENDCOLOR} = ${back_2}${text_2}$ram_total ${ENDCOLOR}"
    echo -e "${back_1}${text_1}RAM_USED ${ENDCOLOR} = ${back_2}${text_2}$ram_used ${ENDCOLOR}"
    echo -e "${back_1}${text_1}RAM_FREE ${ENDCOLOR} = ${back_2}${text_2}$ram_free ${ENDCOLOR}"
    echo -e "${back_1}${text_1}SPACE_ROOT ${ENDCOLOR} = ${back_2}${text_2}$space_root ${ENDCOLOR}"
    echo -e "${back_1}${text_1}SPACE_ROOT_USED ${ENDCOLOR} = ${back_2}${text_2}$space_root_used ${ENDCOLOR}"
    echo -e "${back_1}${text_1}SPACE_ROOT_FREE ${ENDCOLOR} = ${back_2}${text_2}$space_root_free ${ENDCOLOR}"
)
