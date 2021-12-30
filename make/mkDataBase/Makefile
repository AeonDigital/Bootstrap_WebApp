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
	make/mkDataBase/makeActions.sh dataBaseCheckPing

#
# Verifica a qualidade da conexão com o banco de dados efetuando um teste
# de 'ping' com 10 tentativas.
db-check-network:
	make/mkDataBase/makeActions.sh dataBaseCheckNetwork

#
# Verifica o acesso ao banco de dados da aplicação.
db-check-credentials:
	make/mkDataBase/makeActions.sh dataBaseCheckCredentials "1"



#
# Mostra as configurações de 'character-set' atualmente definida.
db-show-characterset:
	make/mkDataBase/makeActions.sh dataBaseShowCharacterSet

#
# Mostra as configurações de 'collation' atualmente definida.
db-show-collation:
	make/mkDataBase/makeActions.sh dataBaseShowCollation





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
