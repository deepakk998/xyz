#!/bin/bash
echo "enter maximum number"
read n
# taking input from user
echo "enter Numbers in array:"
for (( i = 0; i < $n; i++ ))
do
read nos[$i]
done
#printing the number before sorting
echo "Numbers in an array are:"
for (( i = 0; i < $n; i++ ))
do
echo ${nos[$i]}
done
# Now do the Sorting of numbers
for (( i = 0; i < ( $n - 1 ) ; i++ ))
do
for (( j = 0; j < ( $n - $i - 1); j++ ))
do
h=`expr $j + 1`
if [ ${nos[$j]} -gt ${nos[ $h]} ]; then
t=${nos[$j]}
nos[$j]=${nos[$h]}
nos[$h]=$t
fi
done
done
# Printing the sorted number
echo -e "\n Sorted Numbers "
for (( i=0; i < $n; i++ ))
do
echo ${nos[$i]}
done
