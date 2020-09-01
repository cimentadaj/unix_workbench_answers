#!/usr/bin/sh


# 1. Write a bash script that takes a file path as an argument and copies that file to a designated folder on your server.

echo "scp \$1 root@165.22.201.250:/root/test/" > transfer.sh
echo "file from local computer" > local_file.txt
chmod u+x ./transfer.sh

./transfer.sh ./local_file.txt


# 2. Find a file online that changes periodically, then write a program to download that file every time it changes.

# On remote server
# Type crontab -e and run the program every five minutes
touch root/test/timestamp.txt
chmod u+x root/test/timestamp.txt
* * * * * date >> /root/test/timestamp.txt

# On local server
touch last_md5.txt
function file_checker {
    actual_md5=$(ssh root@165.22.201.250 "md5sum /root/test/timestamp.txt" | awk '{ print $1 }')
    local_md5=$(cat last_md5.txt)

    if [[ $actual_md5 != $local_md5 ]]
    then
        scp root@165.22.201.250:/root/test/timestamp.txt /home/jorge/repositories/unix_workbench_answers
        (md5sum /home/jorge/repositories/unix_workbench_answers/timestamp.txt | awk '{ print $1 }') > last_md5.txt
        echo "File downloaded and md5sum updated"
    else
        echo "File hasn't changed. Leaving md5sum without update"
    fi
}

# Run file_checker many times and check that it works!
file_checker

# 3. Try creating your own Twitter or GitHub bot with the Twitter API or the GitHub API.
