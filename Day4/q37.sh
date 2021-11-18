if [ $# -ne 1 ]
then
echo "Please pass one argument: "
exit
fi
echo "File with types of permission = " `ls -l $1 | cut -d ' ' -f 1`
echo "The number of links with this file = " `ls -l $1 | cut -d ' ' -f 2`
echo "The user that owns this file = " `ls -l $1 | cut -d ' ' -f 3`
echo "The group that file belongs to = " `ls -l $1 | cut -d ' ' -f 4`
echo "Size of file in bytes = " `ls -l $1 | cut -d ' ' -f 5`
echo "Last modification date and time of file = " `ls -l $1 | cut -d ' ' -f 6-9`
echo "The Name of file = " `ls -l $1 | cut -d ' ' -f 10`


