#!/usr/bin/sh

# 1. Start a new branch.
cd fake_repo
git checkout -b new_branch

# 2. Switch to that branch and add commits to it. Switch to an older branch and
# then merge the new branch into your current branch.
touch file_branch.txt
git add file_branch.txt
git commit -m "Adds file_branch.txt"

git checkout master
git merge master new_branch

# 3. Purposefully create and resolve a merge conflict.
echo "the number of planets are:
nine" > tst.txt
git add .
git commit -m "Commit on master"

git checkout new_branch
git merge master
git add tst.txt
git commit -m "Commit conflict"

git checkout master
git merge new_branch
git merge branch-b


# mkdir git-repo
# cd git-repo
# git init
# touch my_code.sh
# git add my_code.sh
# echo "echo Hello" > my_code.sh
# git commit -am 'initial'
# git checkout -b new_branch
# echo "echo \"Hello World\"" > my_code.sh
# git commit -am 'first commit on new_branch'
# git checkout master
# echo "echo \"Hello World!\"" > my_code.sh
# git commit -am 'second commit on master'
# git merge new_branch
