#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




#
# Inicia os containers do projeto baseado no 'docker-compose'.
up:
	if [ ! -f "composer.lock" ]; then echo "{}" > "composer.lock"; fi;
	docker-compose up -d
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer install --prefer-source

#
# Desativa os containers do projeto e os mantem inativos para futuro uso.
stop:
	docker-compose stop

#
# Reativa os containers do projeto.
# Apenas tem efeito se eles foram criados e estão atualmente inativos.
start:
	docker-compose start

#
# Encerra os containers do projeto e remove os containers e componentes.
down:
	docker-compose down --remove-orphans





#
# Instala as dependências do projeto
# usando o 'php composer'
php-composer-install:
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer install --prefer-source

#
# Atualiza as dependências do projeto
# usando o 'php composer'
php-composer-update:
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer update --prefer-source





#
# Entra no bash do container principal do projeto.
#
# Informe um parametro 'cont' para indicar em qual container deseja entrar.
#   Valores aceitos são: web|db
#   Se nenhum valor for informado, entrará no 'web'
bash:
	make/mkDocker/makeActions.sh openContainerBash "${MAKECMDGOALS}"

#
# Retorna o IP da rede usado pelos containers
get-ip:
	make/mkDocker/makeActions.sh getContainersIP





#
# Roda exclusivamente o servidor web com configurações padrões, sem o uso
# do docker-compose
#
# docker run --rm -p 8080:80 -e APACHE_RUN_USER=#1000 -e APACHE_RUN_GROUP=#1000 --name "dev-php-webserver" aeondigital/apache-php-7.4:dev
run-web-server-only:
	docker run -p 8080:80 --env-file "./container-config/apache-php-7.4/etc/.env" --name "dev-php-webserver" aeondigital/apache-php-7.4:dev

#
# Roda exclusivamente o servidor de banco de dados com as configurações padrões, sem o uso
# do docker-compose
run-db-server-only:
	docker run -v "${pwd}/container-config/mysql-8.0/etc/mysql":"/etc/mysql" --name "dev-php-dbserver" aeondigital/mysql-8.0:dev
