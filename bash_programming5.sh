#!/usr/bin/sh

# 1. Write a bash script where you define an array inside of the script,
# and the first argument for the script indicates the index of the array
# element that is printed to the console when the script is run.

echo '#!/usr/bin/sh' > array1.sh
echo 'names=(jorge andrea carlos pedro maria patricia luna Miguel); echo ${names[$1]}' >> array1.sh
bash array1.sh 7

# 2. Write a bash script where you define two arrays inside of the script,
# and the sum of the lengths of the arrays are printed to the console when
# the script is run.

echo '#!/usr/bin/sh' > array2.sh
echo "names=(jorge andrea carlos pedro maria patricia luna miguel); ages=(29 29 30 62 32 34 45 89)" >> array2.sh
echo "let sum=$(expr ${#names[*]} + ${#ages[*]}); echo 'The length of both arrays is $sum'" >> array2.sh
bash array2.sh
