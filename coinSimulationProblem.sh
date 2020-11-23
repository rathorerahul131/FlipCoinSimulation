#!/bin/bash

echo "Welcome to the Flip Coin Simulation Game"

noOfHead=0 #variable to store the count of Head wins
noOfTail=0 #variable to store the count of Tail wins

for ((i=0;i<20;i++))
do
	toss=$((RANDOM%2)) # toss will randomly store either 0 or 1
	if [[ $toss -eq 0 ]]
	then
		((noOfTail++)) 
	else
		((noOfHead++))
	fi
	
done

echo "Head has won $noOfHead times"
echo "Tail has won $noOfTail times"