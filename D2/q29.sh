a=0
ls -l | grep '^-rwx' | tr -s " "| cut -d " " -f 9

touch files_sizes
chmod 777 files_sizes
ls -l | grep '^-rwx' |grep -v "files_sizes"| tr -s " "| cut -d " " -f 5 >> files_sizes
while read p
do
	a=`expr $a + $p`
done < files_sizes

rm files_sizes

echo "Total size: $a"