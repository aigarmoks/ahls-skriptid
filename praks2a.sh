#!/bin/bash
userfile=/root/ahls/userlist/
username=$(cat /root/ahls/userlist | tr 'A-Z' 'a-z')
password=$username@123
for user in $username
do
useradd $user
mkdir /home/$user
done
echo "$(wc -l /root/ahls/userlist) users have been created"
tail -n$(wc -l /root/ahls/userlist) /etc/passwd
