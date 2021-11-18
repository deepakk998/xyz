while [ 1 ]
do
echo "****MENU****"
echo "1. Last Modification time of given file"
echo "2. Valid User"
echo "3. Exit"
read -p "Enter Choice: " ch
case $ch in

1)
echo -n "File: "
read filename
if [ -f $filename ] 
then
echo 'Last modification: '`ls -lt $filename | tr -s " " | cut -d " " -f 6-8` 
else
echo "File not exist"
fi
;;

2)
echo "Enter the username: "
read u_name
whoami|grep $u_name > /dev/null
if [ $? -eq 0 ]
then
echo "Valid User"
else
echo "Invalid User"
fi
;;
3)
echo "EXIT!"
break;;
*)
echo "Invalid Choice"
;;
esac
done