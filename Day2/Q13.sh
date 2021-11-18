echo "Enter a sentence: "
read string

vow=$(echo $string | grep -o -i "[aeiou]" | wc --lines)
cons=$(echo $string | grep -o -i "[bcdfghjklmnpqrstvwxyz]" | wc --lines)

echo "The given sentence has $vow vowels, $cons consonants."

