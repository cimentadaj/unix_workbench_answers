#!/usr/bin/sh

# 1. Write a function called plier which multiplies together a sequence of numbers.

function plier {
    local multpl=1

    for element in $@
    do
        let multpl=multpl*element
    done

    echo $multpl
}

plier 2 4 6 10

# 2. Write a function called isiteven that prints 1 if a number is even
# or 0 a number is not even.

function isiteven {
    let even=$(expr $1 % 2)

    if [[ $1 -eq 1 ]]
    then
        echo 0
    elif [[ $even -eq 0 ]]
    then

         echo 1
    else
        echo 0
    fi
}

for i in {1..100}
do
    res=$(isiteven $i)
    echo "The number $i is $res"
done

# 3 .Write a function called nevens which prints the number of even numbers when
# provided with a sequence of numbers. Use isiteven when writing this function.

function nevens {
    local acc=0

    for i in $@
    do
        res=$(isiteven $i)
        if [[ $res -eq 1 ]]; then let acc=$acc+1; fi
    done
    echo $acc
}

nevens 1 2 3
nevens 1 2 3 4
nevens {1..100}

# 4 .Write a function called howodd which prints the percentage of odd numbers
# in a sequence of numbers. Use nevens when writing this function.

function howodd {
    local res=$(nevens $@)
    let numerator=$(expr $# - $res)
    echo $(echo "($numerator / $#)" | bc -l)
}

howodd 1 2 3 4

# 5 .Write a function called fib which prints the number of fibonacci numbers
# specified.

function isqr {
    finalres=$(echo "sqrt($1)" | bc -l | awk '{print int($1)*int($1)}')
    if [[ $finalres -eq $1 ]]; then echo 1; else echo 0; fi
}

function isfib {
    form1=$(isqr "5*$1*$1+4")
    form2=$(isqr "5*$1*$1-4")
    if [[ $form1 -eq 1 ]] || [[ $form2 -eq 1 ]]
    then
        echo 1
    else
        echo 0
    fi
}

function fib {
    cum=0
    for num in $@
    do
        res=$(isfib $num)
        let cum=cum+$res
    done
    echo "Total Fibonacci numbers are $cum"
}

# Should be 4
fib 1 2 3 4 5

# Should be 10
fib {1..100}

echo "echo 'a small progam'" > short
