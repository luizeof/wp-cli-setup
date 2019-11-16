# Setup wp-cli
echo "Setting up wp-cli..."

apt-get install -y sudo curl git mariadb-client

rm -rf /var/www/.wp-cli/
mkdir -p /var/www/.wp-cli/cache/
chown -R www-data:www-data /var/www/.wp-cli/cache/


rm -rf var/www/.wp-cli/packages/
mkdir -p var/www/.wp-cli/packages/
chown -R www-data:www-data var/www/.wp-cli/packages/

rm -f /var/www/wp-cli.phar

curl -o /var/www/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x /var/www/wp-cli.phar

rm -rf /var/www/wp-completion.bash
curl -o /var/www/wp-completion.bash https://raw.githubusercontent.com/wp-cli/wp-cli/master/utils/wp-completion.bash
source /var/www/wp-completion.bash

curl -o /usr/local/bin/wp https://raw.githubusercontent.com/luizeof/wp-cli-setup/master/wp.sh
chmod +x /usr/local/bin/wp

echo "Done"
