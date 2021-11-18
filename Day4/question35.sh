echo "Enter 1st file"
read file1
echo "Enter 2nd file"
read file2
cat $file1 > file3
cat $file2 >> file3
echo "Number of lines: "`wc --lines < file3`
echo "Number of words: "`wc --word < file3`
