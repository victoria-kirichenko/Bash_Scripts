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

BACK1="$(cat colors.conf | grep 'column1_background' | awk -F"=" '{print $2}')"
TEXT1="$(cat colors.conf | grep 'column1_font_color' | awk -F"=" '{print $2}')"
BACK2="$(cat colors.conf | grep 'column2_background' | awk -F"=" '{print $2}')"
TEXT2="$(cat colors.conf | grep 'column2_font_color' | awk -F"=" '{print $2}')"

if [ "$BACK1" = "" ]; then
 BACK1=6
 check1=1
fi
if [ "$TEXT1" = "" ]; then
 TEXT1=1
 check2=1
fi
if [ "$BACK2" = "" ]; then
 BACK2=2
 check3=1
fi
if [ "$TEXT2" = "" ]; then
 TEXT2=4
 check4=1
fi

case "$BACK1" in
    1 ) back_1=$BACK_WHITE ; COLOR_1="white" ;;
    2 ) back_1=$BACK_RED ; COLOR_1="red" ;;
    3 ) back_1=$BACK_GREEN ; COLOR_1="green" ;;
    4 ) back_1=$BACK_BLUE ; COLOR_1="blue" ;;
    5 ) back_1=$BACK_PURPLE ; COLOR_1="purple" ;;
    6 ) back_1=$BACK_BLACK ; COLOR_1="black" ;;
    * ) error="error" ;;
esac

case "$TEXT1" in
    1 ) text_1=$WHITE ; COLOR_2="white" ;;
    2 ) text_1=$RED ; COLOR_2="red" ;;
    3 ) text_1=$GREEN ; COLOR_2="green" ;;
    4 ) text_1=$BLUE ; COLOR_2="blue" ;;
    5 ) text_1=$PURPLE ; COLOR_2="purple" ;;
    6 ) text_1=$BLACK ; COLOR_2="black" ;;
    * ) error="error" ;;
esac

case "$BACK2" in
    1 ) back_2=$BACK_WHITE ; COLOR_3="white" ;;
    2 ) back_2=$BACK_RED ; COLOR_3="red" ;;
    3 ) back_2=$BACK_GREEN ; COLOR_3="green" ;;
    4 ) back_2=$BACK_BLUE ; COLOR_3="blue" ;;
    5 ) back_2=$BACK_PURPLE ; COLOR_3="purple" ;;
    6 ) back_2=$BACK_BLACK ; COLOR_3="black" ;;
    * ) error="error" ;;
esac

case "$TEXT2" in
    1 ) text_2=$WHITE ; COLOR_4="white" ;;
    2 ) text_2=$RED ; COLOR_4="red" ;;
    3 ) text_2=$GREEN ; COLOR_4="green" ;;
    4 ) text_2=$BLUE ; COLOR_4="blue" ;;
    5 ) text_2=$PURPLE ; COLOR_4="purple" ;;
    6 ) text_2=$BLACK ; COLOR_4="black" ;;
    * ) error="error" ;;
esac

if [ "$check1" = 1 ]; then
    BACK1="default"
fi
if [ "$check2" = 1 ]; then
    TEXT1="default"
fi
if [ "$check3" = 1 ]; then
    BACK2="default"
fi
if [ "$check4" = 1 ]; then
    TEXT2="default"
fi

output="Column 1 background = $BACK1 ($COLOR_1)
Column 1 font color = $TEXT1 ($COLOR_2)
Column 2 background = $BACK2 ($COLOR_3)
Column 2 font color = $TEXT2 ($COLOR_4)"