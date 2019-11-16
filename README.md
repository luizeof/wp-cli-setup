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

## Preparando o iretório de Packages
