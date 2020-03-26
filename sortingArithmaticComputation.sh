#!/bin/bash -x

printf "Welcome to sorting arithmatic computation"'\n'

# Take input from user
read -p "Enter A value : " a
read -p "Enter B value : " b
read -p "Enter C value : " c

printf "$a \n"
printf "$b \n"
printf "$c \n"

result1=$( echo "scale=2 ; $a+$b*$c" | bc -l )
result2=$( echo "scale=2 ; $a*$b+$c" | bc -l )
result3=$( echo "scale=2 ; $c+$a/$b" | bc -l )
