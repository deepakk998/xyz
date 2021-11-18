echo "Enter the name of the file"
read file_name 

if [ -f $file_name ]
then
echo "The file before edit is"
cat $file_name
echo "Enter the word"
read word
echo "The new file is"
grep -v $word $file_name|cat 

else

echo "The file does not exist"

fi
