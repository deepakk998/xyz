ls -l | tr -s ' ' | cut -d ' ' -f 9 | grep -i "^[aeiou]"
