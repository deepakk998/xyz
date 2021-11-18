ls -l | tr -s ' ' | cut -d ' ' -f 5,9 | sort -nr > temp
count=0
while read x
do 
    size=`echo $x | cut -d ' ' -f 1`
    if [ $size -ge 500 ]
    then
        echo $x
        count=$((count+1))
    fi
done < temp
rm temp
echo "No. of file > 500" $count