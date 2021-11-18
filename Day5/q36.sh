if [ $# -ne 2 ]
then 
     echo "Input 2 files"
     exit
fi
cmp $1 $2>/dev/null
if [ $? -eq 1 ]
then
     cat $1 $2>temp
     mv temp $1
else
     rm $2
fi
