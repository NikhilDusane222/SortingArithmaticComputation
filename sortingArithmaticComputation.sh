#!/bin/bash -x

# Variables
count=1
count2=$((count+1))
temp=0
declare -A arithmaticDictionary
declare -a arithmaticArray
printf "Welcome to sorting arithmatic computation"'\n'

# Take input from user
read -p "Enter A value : " a
read -p "Enter B value : " b
read -p "Enter C value : " c

printf "$a \n"
printf "$b \n"
printf "$c \n"

result1=$( echo "scale=2 ; $a+$b*$c" | bc -l )
arithmaticDictionary["first"]=$result1
result2=$( echo "scale=2 ; $a*$b+$c" | bc -l )
arithmaticDictionary["second"]=$result2
result3=$( echo "scale=2 ; $c+$a/$b" | bc -l )
arithmaticDictionary["third"]=$result3
result4=$( echo "scale=2 ; $a%$b+$c" | bc -l )
arithmaticDictionary["fourth"]=$result4

#Store the elements of dictionary in array
for value in ${!arithmaticDictionary[@]}
do
	arithmaticArray[$value]="${arithmaticDictionary[$value]}"
done
echo ${arithmaticArray[@]}

