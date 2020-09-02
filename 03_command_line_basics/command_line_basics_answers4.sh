# 1. Create a file called message.txt in your home directory
# and move it into another directory.
touch ~/message.txt
mkdir ~/test/
mv ~/message.txt ~/test/

# 2. Copy the message.txt you just moved into your home
# directory.

cp ~/test/message.txt ~/

# 3. Delete both copies of message.txt . Try to do this
# without using rm .
trash=~/.local/share/Trash/
mv ~/test/message.txt $trash
mv ~/message.txt $trash
mv ~/test $trash
