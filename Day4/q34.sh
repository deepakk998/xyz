if [ $# -ne 1 ]
then
echo "Please pass one argument: "
exit
fi
if [ -f $1 ]
then
echo "Yes this is a Regular file"
echo "Number of lines: "`wc -l < $1`
echo "Number of words: "`wc -w < $1`
echo "Number of character: "`wc -c < $1`

fi
