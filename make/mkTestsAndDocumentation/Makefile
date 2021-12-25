#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




#
# Inicia os containers do projeto baseado no 'docker-compose' e
# prepara o container da aplicação para a extração da documentação técnica.
up-docs: up docs-config





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
	make/mkTestsAndDocumentation/makeActions.sh performUnitTests "${MAKECMDGOALS}"





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
	make/mkTestsAndDocumentation/makeActions.sh performUnitCoverTests "${MAKECMDGOALS}"
