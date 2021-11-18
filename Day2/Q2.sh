#!/bin/bash
echo "Enter the first number"
read num1
echo "Enter second number"
read num2
if [ $num2 -eq 0 ]
then
echo "divided by zero not possible"
else
res=`expr "scale=2; $num1 / $num2" | bc`
echo "The division of num1 by num2 is = $res"
fi


