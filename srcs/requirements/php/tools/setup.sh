sleep 10

curl -L https://wordpress.org/latest.tar.gz -o latest.tar.gz
tar -xvf latest.tar.gz
rm -f latest.tar.gz
cp wordpress/wp-config-sample.php wordpress/wp-config.php

sed -i "s/username_here/$SQL_USER/" wordpress/wp-config.php
sed -i "s/database_name_here/$SQL_DATABASE/" wordpress/wp-config.php
sed -i "s/password_here/$SQL_PASSWORD/" wordpress/wp-config.php
sed -i "s/localhost/mariadb/" wordpress/wp-config.php
sed -i "s|define( 'ABSPATH', .* );|define( 'ABSPATH', 'wordpress/' );|" wordpress/wp-config.php

printf "%s\n" \
	"define( 'WP_REDIS_HOST' , 'redis' );" \
	"define( 'WP_REDIS_PORT' , 6379 );" \
	"define( 'WP_CACHE' , true);"

mkdir -p /var/www

mv wordpress /var/www

chown -R www-data:www-data /var/www/wordpress
