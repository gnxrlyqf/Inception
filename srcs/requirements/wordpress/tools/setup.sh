sleep 10

wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm -f latest.tar.gz
cp wordpress/wp-config-sample.php wordpress/wp-config.php

sed -i "s/username_here/$SQL_USER/" wordpress/wp-config.php
sed -i "s/database_name_here/$SQL_DATABASE/" wordpress/wp-config.php
sed -i "s/password_here/$SQL_PASSWORD/" wordpress/wp-config.php
sed -i "s/localhost/mariadb/" wordpress/wp-config.php
sed -i "s|define( 'ABSPATH', .* );|define( 'ABSPATH', 'wordpress/' );|" wordpress/wp-config.php

mkdir -p /var/www

mv wordpress /var/www

chown -R www-data:www-data /var/www/wordpress
