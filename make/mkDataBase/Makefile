#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




#
# Verifica o acesso ao banco de dados da aplicação.
db-check-credentials:
	make/mkDataBase/makeActions.sh dataBaseCheckCredentials "1"

#
# Verifica as configurações de 'character-set' atualmente definida.
db-check-characterset:
	make/mkDataBase/makeActions.sh dataBaseCheckCharacterSet

#
# Verifica as configurações de 'collation' atualmente definida.
db-check-collation:
	make/mkDataBase/makeActions.sh dataBaseCheckCollation



#
# Inicia o banco de dados da aplicação.
db-clean:
	make/mkDataBase/makeActions.sh dataBaseStart "0"

#
# Inicia o banco de dados da aplicação.
db-start:
	make/mkDataBase/makeActions.sh dataBaseStart "1"

#
# Exporta o backup do banco de dados da aplicação.
db-export:
	make/mkDataBase/makeActions.sh dataBaseExport "0"

#
# Executa um patch de correção ou atualização para o banco de dados.
#
# Informe o parametro 'file' para indicar qual arquivo de patch deverá ser
# executado.
# O diretório padrão para os arquivos de patch é o /etc/database/patch/
# portanto você precisa informar apenas o caminho relativo até o mesmo.
db-patch:
	make/mkDataBase/makeActions.sh dataBaseExecutePatch "${MAKECMDGOALS}"

#
# Exporta o backup do banco de dados da aplicação e
# substitui o atual bootstrap.
db-bootstrap:
	make/mkDataBase/makeActions.sh dataBaseExport "1"
