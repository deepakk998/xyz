if [ $# -ne 3 ]
    then
	echo "$0: Three Numbers are not entered"
        exit 1
    fi
    
    n1=$1
    n2=$2
    n3=$3
    
    if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
    then
	echo "Number 1 is biggest: $n1"
    elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
    then
	echo "Number 2 is biggest: $n2"
    elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ]
    then
	echo "Number 3 is biggest: $n3"
    elif [ $1 -eq $2 ] && [ $1 -eq $3 ] && [ $2 -eq $3 ]
    then
	echo "All the three numbers are equal"
    else
        echo "Unable to determine"
    fi
