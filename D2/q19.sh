echo "Enter the username: "
read u_name
whoami|grep $u_name > /dev/null
if [ $? -eq 0 ]
then
echo "Valid User"
else
echo "Invalid User"
fi