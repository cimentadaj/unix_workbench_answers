# 1. Use pipes to figure out how many US states contain the
# word “New.”

egrep "New" states.txt | wc -l

# 2. Examine your ∼ /.bash_history to try to figure out how many unique commands you’ve ever used. (You may need to look up how to use the uniq and sort commands).

# -c is for count
# sort, sorts them
uniq -c ~/.bash_history | sort | tail -n 1
