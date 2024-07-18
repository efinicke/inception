
FILE=/var/www/html/.wp-intalled

if  [ ! -f "$FILE" ]; then
	
	# delete config default file
	rm /var/www/html/wp-config.php

	# create new configuration wp-config.php file
	wp config create \
		--path="/var/www/html/" \
		--dbname=$DB_NAME \
		--dbuser=$DB_USER \
		--dbpass=$DB_PASS \
		--dbhost="$DB_HOST" \
		--allow-root \
		--skip-check

	# install worpress with config file created and create an admin user
	wp core install \
		--url="efinicke.42.fr" \
		--title="Site d'Elodou" \
		--admin_user=$ADMIN_USER \
		--admin_password=$ADMIN_PASS \
		--admin_email=$ADMIN_EMAIL \
		--path="/var/www/html/" \
		--allow-root

	# create a user without admin rights (author status)
	wp user create \
		elodou \
		elodou@student.42.fr \
		--role=author \
		--user_pass="lympide" \
		--allow-root
	
	# install a wordpress theme
	wp theme install twentytwentytwo --path="/var/www/html/" --activate --allow-root
	touch /var/www/html/.wp-installed
	
fi

exec php-fpm7.3 -F
