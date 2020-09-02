#!/usr/bin/sh


# 1. Look at the help pages for git log and git diff.

# 2. Add to the .gitignore you already started to include a specific file name, then add that file to your repository.
cd ./fake_repo/
echo "file4.txt" >> ./.gitignore
touch file4.txt

# 3. Create a file that contains the Git log for this repository. Use grep to see which day of the week most of the commits occurred on.
git log > ./log.txt
cat log.txt | grep -E "Date"
