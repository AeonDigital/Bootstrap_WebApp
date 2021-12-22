#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




CONTAINER_WEBSERVER_NAME="dev-php-webserver"
CONTAINER_DBSERVER_NAME="dev-php-dbserver"
GIT_LOG_LENGTH="10"







#
# Efetua a configuração total do ambiente.
config:
	make/makeActions.sh restartEnvFile
	make/makeActions.sh configEnvWebServer
	make/makeActions.sh configEnvDataBaseServer
	make/makeActions.sh configDockerCompose

#
# Reinicia o arquivo de configuração a partir do template.
# Todos os valores previamente definidos serão perdidos.
config-restart-env:
	make/makeActions.sh restartEnvFile

#
# Efetua a configuração do webserver.
config-web:
	make/makeActions.sh configEnvWebServer

#
# Efetua a configuração do banco de dados.
config-db:
	make/makeActions.sh configEnvDataBaseServer

#
# Efetua a configuração do arquivo docker-compose
config-docker-compose:
	make/makeActions.sh configDockerCompose










#
# Inicia o projeto
up:
	docker-compose up -d
	docker exec -it ${CONTAINER_WEBSERVER_NAME} composer install --prefer-source

#
# Inicia o projeto e prepara o container alvo para a extração da
# documentação técnica
up-docs: up docs-config

#
# Encerra o projeto
down:
	docker-compose down --remove-orphans

#
# Entra no bash principal do projeto
# Use o parametro 'cont' para indicar em qual container deseja entrar.
#   Valores aceitos são: web|db
#	Se nenhum valor for informado, entrará no 'web'
bash:
	if [ "${CONTAINER_WEBSERVER_NAME}" != "" ] && [ -z "${cont}" ] || [ "${cont}" = "web" ]; then \
		docker exec -it ${CONTAINER_WEBSERVER_NAME} /bin/bash; \
	fi;
	if [ "${CONTAINER_DBSERVER_NAME}" != "" ] && [ "${cont}" = "db" ]; then \
		docker exec -it ${CONTAINER_DBSERVER_NAME} /bin/bash; \
	fi;





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
# Retorna o IP da rede usado pelo container
get-ip:
	if [ "${CONTAINER_WEBSERVER_NAME}" != "" ]; then \
		printf "Web-Server : "; \
		docker inspect ${CONTAINER_WEBSERVER_NAME} | grep -oP -m1 '(?<="IPAddress": ")[a-f0-9.:]+'; \
	fi;
	if [ "${CONTAINER_DBSERVER_NAME}" != "" ]; then \
		printf "DB-Server  : "; \
		docker inspect ${CONTAINER_DBSERVER_NAME} | grep -oP -m1 '(?<="IPAddress": ")[a-f0-9.:]+'; \
	fi;





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
	if [ -z "${file}" ]; then \
		docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --configuration "tests/phpunit.xml" --colors=always --verbose --debug; \
	else \
		if [ -z "${method}" ]; then \
			docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit "tests/src/${file}" --colors=always --verbose --debug; \
		else \
			docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --filter "::${method}$$" "tests/src/${file}" --colors=always --verbose --debug; \
		fi; \
	fi





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
	if [ -z "${file}" ] && [ -z "${output}" ]; then \
		docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --configuration "tests/phpunit.xml" --colors=always --coverage-text; \
	else \
		if [ -z "${file}" ]; then \
			if [ -z "${output}" ] || [ "${output}" = "text" ]; then \
				docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --configuration "tests/phpunit.xml" --colors=always --coverage-text; \
			elif [ "${output}" = "html" ]; then \
				docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --configuration "tests/phpunit.xml" --colors=always --coverage-html "tests/cover"; \
			else \
				echo "Parametro 'output' inválido. Use apenas 'text' ou 'html'."; \
			fi; \
		else \
			if [ -z "${output}" ] || [ "${output}" = "text" ]; then \
				docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit "tests/src/${file}" --whitelist="tests/src/${file}" --colors=always --coverage-text; \
			elif [ "${output}" = "html" ]; then \
				docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit "tests/src/${file}" --whitelist="tests/src/${file}" --coverage-html "tests/cover-file"; \
			else \
				echo "Parametro 'output' inválido. Use apenas 'text' ou 'html'."; \
			fi; \
		fi; \
	fi





#
# Configura a classe de extração de documentação técnica
# Este comando precisa ser rodado apenas 1 vez para cada novo container e apenas
# se o arquivo de configuração ainda não existir.
#
# Use o parametro 'force' com o valor 'true' para executar e sobrescrever configurações
# atualmente existentes.
#
# > make docs-config
# > make docs-config force="true"
docs-config:
	if [ ! -f "vendor/aeondigital/phpdoc-to-rst/src/_static/conf.py" ] || [ "${force}" = "true" ]; then \
		docker exec -it ${CONTAINER_WEBSERVER_NAME} mkdir -p docs; \
		docker exec -it ${CONTAINER_WEBSERVER_NAME} ./vendor/bin/phpdoc-to-rst config; \
	else \
		echo "Configuração para documentação já existe"; \
	fi;

#
# Efetua a extração da documentação técnica para o formato 'rst'.
docs-extract:
	docker exec -it ${CONTAINER_WEBSERVER_NAME} ./vendor/bin/phpdoc-to-rst generate docs src --public-only





#
# Mostra log resumido do git
# Use o parametro 'len' para indicar a quantidade de itens a serem mostrados.
#
# O workaround abaixo se deve ao fato que o operador <<< não funciona em condições
# normais do 'Makefile' mesmo quando é setado SHELL=/bin/bash.
# O comando abaixo deveria ser apenas 1 linha como a seguinte:
# column -e -t -s "|" <<< $(git log -3 --pretty='format:%ad | %s' --reverse --date=format:'%d %B | %H:%M')
#
git-log:
	if [ -z "${len}" ]; then \
		git log -${GIT_LOG_LENGTH} --pretty='format:%ad | %s' --reverse --date=format:'%d %B | %H:%M' > .tmplogdata; \
	else \
		git log -${len} --pretty='format:%ad | %s' --reverse --date=format:'%d %B | %H:%M' > .tmplogdata; \
	fi;
	# Sem esta linha extra o comando 'column' apresenta um erro de 'line too long'
	echo "" >> .tmplogdata
	column .tmplogdata -e -t -s "|"
	rm .tmplogdata










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
