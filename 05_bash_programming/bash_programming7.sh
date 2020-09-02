#!/usr/bin/sh


# 1. Write several programs with three levels of nesting and include
# FOR loops, WHILE loops, and IF statements. Before you run your program try to predict
# what your program is going to print. If the result is different from your
# prediction try to figure out why.

# First
for number in {1..10}
do
    if [[ $number -gt 5 ]]
    then
        for letter in {a..z}
        do
            echo "$number$letter"
        done
    else
        echo $number
    fi
done

# If the number is greater then 5, it will print each number paste with the full
# alphabet. Otherwise it will print only the number once.


# Second
mynum=4
if [[ $mynum -ge 5 ]]
then
    echo "The number is greater than five. Creating sequence to 10."
    while [[ $mynum -ne 10 ]]
    do
        let mynum=$mynum+1
        echo $mynum
    done
else
    echo "The number is lower than five. Printing sequence to zero"
    while [[ $mynum -ne 0 ]]
    do
        let mynum=$mynum-1
        echo $mynum
    done
fi



# 2. Enter the yes command into the console, then stop the program from running.
# Take a look at the man page for yes to learn more about the program.


