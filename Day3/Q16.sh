read ln;
read ch;
x=`echo $ln | cut -d ' ' -f 1-4`
echo -n $x;
x=`echo $ln | cut -d ' ' -f 5`
i=`echo $x | wc -c`
echo -n " "$ch$ch$ch$ch
x=`echo $x | cut -c 5-$i`
echo -n $x" "
l=`echo $ln | wc-c`
x=`echo $ln|cut-d ' ' -f 6-$1`
echo $x
