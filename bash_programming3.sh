#!/usr/bin/sh

# 1. Write a script that asks the user for an adjective, a noun,
# and a verb, and then use those words in a sentence (like Mad Libs 13 ).

echo "Hey, don't worry, the 1)____ is not that 2)____. In fact, it is 3)_____"

echo "Please write down a 1) noun"
read noun

echo "Please write down an 2) adjective"
read adjective

echo "Please write down a 3) verb"
read verb

echo "Hey, don't worry, the $noun is not that $adjective. In fact, it is $verb"
