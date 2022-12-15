PMA=$(dpkg-query -W -f='${Status}' phpmyadmin 2>/dev/null | grep -c 'ok installed')
if [ $PMA -eq 0 ]; then
	echo "Paigaldame phpmyadmin ja vajalikud asjad"
	apt install phpmyadmin
	echo "phpmyadmin on installitud"
elif [ $PMA -eq 1 ]; then
	echo "phpmyadmin on juba olemas"
fi
