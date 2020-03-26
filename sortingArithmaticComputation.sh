#!/bin/bash -x

printf "Welcome to sorting arithmatic computation"'\n'

# Take input from user
read -p "Enter A value : " a
read -p "Enter B value : " b
read -p "Enter C value : " c

printf "$a \n"
printf "$b \n"
printf "$c \n"

declare -A arithmaticDictionary
result1=$( echo "scale=2 ; $a+$b*$c" | bc -l )
arithmaticDictionary["first"]=$result1
result2=$( echo "scale=2 ; $a*$b+$c" | bc -l )
arithmaticDictionary["second"]=$result2
result3=$( echo "scale=2 ; $c+$a/$b" | bc -l )
arithmaticDictionary["third"]=$result3
result4=$( echo "scale=2 ; $a%$b+$c" | bc -l )
arithmaticDictionary["fourth"]=$result4
