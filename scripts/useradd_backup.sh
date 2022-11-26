read -p "Do you want to backup? y/n: " ans
#set -x
paste username password | while read i j
do if grep -q $i /etc/passwd; then
      getent passwd $i
else
      useradd $i && echo $j | passwd --stdin $i
      if [[ $ans -eq "y" ]] && [ ! -d "/backups/users" ]; then
      	mkdir -p /backups/users
	tar fczP /backups/users/$i.tar.gz /home/$i
      			#tar fcjP  .*.bz2
      else
       getent passwd $i    	      
      fi
    fi
done 
