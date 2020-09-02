# 1. Create 100 text files using brace expansion.
touch $(echo file_{1..100}.txt)
rm -rf file_*
