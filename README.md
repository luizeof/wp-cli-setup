# wp-cli-setup
Simple WP-CLI Setup for Debian / Ubuntu

## Instalando dependências

```bash
apt-get install -y --no-install-recommends sudo curl git mariadb-client
```

## Preparando o diretório de cache

```bash
rm -rf /var/www/.wp-cli/
mkdir -p /var/www/.wp-cli/cache/
chown -R www-data:www-data /var/www/.wp-cli/cache/
```

## Preparando o diretório de Packages

```bash
rm -rf var/www/.wp-cli/packages/
mkdir -p var/www/.wp-cli/packages/
chown -R www-data:www-data var/www/.wp-cli/packages/
```

## Remove alguma versão anterior

```bash
rm -f /var/www/wp-cli.phar
```

## Baixando o wp-cli

```bash
curl -o /var/www/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x /var/www/wp-cli.phar
```

### Instalando o auto completar

```bash
rm -rf /var/www/wp-completion.bash
curl -o /var/www/wp-completion.bash https://raw.githubusercontent.com/wp-cli/wp-cli/master/utils/wp-completion.bash
source /var/www/wp-completion.bash
```

## Baixando o Wrapper

```bash
curl -o /usr/local/bin/wp https://raw.githubusercontent.com/luizeof/wp-cli-setup/master/wp.sh
chmod +x /usr/local/bin/wp
```
