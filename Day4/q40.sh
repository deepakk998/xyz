while [ 1 ]
do
echo "1. List of files"
echo "2. Present Date"
echo "3. Users of the system"
echo "4. Quit to unix"
echo  -n "Enter choice: "
read ch
case $ch in
	1)
	echo "List of files are :"
	ls $pwd
	echo "\n"
	;;
	2)
	echo -n "Present Date :"
	date +" %d/%m/%Y"
	echo "\n"
	;;
	3)
	echo -n "Users of the system : "
	whoami
	echo "\n"
	;;
	4)exit
	;;
esac
done
