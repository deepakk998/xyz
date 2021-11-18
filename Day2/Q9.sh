#!/bin/bash
while read name1 g1 g2 g3
do
   avg=$(echo "($g1+$g2+$g3)/3" | bc)
   tens=`echo "scale=0;$avg/10"|bc`
g=''
case $tens in
	9)
		g='O';;
	8)
		g='E';;
	7)
		g='A';;
	6)
		g='B';;
	5)
		g='C';;
	*)
		g='F';;
esac

echo "Name=$name1 Average=$avg Grade=$g"
done < Marks
