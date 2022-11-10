#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




#
# Dependências
include make/modules/database/Makefile
include make/modules/docker/Makefile
include make/modules/git/Makefile
include make/modules/tests/Makefile




#
# Roda exclusivamente o servidor web com configurações padrões,
# sem o uso do docker-compose
#
# docker run --rm -p 8080:80 -e APACHE_RUN_USER=#1000 -e APACHE_RUN_GROUP=#1000 --name "dev-php-webserver" aeondigital/apache-php-7.4:dev
run-web-server-only:
	docker run --rm -p 8080:80 --env-file "./container-config/apache-php-7.4/etc/.env" --name "dev-php-webserver" aeondigital/apache-php-7.4:dev

#
# Roda exclusivamente o servidor de banco de dados com as configurações padrões,
# sem o uso do docker-compose
run-db-server-only:
	docker run --rm -v "${pwd}/container-config/mysql-8.0/etc/mysql":"/etc/mysql" --name "dev-php-dbserver" aeondigital/mysql-8.0:dev
