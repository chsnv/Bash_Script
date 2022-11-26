#!/bin/bash
for i in $@; do
#set -x
    if grep -q $i /etc/passwd; then 
    getent passwd $@ 
 read -p "Delete $i y/n: " n
    case $n in 
    y)
      userdel -r $i;;
    n)
      echo "$i not deleted";; 
    *)
      echo "Try Again.";;
    esac  
    else
        useradd $i;
        echo "$i user added"
     fi            
done