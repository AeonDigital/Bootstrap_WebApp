#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




CONTAINER_WEBSERVER_NAME="dev-php-webserver"
CONTAINER_DBSERVER_NAME="dev-php-dbserver"








#
# Redefine a configuração do ambiente.
env-config:
	make/makeActions.sh restartEnvConfig





#
# Inicia os containers do projeto
# docker exec -it ${CONTAINER_WEBSERVER_NAME} chmod -R 644 .
up:
	docker-compose up -d
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer install --prefer-source

#
# Inicia o projeto e prepara o container alvo para a extração da
# documentação técnica.
up-docs: up docs-config

#
# Desativa os containers do projeto e os mantem inativos para futuro uso.
stop:
	docker-compose stop

#
# Ativa os containers do projeto.
# Apenas tem efeito se eles foram criados e estão atualmente inativos.
start:
	docker-compose start

#
# Encerra os containers do projeto e remove os containers e componentes.
down:
	docker-compose down --remove-orphans



#
# Entra no bash do container principal do projeto
#
# Informe um parametro 'cont' para indicar em qual container deseja entrar.
#   Valores aceitos são: web|db
#   Se nenhum valor for informado, entrará no 'web'
bash:
	make/makeActions.sh openContainerBash "${MAKECMDGOALS}"

#
# Roda exclusivamente o servidor web com configurações padrões, sem o uso
# do docker-compose
run-web:
	docker run -p 8080:80 --env-file "./container-config/apache-php-7.4/etc/.env" --name "dev-php-webserver" aeondigital/apache-php-7.4:dev
#	docker run --rm -p 8080:80 -e APACHE_RUN_USER=#1000 -e APACHE_RUN_GROUP=#1000 --name "dev-php-webserver" aeondigital/apache-php-7.4:dev





#
# Instala as dependências do projeto
# usando o 'php composer'
composer-install:
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer install --prefer-source

#
# Atualiza as dependências do projeto
# usando o 'php composer'
composer-update:
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer update --prefer-source

#
# Retorna o IP da rede usado pelos containers
get-ip:
	make/makeActions.sh getContainersIP





#
# Executa a bateria de testes
#
# Opcionais
# Use o parametro 'file' para indicar que os testes devem percorrer apenas
# os testes do arquivo especificado.
# Use o parametro 'method' (em adição ao parametro 'file') para indicar que
# apenas este método do referido arquivo deve ser executado.
#
# > make test
# > make test file="path/to/tgtFile.php"
# > make test file="path/to/tgtFile.php" method="tgtMethodName"
test:
	make/makeActions.sh performUnitTests "${MAKECMDGOALS}"





#
# Executa a verificação total de cobertura dos testes unitários
#
# Opcionais
# Use o parametro 'file' para efetuar o teste de cobertura sobre apenas 1
# classe de testes.
#
# Use o parametro 'output' para selecionar o tipo de saida que o teste de
# cobertura deve ter. As opções são:
#  - 'text' (padrão) : printa o resultado na tela.
#  - 'html' : Monta a saída dos testes em formato HTML.
#
# > make test-cover
# > make test-cover file="path/to/tgtFile.php"
# > make test-cover output="html"
# > make test-cover file="path/to/tgtFile.php" output="html"
test-cover:
	make/makeActions.sh performUnitCoverTests "${MAKECMDGOALS}"





#
# Configura a classe de extração de documentação técnica
# Este comando precisa ser rodado apenas 1 vez para cada novo container e apenas
# se o arquivo de configuração ainda não existir.
docs-config:
	docker exec -it ${CONTAINER_WEBSERVER_NAME} mkdir -p docs;
	docker exec -it ${CONTAINER_WEBSERVER_NAME} ./vendor/bin/phpdoc-to-rst config;

#
# Efetua a extração da documentação técnica para o formato 'rst'.
docs-extract:
	docker exec -it ${CONTAINER_WEBSERVER_NAME} ./vendor/bin/phpdoc-to-rst generate docs src --public-only





#
# Mostra log resumido do git
# Use o parametro 'len' para indicar a quantidade de itens a serem mostrados.
git-log:
	make/makeActions.sh gitShowLog "${MAKECMDGOALS}"





#
# Mostra qual a tag atual do projeto.
tag:
	git describe --abbrev=0 --tags

#
# Redefine a tag atualmente vigente para o commit mais recente
tag-remark:
	make/makeActions.sh gitTagManagement "remark"

#
# Atualiza o 'patch' da tag atualmente definida
# para a branch principal 'main'.
tag-update:
	make/makeActions.sh gitTagManagement "version" "patch"

#
# Atualiza o 'minor version'  da tag atualmente definida
# para a branch principal 'main'.
tag-update-minor:
	make/makeActions.sh gitTagManagement "version" "minor"

#
# Atualiza o 'major version'  da tag atualmente definida
# para a branch principal 'main'.
tag-update-major:
	make/makeActions.sh gitTagManagement "version" "major"

#
# Atualiza a 'stability' da tag atualmente definida
# para a branch principal 'main'.
#
# Use o parametro 'stability' para indicar qual será a nova 'stability'.
# use apenas um dos seguintes valores: 'alpha'; 'beta'; 'cr'; 'r'
tag-stability:
	make/makeActions.sh gitTagManagement "stability" "${stability}"
