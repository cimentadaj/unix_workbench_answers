#!/usr/bin/sh

# 1. Start a repository in a new directory.

mkdir fake_repo
cd fake_repo
git init

# 2. Create a new file in your new Git repository. Make sure Git is tracking the file and then create a new commit.

touch file.txt
git add file.txt
git commit -m "First commit"

# 3. Make changes to the file, and then commit these changes.

echo "testt" >> file.txt
git add file.txt
git commit -m "Adds shebang file.txt"

# 4. Add two new files to your repository, but only commit one of them. What is the status of your repository after the commit?

touch file{2..3}.txt
git add file2.txt
git commit -m "Push only one file"

# 5. Undo the last commit, add the untracked file, and redo the commit.

git reset --soft HEAD~1
git add .
git commit -m "Push both files"
