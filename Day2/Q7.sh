i=1
sum=0
while [ $i -le 7 ]
do
  echo "enter $i day temp"
  read num          
  sum=$((sum + num))     
  i=$((i + 1))
done
avg1=$(echo $sum / 7 | bc -l);
echo "scale = 2; $avg1 / 1" | bc -l
