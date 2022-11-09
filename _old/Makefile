#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




#
# Dependências
include make/modules/makeEnvironment.sh
include make/modules/database/Makefile
include make/modules/docker/Makefile
include make/modules/git/Makefile
include make/modules/tests/Makefile




#
# Redefine a configuração do ambiente.
env-config:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/makeActions.sh restartEnvConfig
	make/makeActions.sh makeExecuteAfter "$@"

#
# Redefine a configuração de acesso ao banco de dados
env-config-db:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/makeActions.sh configEnvDataBaseServer
	make/makeActions.sh makeExecuteAfter "$@"
