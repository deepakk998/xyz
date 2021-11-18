if [ $# -ne 1 ]
then
	exit
fi
filecount_present=0
filecount_directory=0
filecount_present=$(find $pwd -type f | wc -l)
filecount_directory=$(find $1 -type f | wc -l)
if [ $filecount_directory -gt $filecount_present ]
then
x=`echo $filecount_directory - $filecount_present | bc`
echo "Inputed directory has $x more file"

else
y=`echo $filecount_present - $filecount_directory | bc`
echo "present directory has $y more file"
fi

