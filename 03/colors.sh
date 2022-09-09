#!/bin/bash

WHITE="\e[37m"
RED="\033[31m"
GREEN="\033[32m"
BLUE="\033[36m"
PURPLE="\033[35m"
BLACK="\033[30m"

BACK_WHITE="\e[47m"
BACK_RED="\033[41m"
BACK_GREEN="\033[42m"
BACK_BLUE="\033[46m"
BACK_PURPLE="\033[45m"
BACK_BLACK="\033[40m"

ENDCOLOR="\e[0m"

case "$1" in
    1 ) back_1=$BACK_WHITE ;;
    2 ) back_1=$BACK_RED ;;
    3 ) back_1=$BACK_GREEN ;;
    4 ) back_1=$BACK_BLUE ;;
    5 ) back_1=$BACK_PURPLE ;;
    6 ) back_1=$BACK_BLACK ;;
    * ) error="error" ;;
esac

case "$2" in
    1 ) text_1=$WHITE ;;
    2 ) text_1=$RED ;;
    3 ) text_1=$GREEN ;;
    4 ) text_1=$BLUE ;;
    5 ) text_1=$PURPLE ;;
    6 ) text_1=$BLACK ;;
    * ) error="error" ;;
esac

case "$3" in
    1 ) back_2=$BACK_WHITE ;;
    2 ) back_2=$BACK_RED ;;
    3 ) back_2=$BACK_GREEN ;;
    4 ) back_2=$BACK_BLUE ;;
    5 ) back_2=$BACK_PURPLE ;;
    6 ) back_2=$BACK_BLACK ;;
    * ) error="error" ;;
esac

case "$4" in
    1 ) text_2=$WHITE ;;
    2 ) text_2=$RED ;;
    3 ) text_2=$GREEN ;;
    4 ) text_2=$BLUE ;;
    5 ) text_2=$PURPLE ;;
    6 ) text_2=$BLACK ;;
    * ) error="error" ;;
esac