#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




#
# Executa todas as verificações definidas para o banco de dados
db-check: db-check-ping db-check-network db-check-credentials

#
# Verifica se é possível 'pingar' o servidor do banco de dados.
db-check-ping:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseCheckPing
	make/makeActions.sh makeExecuteAfter "$@"

#
# Verifica a qualidade da conexão com o banco de dados efetuando um teste
# de 'ping' com 10 tentativas.
db-check-network:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseCheckNetwork
	make/makeActions.sh makeExecuteAfter "$@"

#
# Verifica o acesso ao banco de dados da aplicação.
db-check-credentials:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseCheckCredentials "1"
	make/makeActions.sh makeExecuteAfter "$@"



#
# Mostra as configurações de 'character-set' atualmente definida.
db-show-characterset:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseShowCharacterSet
	make/makeActions.sh makeExecuteAfter "$@"

#
# Mostra as configurações de 'collation' atualmente definida.
db-show-collation:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseShowCollation
	make/makeActions.sh makeExecuteAfter "$@"





#
# Inicia o banco de dados da aplicação.
db-clean:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseStart "0"
	make/makeActions.sh makeExecuteAfter "$@"

#
# Inicia o banco de dados da aplicação.
db-start:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseStart "1"
	make/makeActions.sh makeExecuteAfter "$@"

#
# Exporta o backup do banco de dados da aplicação.
db-export:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseExport "0"
	make/makeActions.sh makeExecuteAfter "$@"

#
# Executa um patch de correção ou atualização para o banco de dados.
#
# Informe o parametro 'file' para indicar qual arquivo de patch deverá ser
# executado.
# O diretório padrão para os arquivos de patch é o /etc/database/patch/
# portanto você precisa informar apenas o caminho relativo até o mesmo.
db-patch:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseExecutePatch "${MAKECMDGOALS}"
	make/makeActions.sh makeExecuteAfter "$@"

#
# Exporta o backup do banco de dados da aplicação e
# substitui o atual bootstrap.
db-bootstrap:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/database/makeActions.sh dataBaseExport "1"
	make/makeActions.sh makeExecuteAfter "$@"
