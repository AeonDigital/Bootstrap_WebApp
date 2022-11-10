#!/usr/bin/env bash
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Carrega as ferramentas de uso geral
. "${PWD}/make/standalone.sh"
. "${PWD}/make/makeEnvironment.sh"
. "${PWD}/make/makeTools.sh"





#
# Cria uma string que pode ser usada para executar instruções SQL
# em um banco de dados a partir de um client mysql no container da aplicação web.
#
# @param string $1
#       Se informado "", retornará uma string sem especificar uma base de dados.
#       Se informato "1", retornará uma string com o banco de dados padrão definido
#       no arquivo de configuração ".env"
#       Qualquer outro valor informado deverá ser o banco de dados alvo dos
#       comandos que usarão este comando.
#
# @return
#       Retorna a string de comando a ser usada.
dataBaseExecuteCommand() {
  #
  # Resgata os dados de acesso ao banco de dados alvo.
  local DATABASE_TYPE=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_TYPE")
  local DATABASE_HOST=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_HOST")
  local DATABASE_PORT=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_PORT")
  local DATABASE_NAME=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_NAME")
  local DATABASE_USER=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_USER")
  local DATABASE_PASS=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_PASS")

  #
  # Utiliza o container de servidor web pois ele possui um client MySql
  local tmpDocker=$(echo "docker exec -it ${CONTAINER_WEBSERVER_NAME}")
  local tmpConnection=$(echo "mysql --host=${DATABASE_HOST} --port=${DATABASE_PORT} --user=${DATABASE_USER} --password=${DATABASE_PASS}")

  if [ "$1" == "" ]; then
    tmpConnection=$(echo "${tmpConnection} --execute=")
  elif [ "$1" == "1" ] || [ "$1" == "\"\"" ]; then
    tmpConnection=$(echo "${tmpConnection} --database=${DATABASE_NAME} --execute=")
  else
    tmpConnection=$(echo "${tmpConnection} --database=${1} --execute=")
  fi;

  local tmpExecuteSQL=$(echo "${tmpDocker} ${tmpConnection}")
  echo "${tmpExecuteSQL}"
}



#
# Cria uma string que pode ser usada para executar a
# importação ou exportação de uma base de dados alvo.
#
# @param string $1
#       Indica a 'direção' do dump de dados.
#       Use 'import' ou 'i' para executar a importação.
#       Use 'export' ou 'e' para executar a exportação.
#       Use 'patch' ou 'p' para executar um patch.
#
# @param string $2
#       Se informado "", retornará uma string sem especificar uma base de dados.
#       Se informato "1", retornará uma string com o banco de dados padrão definido
#       no arquivo de configuração ".env"
#       Qualquer outro valor informado deverá ser o banco de dados alvo dos
#       comandos que usarão este comando.
#
# @return
#       Retorna a string de comando a ser usada.
dataBaseDumpCommand() {
  #
  # Resgata os dados de acesso ao banco de dados alvo.
  local DATABASE_TYPE=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_TYPE")
  local DATABASE_HOST=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_HOST")
  local DATABASE_PORT=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_PORT")
  local DATABASE_NAME=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_NAME")
  local DATABASE_USER=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_USER")
  local DATABASE_PASS=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_PASS")

  local tmpDocker=$(echo "docker exec -it ${CONTAINER_WEBSERVER_NAME}");
  local tmpConnection=""

  if [ "$1" == "export" ] || [ "$1" == "e" ]; then
    tmpConnection=$(echo "mysqldump --host=${DATABASE_HOST} --port=${DATABASE_PORT} --user=${DATABASE_USER} --password=${DATABASE_PASS}");

    if [ "$2" == "" ]; then
      tmpConnection=$(echo "${tmpConnection}");
    elif [ "$2" == "1" ]; then
      tmpConnection=$(echo "${tmpConnection} --databases ${DATABASE_NAME}");
    else
      tmpConnection=$(echo "${tmpConnection} --databases ${2}");
    fi;

    tmpConnection=$(echo "${tmpConnection} --result-file=");
    tmpConnection=$(echo "${tmpDocker} ${tmpConnection}");

  elif [ "$1" == "import" ] || [ "$1" == "i" ]; then
    tmpConnection=$(dataBaseExecuteCommand "${2}");

  elif [ "$1" == "patch" ] || [ "$1" == "p" ]; then
    tmpConnection=$(dataBaseExecuteCommand "${2}");

  else
    setIMessage "" 1;
    setIMessage "Argumento \"1\" inválido.";
    alertUser;
  fi;


  if [ "$tmpConnection" != "" ]; then
    echo "${tmpConnection}";
  fi;
}



