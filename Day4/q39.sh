#!/bin/bash
password="deep"
echo "Please Enter the Password"
read p
x=1
while [ $x -lt 3 ]
do
	if [ "$password" != "$p" ]
	then
	echo "Your  attempt $x is wrong you have only `echo 3 - $x | bc` attempt left"
	x=`echo $x + 1 | bc`
	echo "Enter the password"
	read p
	else
	x=4
fi

done
if [ $x -eq 3 -a "$password" != "$p" ]
then
echo "All attempts lost"
exit
fi
while [ 1 ];
do
echo "Enter choice: "
echo "1 .Number of user loged in"
echo "2. Calander of current month"
echo "3. Date in format dd / mm / yyyy"
echo "4. exit"
read ch
case $ch in
	1)
	echo -n "Number of user loged in: "
	who | wc -l
	;;
	2)
	echo "Calender of current month:"
	cal
	;;
	3)
	echo "Date in format dd / mm / yyyy: "
	date +"%d/%m/%Y"
	;;
	4)exit
	;;
esac
done
	
