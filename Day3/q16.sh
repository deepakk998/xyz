echo "Enter the string: "
read ln
echo "Enter the character: "
read ch
x=`echo $ln | cut -d ' ' -f 1-4`
echo -n $x
x=`echo $ln | cut -d ' ' -f 5`
l=`echo $x | wc -c`
echo -n " "$ch$ch$ch$ch
x=`echo $x | cut -c 5-$l`
echo -n $x" "
l=`echo $ln | wc -c`
x=`echo $ln | cut -d ' ' -f 6-$l`
echo $x