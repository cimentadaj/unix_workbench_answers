# 1. Search states.txt and canada.txt for lines that con-
# tain the word “New”.

egrep -n "New" states.txt canada.txt

# 2. Make five text files containing the names of states that
# don’t contain one of each of the five vowels.

egrep -v "a" states.txt > no_a.txt
egrep -v "e" states.txt > no_e.txt
egrep -v "i" states.txt > no_i.txt
egrep -v "o" states.txt > no_o.txt
egrep -v "u" states.txt > no_u.txt

# 3. Download the GitHub repository for this book and find
# out how many .html files it contains.

# 13 lines end with .html
find ~/repositories/the-unix-workbench/ -regex "^.+\.html$" | wc
