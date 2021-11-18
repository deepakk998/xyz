#!/bin/bash
echo "Enter first number"
read num1
echo "Enter second number"
read num2
for((i=1;i<=num1;i++))
do
if [ $((num1%i)) -eq 0 -a $((num2%i)) -eq 0 ]
then
hcf=$i;
fi
done
if [ $hcf -eq 1 ]
then
echo "$num1 and $num2 are prime to each other"
else
echo "$num1 and  $num2 are not prime to each other"
fi

