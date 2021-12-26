#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




#
# Dependências
include make/makeEnvironment.sh
include make/mkDataBase/Makefile
include make/mkDocker/Makefile
include make/mkGit/Makefile
include make/mkTestsAndDocumentation/Makefile




#
# Redefine a configuração do ambiente.
env-config:
	make/makeActions.sh restartEnvConfig

#
# Redefine a configuração de acesso ao banco de dados
env-config-db:
	make/makeActions.sh configEnvDataBaseServer
