#!/usr/bin/sh

# 1. Make a script executable.

echo '#!/usr/bin/sh' > fake_script
echo 'echo "The first argument is $1"' >> fake_script
chmod u+x fake_script

fake_script 1
fake_script a

# 2. Put that script in a directory that you create and make that directory part of your PATH.

mkdir fake_dir
mv fake_script fake_dir
echo 'export PATH=~/repositories/unix_workbench_answers/fake_dir:$PATH' >> ~/.bash_profile
source ~/.bash_profile

fake_script 1
fake_script a

# 3. Write a program called range that takes one number as an argument and prints
# all of the numbers between that number and 0.

echo '#!/usr/bin/bash' > ./fake_dir/range

echo "res=\$1
echo \$res

if [[ \$res -lt 0 ]]
then
    while [[ \$res -ne 0 ]]
    do
        let res=\$res+1
        echo \$res
    done
else
    while [[ \$res -ne 0 ]]
    do
        let res=\$res-1
        echo \$res
    done
fi
" >> ./fake_dir/range

chmod u+x ./fake_dir/range
range 10
range -10

# 4. Write a program called extremes which prints the maximum and minimum values of a sequence of numbers.

echo '#!/usr/bin/bash' > ./fake_dir/extremes

echo '
allargs=($@)
sortres=($(printf "%s\n" "${allargs[@]}" | sort -n))
len=$(echo "${#sortres[@]}-1" | bc -l)
echo "${sortres[0]} ${sortres[$len]}"' >> ./fake_dir/extremes 

chmod u+x ./fake_dir/extremes
extremes 8 2 9 4 0 3
