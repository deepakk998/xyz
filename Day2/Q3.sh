#!/bin/bash
echo "Enter a number"
read num
a=$((num))
while [ $num -gt 0 ]
do
rem=$((num%10))
rev=$((rev*10+rem))
num=$((num/10))
done
echo "The reverse of $a is $rev"
