#! /bin/bash -x
declare -A dice
dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0
while((dice[1]<10 && dice[2]<10 && dice[3]<10 && dice[4]<10 && dice[5]<10 && dice[6]<10))
do
n=$(($RANDOM%6 +1))
if [ $n -eq 1 ]
then
dice[1]=$((${dice[1]}+1))
elif [ $n -eq 2 ]
then
dice[2]=$((${dice[2]}+1))
elif [ $n -eq 3 ]
then
dice[3]=$((${dice[3]}+1))
elif [ $n -eq 4 ]
then
dice[4]=$((${dice[4]}+1))
elif [ $n -eq 5 ]
then
 dice[5]=$((${dice[5]}+1))
elif [ $n -eq 6 ]
then
 dice[6]=$((${dice[6]}+1))
fi
done
echo ${dice[@]}
