# 1. Use man to look up the flag for human-readable output
# from ls .Working with Unix

man ls
# and then search for human readable. The option you're searching
# for is -h

ls -h

# 2. Get help with man by typing man man into the console.

man man

# 3. Wouldn’t it be nice if there was a calendar command?
# Use apropos to look for such a command, then use man
# to read about how that command works.

# If your search within man man, you'll see an option -k which
# allows you to use apropos inside man. With this, you can
# automatically look up regex values and then just click on them
# to go to the docs.
man -k calendar
