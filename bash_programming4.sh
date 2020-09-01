#!/usr/bin/sh

# 1. Write a Bash script that takes a string as an argument
# and prints “how proper” if the string starts with a
# capital letter.

echo '#!/usr/bin/sh' > string_regex.sh
echo 'if [[ $1 =~ ^[A-Z]{1} ]]; then echo "How proper"; fi' >> string_regex.sh
bash string_regex.sh "Hello"
bash string_regex.sh "hello"

# 2. Write a Bash script that takes one argument and prints
# “even” if the first argument is an even number or “odd”
# if the first argument is an odd number.

echo '#!/usr/bin/sh' > odd_number.sh
echo 'if [[ $(expr $1 % 2) -eq 0 ]]; then echo "Even"; else echo "Odd"; fi' >> odd_number.sh
bash odd_number.sh 10
bash odd_number.sh 11
bash odd_number.sh 72
bash odd_number.sh 77

# 3. Write a Bash script that takes two arguments. If both
# arguments are numbers, print their sum, otherwise just
# print both arguments.

echo '#!/usr/bin/sh' > two_args.sh
echo 'if [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]]; then echo $(expr $1 + $2); else echo $1; echo $2; fi' >> two_args.sh
bash two_args.sh 2 5
bash two_args.sh 2 "hey"

# 4. Write a Bash script that prints “Thank Moses it’s Fri-
# day” if today is Friday. (Hint: take a look at the date program).

echo '#!/usr/bin/sh' > friday.sh
echo "if [ $(date +%A) == 'Freitag' ]; then echo 'Thank Moses its Friday'; fi" >> friday.sh
bash friday.sh

