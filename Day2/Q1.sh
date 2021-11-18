s=0
echo "Enter the number"
read n
while [ $n -gt 0 ]
do
dig=`expr $n % 10`
s=`expr $s + $dig`
n=`expr $n / 10`
done
echo "Sum of digit is = " $s
