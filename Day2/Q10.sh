res=0
i="y"

 
while [ $i="y" ]
do 
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read ch
 
case $ch in
  1)echo "Enter the first number"
	read a
	echo "Enter the second number"
	read b
  res=`echo $a + $b | bc`
  echo "Sum = "$res
  ;;
  2)echo "Enter the first number"
	read a
	echo "Enter the second number"
	read b
  res=`echo $a - $b | bc`
  echo "Sub = "$res
  ;;
  3)echo "Enter the first number"
	read a
	echo "Enter the second number"
	read b
  res=`echo $a \* $b | bc`
  echo "Mul = "$res
  ;;
  4)echo "Enter the first number"
	read a
	echo "Enter the second number"
	read b
  if [ $b -eq 0 ]
	then
	echo "Division by zero is not possible!"
	else
    res=`expr "scale=2; $a / $b" | bc`
    echo "div = "$res
    fi
  ;;
  
  *)echo "invalid choice"
esac
echo "do you want to continue ?[y/n]"
read i
if [ $i != "y" ]
then
 exit
 
 fi
 done
