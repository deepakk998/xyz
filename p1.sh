echo "Enter a number"
read num

while [ $num -gt 0 ]
do
rem=$((num%10))
sum=$((sum+rem))
num=$((num/10))
done

echo "The sum of the digits of the number is $sum"
