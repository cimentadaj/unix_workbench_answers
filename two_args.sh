#!/usr/bin/sh
if [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]]; then echo $(expr $1 + $2); else echo $1; echo $2; fi
