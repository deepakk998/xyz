echo "Please start entering the values of the temperaure of the last 7 days"

for ((i=7;i>0;i--))
do
dat=$(date `+%d/%m/%y` -d "-$i days")

echo "Enter the temperature for date $dat"
read temp
sum=$((sum+temp))
done


echo "Average Temperature is"
echo "scale=2;$sum/7"|bc
