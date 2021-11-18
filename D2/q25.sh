echo -n "File: "
read filename
if [ -f $filename ] 
then
echo 'Last modification: '`ls -lt $filename | tr -s " " | cut -d " " -f 6-8` 
else
echo "File not exist"
fi