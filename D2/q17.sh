echo "Enter Filename: "
read file
if [ -f $file ]
then
cat $file | grep -v "UNIX"
else
echo "File does not exist"
fi