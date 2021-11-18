echo "Enter file: "
read file
x=`wc -c < $file`
if [ $x -eq 0 ]
then
echo "Empty"
else
cat $file
fi

