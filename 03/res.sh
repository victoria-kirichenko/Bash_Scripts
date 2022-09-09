#!/bin/bash

data_system=$(
    echo -e "${back_1}${text_1}HOSTNAME ${END_COLOR} = ${back_2}${text_2}$host_name ${END_COLOR}"
    echo -e "${back_1}${text_1}TIMEZONE ${END_COLOR} = ${back_2}${text_2}$time_zone ${END_COLOR}"
    echo -e "${back_1}${text_1}USER ${END_COLOR} = ${back_2}${text_2}$user ${END_COLOR}"
    echo -e "${back_1}${text_1}OS ${END_COLOR} = ${back_2}${text_2}$OS ${END_COLOR}"
    echo -e "${back_1}${text_1}DATE ${END_COLOR} = ${back_2}${text_2}$data ${END_COLOR}"
    echo -e "${back_1}${text_1}UPTIME ${END_COLOR} = ${back_2}${text_2}$uptime ${END_COLOR}"
    echo -e "${back_1}${text_1}UPTIME_SEC ${END_COLOR} = ${back_2}${text_2}$uptime_sec ${END_COLOR}"
    echo -e "${back_1}${text_1}IP ${END_COLOR} = ${back_2}${text_2}$ip ${END_COLOR}"
    echo -e "${back_1}${text_1}MASK ${END_COLOR} = ${back_2}${text_2}$mask ${END_COLOR}"
    echo -e "${back_1}${text_1}GATEWAY ${END_COLOR} = ${back_2}${text_2}$gateway ${END_COLOR}"
    echo -e "${back_1}${text_1}RAM_TOTAL ${END_COLOR} = ${back_2}${text_2}$ram_total ${END_COLOR}"
    echo -e "${back_1}${text_1}RAM_USED ${END_COLOR} = ${back_2}${text_2}$ram_used ${END_COLOR}"
    echo -e "${back_1}${text_1}RAM_FREE ${END_COLOR} = ${back_2}${text_2}$ram_free ${END_COLOR}"
    echo -e "${back_1}${text_1}SPACE_ROOT ${END_COLOR} = ${back_2}${text_2}$space_root ${END_COLOR}"
    echo -e "${back_1}${text_1}SPACE_ROOT_USED ${END_COLOR} = ${back_2}${text_2}$space_root_used ${END_COLOR}"
    echo -e "${back_1}${text_1}SPACE_ROOT_FREE ${END_COLOR} = ${back_2}${text_2}$space_root_free ${END_COLOR}"
)