#
# Executa uma instrução SQL no banco de dados alvo.
#
# @param string $1
#       String da conexão a ser usada.
#
# @param string $2
#       Instrução SQL que será executada.
#
# @return
#
dataBaseExecuteInstruction() {
  local tmpResult=$(${1}"$2")
  echo "${tmpResult}"
}










#
# Verifica se há comunicação com o servidor do banco de dados.
dataBaseCheckPing() {
  local DATABASE_HOST=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_HOST")
  local pingResult=$(checkServerWithPing "${DATABASE_HOST}" "1" "1")


  if [ "${pingResult}" == "" ]; then
    mse_inter_showError "${FUNCNAME[0]}::Falha do 'ping'"
  else
    local pingProccess=$(proccessPingStringResult "${pingResult}")
    local arrResult=(${pingProccess//-/ })

    if [ ${#arrResult[@]} != 5 ]; then
      mse_inter_showError "${FUNCNAME[0]}::Falha do 'ping'"
    else
      if [ "${arrResult[3]}" == "100" ]; then
        mse_inter_showAlert "s" "Servidor encontrado."
      else
        mse_inter_showAlert "f" "Servidor não encontrado."
      fi
    fi
  fi
}



#
# Verifica a qualidade da rede com o banco de dados efetuando um teste
# de 'ping' com 10 tentativas.
dataBaseCheckNetwork() {
  declare -a arrMessage=()
  arrMessage+=("O teste completo leva alguns segundos...")
  mse_inter_showAlert "a" "Iniciando teste [ ping x 10 ]" "arrMessage"
  mse_inter_setCursorPosition "top" "1"

  local DATABASE_HOST=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_HOST")
  local pingResult=$(checkServerWithPing "${DATABASE_HOST}" "10" "1")

  if [ "${pingResult}" == "" ]; then
    mse_inter_showError "${FUNCNAME[0]}::Falha do 'ping'"
  else
    local pingProccess=$(proccessPingStringResult "${pingResult}")
    local arrResult=(${pingProccess//-/ })

    if [ ${#arrResult[@]}  != 5 ]; then
      mse_inter_showError "${FUNCNAME[0]}::Falha do 'ping'"
    else
      declare -a arrMessage=()
      arrMessage+=("${mseNONE}Tentativas: ${mseDPURPLE}${arrResult[0]}${mseNONE} pacotes enviados.")
      arrMessage+=("${mseNONE}            ${mseDPURPLE}${arrResult[1]}${mseNONE} pacotes recebidos.")
      arrMessage+=("${mseNONE}            ${mseDPURPLE}${arrResult[2]}${mseNONE} pacotes perdidos.")
      arrMessage+=("")
      arrMessage+=("${mseNONE}Sucesso: ${mseDGREEN}${arrResult[3]}%%${mseNONE}")
      arrMessage+=("${mseNONE}Falha  : ${mseDRED}${arrResult[4]}%%${mseNONE}")

      mse_inter_showAlert "a" "Resultado:" "arrMessage"
    fi
  fi
}



#
# Verifica o acesso ao banco de dados da aplicação.
#
# @param string $1
#       Controla o retorno da função para quando a verificação for
#       bem sucedida.
#       Use "" ou "0" para retornar apenas "1" quando a verificação for Ok.
#       Use "1" para retornar uma mensagem amigável para o usuário.
#
# @return
#       Retornará '1' caso a conexão tenha sido estabelecida com sucesso
#       ou apresentará a falhaencontrada.
#       Se $1 for "1" e a conexão for bem sucedida, retornará uma mensagem
#       amigável;
dataBaseCheckCredentials() {
  local tmpConn=$(dataBaseExecuteCommand "")
  local tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" ";")
  declare -a arrMessage=()

  if [ "${tmpResult}" != "" ]; then
    arrMessage+=("${tmpResult}")
    mse_inter_showAlert "f" "Credenciais não aceitas" "arrMessage"
  else
    if [ "$1" != "1" ]; then
      echo "1"
    else
      mse_inter_showAlert "s" "Credenciais aceitas" "arrMessage"
    fi
  fi
}





#
# Expõe para o usuário o valor definido para as configuração de variáveis
# do tipo 'character-set'
dataBaseShowCharacterSet() {
  local tmpConn=$(dataBaseExecuteCommand "")
  local tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "SHOW VARIABLES LIKE '%character_set%';")
  declare -a arrMessage=()

  if [ "${tmpResult}" == "" ]; then
    mse_inter_showAlert "f" "Falha na execução" "arrMessage"
  else
    mse_inter_showAlert "s" "Configurações 'character_set'" "arrMessage"
    echo "${tmpResult}"
  fi
}



#
# Expõe para o usuário o valor definido para as configuração de variáveis
# do tipo 'collation'
dataBaseShowCollation() {
  local tmpConn=$(dataBaseExecuteCommand "")
  local tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "SHOW VARIABLES LIKE '%collation%';")
  declare -a arrMessage=()

  if [ "${tmpResult}" == "" ]; then
    mse_inter_showAlert "f" "Falha na execução" "arrMessage"
  else
    mse_inter_showAlert "s" "Configurações 'collation'" "arrMessage"
    echo "${tmpResult}"
  fi
}










#
# Inicia o banco de dados do projeto.
#
# As alterações terão como alvo o banco de dados definido nas variáveis
# de ambiente no '.env'.
#
# @param string $1
#       Use "" ou "0" para simplesmente reiniciar a base de dados totalmente
#       vazia.
#       Use "1" para indicar que deseja reiniciar o banco de dados usando
#       o 'bootstrap.sql'
#
# As seguintes ações serão executadas:
# - Removerá completamente o atual banco de dados (se existir).
# - Iniciará um novo banco de dados com o nome indicado no '.env'
# SE $1="1"
# - Usará o arquivo 'bootstrap.sql' para definir o squema e os dados
#   inicial do banco de dados (se existir).
#
dataBaseStart() {
  local tmpConn=$(dataBaseExecuteCommand "")
  local tmpSQL=""
  local tmpResult=""
  local ISOK="1"
  local tmpMsgTitle=""

  tmpResult=$(dataBaseCheckCredentials "0")
  if [ "${tmpResult}" != "1" ]; then
    echo "${tmpResult}"
  else
    local DATABASE_NAME=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_NAME")

    #
    # Identifica se o banco de dados alvo existe
    tmpSQL="SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME='${DATABASE_NAME}';"
    tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "${tmpSQL}")
    if [ "${tmpResult}" != "" ]; then
      tmpMsgTitle="ATENÇÃO"
      declare -a arrMessage=()
      arrMessage+=("O atual banco de dados \"${DATABASE_NAME}\" será totalmente perdido.")
      mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"

      mse_inter_showPrompt "" "ca" "Você confirma esta ação?" "bool"
      if [ "$MSE_GLOBAL_PROMPT_RESULT" == "0" ]; then
        tmpMsgTitle="Ação abortada pelo usuário"
        declare -a arrMessage=()

        mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"
        ISOK="0"
      else
        tmpSQL="DROP DATABASE ${DATABASE_NAME};"
        tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "${tmpSQL}")
        if [ "${tmpResult}" != "" ]; then
          tmpMsgTitle="Falha de execução"
          declare -a arrMessage=()
          arrMessage+=("${tmpResult}")

          mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
          ISOK="0"
        fi
      fi
    fi


    if [ "$ISOK" == "1" ]; then
      tmpSQL="CREATE DATABASE ${DATABASE_NAME};"
      tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "${tmpSQL}")

      if [ "${tmpResult}" != "" ]; then
        tmpMsgTitle="Falha de execução"
        declare -a arrMessage=()
        arrMessage+=("${tmpResult}")

        mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
      else
        tmpMsgTitle="Banco de dados \"${DATABASE_NAME}\" criado com sucesso."
        declare -a arrMessage=()

        mse_inter_showAlert "s" "${tmpMsgTitle}" "arrMessage"
        if [ "$1" == "1" ]; then
          if [ ! -f "${MK_LOCAL_BOOTSTRAP_FILE}" ]; then
            tmpMsgTitle="O arquivo \"bootstrap.sql\" não foi encontrado."
            declare -a arrMessage=()

            mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
          else
            tmpMsgTitle="Iniciando \"bootstrap\" do banco de dados."
            declare -a arrMessage=()
            arrMessage+=("Esta ação pode levar alguns minutos.")

            mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"
            if [ ! -s "${MK_LOCAL_BOOTSTRAP_FILE}" ]; then
              tmpMsgTitle="O arquivo de instruções \"bootstrap\" está vazio."
              declare -a arrMessage=()
              arrMessage+=("Execução abortada.")

              mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"
            else
              local tmpDump=$(dataBaseDumpCommand "import" "1")

              tmpSQL="SOURCE ${MK_WEB_SERVER_DATABASE_BOOTSTRAP_FILE};"
              tmpResult=$(dataBaseExecuteInstruction "${tmpDump}" "${tmpSQL}")
              if [ "${tmpResult}" == "" ]; then
                tmpMsgTitle="\"bootstrap\" instalado com sucesso."
                declare -a arrMessage=()

                mse_inter_showAlert "s" "${tmpMsgTitle}" "arrMessage"
              else
                tmpMsgTitle="Falha ao instalar o \"bootstrap\"."
                declare -a arrMessage=()

                mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
                echo "${tmpResult}"
              fi
            fi
          fi
        fi
      fi
    fi
  fi
}





#
# Exporta o banco de dados atual.
#
# Os arquivos exportados serão armazenados zipados no diretório '/etc/database/backup/YYYY/MM'
# onde 'YYYY' será o ano atual e 'MM' será o mês atual.
#
# O próprio arquivo terá um nome usando o formato em formato YYYY-MM-DD-HH-MM-SS-[databasename].zip
#
# @param string $1
#       Se "0" executa as tarefas normais expostas acima.
#       Se "1" substitui o arquivo 'bootstrap.sql' atual.
#
dataBaseExport() {

  local tmpMsgTitle=""
  local tmpYear=$(date +"%Y")
  local tmpMonth=$(date +"%m")

  local tmpContainerDir="/etc/database/backup/${tmpYear}/${tmpMonth}/"
  local tmpHostDir="${MK_LOCAL_CONTAINER_ROOT_DIR}${tmpContainerDir}"

  local DATABASE_NAME=$(mse_config_showVariableValue "${MK_WEB_SERVER_ENV_FILE}" "" "DATABASE_NAME")


  tmpMsgTitle="ATENÇÃO"
  declare -a arrMessage=()
  arrMessage+=("Uma cópia da versão atual do banco de dados \"${DATABASE_NAME}\" será criada.")
  if [ "$1" == "1" ]; then
    arrMessage+=("A versão atual do arquivo \"bootstrap.sql\" será totalmente substituída.")
  fi
  mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"


  mse_inter_showPrompt "" "ca" "Você confirma esta ação?" "bool"
  if [ "$MSE_GLOBAL_PROMPT_RESULT" == "0" ]; then
    tmpMsgTitle="Ação abortada pelo usuário"
    declare -a arrMessage=()

    mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"
  else
    mkdir -p "${tmpHostDir}";
    if [ ! -d "${tmpHostDir}" ]; then
      tmpMsgTitle="ERRO"
      declare -a arrMessage=()
      arrMessage+=("Não foi possível criar o diretório alvo.")
      arrMessage+=("> ${tmpHostDir}")
      arrMessage+=("  mapeado para")
      arrMessage+=("> ${tmpContainerDir}")
      arrMessage+=("")
      arrMessage+=("Execução abortada")

      mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
    else
      local tmpDump=$(dataBaseDumpCommand "export" "1")

      local tmpResultFile=$(date +'%Y-%m-%d-%H-%M-%S')
      tmpResultFile=$(echo "${tmpResultFile}-${DATABASE_NAME}")


      tmpMsgTitle="Iniciando a exportação do banco de dados."
      declare -a arrMessage=()
      arrMessage+=("Esta ação pode levar alguns minutos.")

      mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"

      tmpResult=$(dataBaseExecuteInstruction "${tmpDump}" "${tmpContainerDir}${tmpResultFile}.sql");
      if [ "${tmpResult}" != "" ]; then
        tmpMsgTitle="Falha ao exportar o banco de dados"
        declare -a arrMessage=()

        mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
        echo "${tmpResult}"
      else

        if [ ! -f "${tmpHostDir}${tmpResultFile}.sql" ]; then
          tmpMsgTitle="ERRO"
          declare -a arrMessage=()
          arrMessage+=("Uma falha inesperada ocorreu e não foi possível criar o arquivo de DUMP em")
          arrMessage+=("> ${tmpHostDir}${tmpResultFile}.sql")
          arrMessage+=("  mapeado para")
          arrMessage+=("> ${tmpContainerDir}${tmpResultFile}.sql")
          arrMessage+=("")
          arrMessage+=("Execução abortada")

          mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
        else
          docker exec -it ${CONTAINER_WEBSERVER_NAME} zip -j "${tmpContainerDir}${tmpResultFile}.zip" "${tmpContainerDir}${tmpResultFile}.sql"

          if [ "$1" == "1" ]; then
            docker exec -it ${CONTAINER_WEBSERVER_NAME} cp "${tmpContainerDir}${tmpResultFile}.sql" "/etc/database/bootstrap.sql"
          fi;


          local useExt=""

          tmpMsgTitle="SUCESSO"
          declare -a arrMessage=()
          if [ -f "${tmpHostDir}${tmpResultFile}.zip" ]; then
            docker exec -it ${CONTAINER_WEBSERVER_NAME} rm "${tmpContainerDir}${tmpResultFile}.sql"
            useExt=".zip"
            arrMessage+=("Uma versão zipada do mesmo foi salva em")
          else
            useExt=".sql"
            arrMessage+=("No entanto, não foi possível zipar o arquivo final")
          fi
          arrMessage+=("> ${tmpHostDir}${tmpResultFile}${useExt}")
          arrMessage+=("  mapeado para")
          arrMessage+=("> ${tmpContainerDir}${tmpResultFile}${useExt}")

          mse_inter_showAlert "s" "${tmpMsgTitle}" "arrMessage"
        fi
      fi
    fi
  fi
}





#
# Executa um arquivo de patch no banco de dados.
#
# Informe o parametro 'file' para indicar qual arquivo de patch deverá ser
# executado.
# O diretório padrão para os arquivos de patch é o /etc/database/patch/
# portanto você precisa informar apenas o caminho relativo até o mesmo.
#
dataBaseExecutePatch() {
  local tmpMsgTitle=""

  if [ -z ${file+x} ]; then
    tmpMsgTitle="ERRO"
    declare -a arrMessage=()
    arrMessage+=("Você precisa indicar o parametro \"file\" para executar esta ação.")
    arrMessage+=("ex: make db-patch file='target-patch.sql'")

    mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
  else
    local tmpContainerPatch="/etc/database/patch/${file}";
    local tmpHostPatch="${MK_LOCAL_CONTAINER_ROOT_DIR}${tmpContainerPatch}";

    if [ ! -f "${tmpHostPatch}" ]; then
      tmpMsgTitle="ERRO"
      declare -a arrMessage=()
      arrMessage+=("O arquivo de patch indicado não existe:")
      arrMessage+=("> ${tmpHostPatch}")
      arrMessage+=("> mapeado para")
      arrMessage+=("> ${tmpContainerPatch}")

      mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
    else

      if [ ! -s "${tmpHostPatch}" ]; then
        tmpMsgTitle="ERRO"
        declare -a arrMessage=()
        arrMessage+=("O arquivo de patch está vazio.")
        arrMessage+=("Execução abortada")

        mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
      else
        tmpMsgTitle="Iniciando a execução do patch"
        declare -a arrMessage=()
        arrMessage+=("> ${tmpContainerPatch}")

        mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"



        local tmpDump=$(dataBaseDumpCommand "patch" "1")

        tmpSQL="SOURCE ${tmpContainerPatch};"
        tmpResult=$(dataBaseExecuteInstruction "${tmpDump}" "${tmpSQL}")
        if [ "${tmpResult}" == "" ]; then
          tmpMsgTitle="Execução do patch realizada com sucesso"
          declare -a arrMessage=()

          mse_inter_showAlert "s" "${tmpMsgTitle}" "arrMessage"
        else
          tmpMsgTitle="Falha ao executar o patch"
          declare -a arrMessage=()

          mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
          echo "${tmpResult}"
        fi
      fi
    fi
  fi
}










#
# Permite evocar uma função deste script a partir de um argumento passado ao chamá-lo.
$*
