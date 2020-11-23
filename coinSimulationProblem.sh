#!/bin/bash

echo "Welcome to the Flip Coin Simulation Game"

numOfHead=0 #variable to store the count of Head wins
numOfTail=0 #variable to store the count of Tail wins

# Continue Flipping the coin utill either numOfHead or numOfTail reached 21
while [[ $numOfHead -lt 21 && $numOfTail -lt 21 ]]
do
	toss=$((RANDOM%2)) # toss will randomly store either 0 or 1
	if [[ $toss -eq 0 ]]
	then
		((numOfTail++)) 
	else
		((numOfHead++))
	fi	
done

echo "Number of Head wins : $numOfHead"
echo "And Number of Tail wins : $numOfTail"

#condition to check who won the match 

if [[ $numOfHead -gt $numOfTail ]]
then
	echo "So Finally, Head wins by $(( $numOfHead - $numOfTail ))"
elif [[ $numOfHead -lt $numOfTail ]]
then 
	echo "So Finally, Tail Wins by $(( $numOfTail - $numOfHead ))"
else
	echo "Since the match tied so continue"
	d1=$(( $numOfHead - $numOfTail ))
	d2=$(( $numOfTail - $numOfHead ))

	while [[ $d1 -ne 2 && $d2 -ne 2 ]]
	do
		toss=$((RANDOM%2)) # toss will randomly store either 0 or 1
		if [[ $toss -eq 0 ]]
		then
			((numOfTail++)) 
		else
			((numOfHead++))
		fi
	d1=$(( $numOfHead - $numOfTail ))
	d2=$(( $numOfTail - $numOfHead ))
	
	done

	echo "Number of Head wins : $numOfHead"
	echo "And Number of Tail wins : $numOfTail"

	if [[ $numOfHead -gt $numOfTail ]]
	then
	echo "So Finally, Head wins by 2 "
	elif [[ $numOfHead -lt $numOfTail ]]
	then 
	echo "So Finally, Tail Wins by 2"
	fi
fi

