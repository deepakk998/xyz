echo "Enter a username"
read uname

whoami| grep $uname>/dev/null

if [ $? -eq 0 ]
then 
tail -20 ~/.bash_history
else
echo "Invalid"
fi