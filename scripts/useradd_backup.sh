if [!-d "/backups"] {
      mkdir /backups
}
paste username password | while read i j
do if grep -q $i /etc/passwd; then
      getent passwd $i
else
      useradd $i && echo $j | passwd --stdin $i
      tar fczP /backups/$i.tar.gz /home/$i #tar fcjP  .*.bz2
      fi
done       