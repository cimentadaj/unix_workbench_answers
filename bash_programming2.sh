#!/usr/bin/sh


# 1. Write a Bash program where you assign two numbers
# to different variables, and then the program prints the
# sum of those variables.

echo '#!/usr/bin/sh' > program1.sh
echo "first_num=\$1" >> program1.sh
echo "second_num=\$2" >> program1.sh
echo "expr \$first_num + \$second_num" >> program1.sh

bash program1.sh 5 10

# 2. Write another Bash program where you assign two
# strings to different variables, and then the program
# prints both of those strings. Write a version where the
# strings are printed on the same line, and a version
# where the strings are printed on different lines.

# Set the base code for both scripts
echo '#!/usr/bin/sh' > program2_base.sh
echo "first_str=\$1" >> program2_base.sh
echo "second_str=\$2" >> program2_base.sh

# Create copies of this base script
cp program2_base.sh program2_separate.sh
cp program2_base.sh program2_together.sh

# Create script for strings which are printed on the same line
echo 'echo "$first_str $second_str"' >> program2_together.sh

# Create script for strings which are printed on separate lines
echo 'echo "$first_str"' >> program2_separate.sh
echo 'echo "$second_str"' >> program2_separate.sh

# Print them together in the same line
bash program2_together.sh "Jorge" "Andrea"

# Print them in separate lines
bash program2_separate.sh "Jorge" "Andrea"

# 3. Write a Bash program that prints the number of argu-
# ments provided to that program multiplied by the first
# argument provided to the program.

echo '#!/usr/bin/sh' > program3.sh
echo "expr \$1 \* \$#" >> program3.sh

# Result shuld be 2 * 4 = 8
bash program3.sh 2 3 5 6
