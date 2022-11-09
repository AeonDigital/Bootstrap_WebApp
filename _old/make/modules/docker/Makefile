#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




#
# Inicia os containers do projeto baseado no 'docker-compose'.
up:
	make/makeActions.sh makeExecuteBefore "$@"
	docker-compose up -d
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer install --prefer-source
	make/makeActions.sh makeExecuteAfter "$@"

#
# Desativa os containers do projeto e os mantem inativos para futuro uso.
stop:
	make/makeActions.sh makeExecuteBefore "$@"
	docker-compose stop
	make/makeActions.sh makeExecuteAfter "$@"

#
# Reativa os containers do projeto.
# Apenas tem efeito se eles foram criados e estão atualmente inativos.
start:
	make/makeActions.sh makeExecuteBefore "$@"
	docker-compose start
	make/makeActions.sh makeExecuteAfter "$@"

#
# Encerra os containers do projeto e remove os containers e componentes.
down:
	make/makeActions.sh makeExecuteBefore "$@"
	docker-compose down --remove-orphans
	make/makeActions.sh makeExecuteAfter "$@"





#
# Instala as dependências do projeto
# usando o 'php composer'
php-composer-install:
	make/makeActions.sh makeExecuteBefore "$@"
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer install --prefer-source
	make/makeActions.sh makeExecuteAfter "$@"

#
# Atualiza as dependências do projeto
# usando o 'php composer'
php-composer-update:
	make/makeActions.sh makeExecuteBefore "$@"
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer update --prefer-source
	make/makeActions.sh makeExecuteAfter "$@"





#
# Entra no bash do container principal do projeto.
#
# Informe um parametro 'cont' para indicar em qual container deseja entrar.
#   Valores aceitos são: web|db
#   Se nenhum valor for informado, entrará no 'web'
bash:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/docker/makeActions.sh openContainerBash "${MAKECMDGOALS}"
	make/makeActions.sh makeExecuteAfter "$@"

#
# Retorna o IP da rede usado pelos containers
get-ip:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/docker/makeActions.sh getContainersIP
	make/makeActions.sh makeExecuteAfter "$@"





#
# Roda exclusivamente o servidor web com configurações padrões, sem o uso
# do docker-compose
#
# docker run --rm -p 8080:80 -e APACHE_RUN_USER=#1000 -e APACHE_RUN_GROUP=#1000 --name "dev-php-webserver" aeondigital/apache-php-7.4:dev
run-web-server-only:
	make/makeActions.sh makeExecuteBefore "$@"
	docker run -p 8080:80 --env-file "./container-config/apache-php-7.4/etc/.env" --name "dev-php-webserver" aeondigital/apache-php-7.4:dev
	make/makeActions.sh makeExecuteAfter "$@"

#
# Roda exclusivamente o servidor de banco de dados com as configurações padrões, sem o uso
# do docker-compose
run-db-server-only:
	make/makeActions.sh makeExecuteBefore "$@"
	docker run -v "${pwd}/container-config/mysql-8.0/etc/mysql":"/etc/mysql" --name "dev-php-dbserver" aeondigital/mysql-8.0:dev
	make/makeActions.sh makeExecuteAfter "$@"
