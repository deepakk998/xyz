hr=`date +%H`
if [ $hr -gt 4 -a $hr -le 12 ]
then
echo -n "Good Morning "
whoami
elif [ $hr -ge 13 -a $hr -le 17 ]
then 
echo -n "Good Afternoon "
whoami
else
echo -n "Good Evening "
whoami
fi