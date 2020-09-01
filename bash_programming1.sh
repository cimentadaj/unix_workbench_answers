#!/usr/bin/sh

# 1. Look at the man pages for bc .

man bc

# 2. Try doing some math in bc interactively.
bc -i

2.51231 * 555.213151

quit

# 3. Try writing some equations in a file and then provide
# that file as an argument to bc.

echo "5.5 * 5.21351" > test.sh
bc test.sh
quit
