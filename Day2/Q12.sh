echo "Enter the number of lines"
read rows
i=1;
while [ "$i" -le "$rows" ] 
do
j=1;
 while [ "$j" -le "$((rows-i))" ] 
  do
    echo -n "  "
    j=$(( j + 1 ))
  done
  j=1
  while [ "$j" -le "$((2*i-1))" ]
  do
    echo -n "* "
    j=$(( j + 1 ))
  done
  echo
  i=$(( i + 1 ))
done

