#!/bin/bash
for i in $@; do
    if grep -q $i /etc/passwd; then
    read -p "$i user already in your system, Delete y/n: " n
    case $n in 
    y)
      userdel -r $i;
      echo "$i user deleted.";;
    n)
      echo "$i user not-deleted.";;
    *)
      echo "You've to choose y/n option.";;
    esac  
    
    else
        useradd $i;
        echo "$i user added to your sistem."
     fi            
done