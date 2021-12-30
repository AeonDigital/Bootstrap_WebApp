#!/bin/bash -eu

#
# Carrega dependencias
source "${PWD}/make/modules/makeEnvironment.sh"
source "${MK_ROOT_PATH}/make/modules/makeTools.sh"
source "${MK_ROOT_PATH}/make/mseStandAlone/loadScripts.sh";

#
# Se quiser,
# defina um arquivo em 'make/makeEnvironment.sh' e use-o para
# suas configurações personalizadas.
if [ -f "${MK_MY_ENVIRONMENT_FILE}" ]; then
  source "${MK_MY_ENVIRONMENT_FILE}"
fi;










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
  local DATABASE_TYPE=$(mcfPrintVariableValue "DATABASE_TYPE" "${MK_WEB_SERVER_ENV_FILE}");
  local DATABASE_HOST=$(mcfPrintVariableValue "DATABASE_HOST" "${MK_WEB_SERVER_ENV_FILE}");
  local DATABASE_PORT=$(mcfPrintVariableValue "DATABASE_PORT" "${MK_WEB_SERVER_ENV_FILE}");
  local DATABASE_NAME=$(mcfPrintVariableValue "DATABASE_NAME" "${MK_WEB_SERVER_ENV_FILE}");
  local DATABASE_USER=$(mcfPrintVariableValue "DATABASE_USER" "${MK_WEB_SERVER_ENV_FILE}");
  local DATABASE_PASS=$(mcfPrintVariableValue "DATABASE_PASS" "${MK_WEB_SERVER_ENV_FILE}");

  local tmpDocker=$(echo "docker exec -it ${CONTAINER_WEBSERVER_NAME}");
  local tmpConnection=$(echo "mysql --host=${DATABASE_HOST} --port=${DATABASE_PORT} --user=${DATABASE_USER} --password=${DATABASE_PASS}");

  if [ "$1" == "" ]; then
    tmpConnection=$(echo "${tmpConnection} --execute=");
  elif [ "$1" == "1" ]; then
    tmpConnection=$(echo "${tmpConnection} --database=${DATABASE_NAME} --execute=");
  else
    tmpConnection=$(echo "${tmpConnection} --database=${1} --execute=");
  fi;

  local tmpExecuteSQL=$(echo "${tmpDocker} ${tmpConnection}");
  echo "${tmpExecuteSQL}";
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
  local DATABASE_TYPE=$(mcfPrintVariableValue "DATABASE_TYPE" "${MK_WEB_SERVER_ENV_FILE}")
  local DATABASE_HOST=$(mcfPrintVariableValue "DATABASE_HOST" "${MK_WEB_SERVER_ENV_FILE}")
  local DATABASE_PORT=$(mcfPrintVariableValue "DATABASE_PORT" "${MK_WEB_SERVER_ENV_FILE}")
  local DATABASE_NAME=$(mcfPrintVariableValue "DATABASE_NAME" "${MK_WEB_SERVER_ENV_FILE}")
  local DATABASE_USER=$(mcfPrintVariableValue "DATABASE_USER" "${MK_WEB_SERVER_ENV_FILE}")
  local DATABASE_PASS=$(mcfPrintVariableValue "DATABASE_PASS" "${MK_WEB_SERVER_ENV_FILE}")

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
    setIMessage "Argumento ${LPURPLE}1${NONE} inválido.";
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
  local tmpResult=$(${1}"$2");
  echo "${tmpResult}";
}





#
# Verifica se há comunicação com o servidor do banco de dados.
dataBaseCheckPing() {
  local DATABASE_HOST=$(mcfPrintVariableValue "DATABASE_HOST" "${MK_WEB_SERVER_ENV_FILE}");
  local pingResult=$(checkServerWithPing "${DATABASE_HOST}" "1" "1");

  if [ "${pingResult}" == "" ]; then
    errorAlert ${FUNCNAME[0]} "Falha do 'ping"
  else
    local pingProccess=$(proccessPingStringResult "${pingResult}");
    local arrResult=(${pingProccess//-/ });

    if [ ${#arrResult[@]}  != 5 ]; then
      errorAlert ${FUNCNAME[0]} "Falha do 'ping"
    else
      if [ "${arrResult[3]}" == "100" ]; then
        setIMessage "${LPURPLE}Servidor encontrado${NONE}.";
        alertUser;
      else
        setIMessage "${LPURPLE}Servidor não encontrado${NONE}.";
        alertUser;

        setIMessage "" 1;
        setIMessage "Deseja retestar?";
        promptUser;

        if [ "$MSE_GB_PROMPT_RESULT" == "1" ]; then
          dataBaseCheckPing
        fi;
      fi;
    fi;
  fi;
}



#
# Verifica a qualidade da rede com o banco de dados efetuando um teste
# de 'ping' com 10 tentativas.
dataBaseCheckNetwork() {
  setIMessage "${LPURPLE}Iniciando teste${NONE} (ping x 10)" "1";
  alertUser;

  local DATABASE_HOST=$(mcfPrintVariableValue "DATABASE_HOST" "${MK_WEB_SERVER_ENV_FILE}");
  local pingResult=$(checkServerWithPing "${DATABASE_HOST}" "10" "1");

  if [ "${pingResult}" == "" ]; then
    errorAlert ${FUNCNAME[0]} "Falha do 'ping"
  else
    local pingProccess=$(proccessPingStringResult "${pingResult}");
    local arrResult=(${pingProccess//-/ });

    if [ ${#arrResult[@]}  != 5 ]; then
      errorAlert ${FUNCNAME[0]} "Falha do 'ping"
    else
      setIMessage "${LPURPLE}Resultados:${NONE}" "1";
      setIMessage "Tentativas: ${LPURPLE}${arrResult[0]}${NONE} pacotes enviados.";
      setIMessage "            ${LPURPLE}${arrResult[1]}${NONE} pacotes recebidos.";
      setIMessage "            ${LPURPLE}${arrResult[2]}${NONE} pacotes perdidos.";
      setIMessage "";
      setIMessage "Sucesso: ${LPURPLE}${arrResult[3]}%%${NONE}";
      setIMessage "Falha  : ${LPURPLE}${arrResult[4]}%%${NONE}";
      alertUser;
    fi;
  fi;
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
  local tmpConn=$(dataBaseExecuteCommand "");
  local tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" ";");

  if [ "${tmpResult}" != "" ]; then
    setIMessage "${LPURPLE}Credenciais não aceitas${NONE}" "1";
    setIMessage "${tmpResult}";
    alertUser;
  else
    if [ "$1" != "1" ]; then
      echo "1";
    else
      setIMessage "${LPURPLE}Credenciais aceitas${NONE}" "1";
      alertUser;
    fi;
  fi;
}





#
# Expõe para o usuário o valor definido para as configuração de variáveis
# do tipo 'character-set'
dataBaseShowCharacterSet() {
  local tmpConn=$(dataBaseExecuteCommand "");
  local tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "SHOW VARIABLES LIKE '%character_set%';");

  if [ "${tmpResult}" == "" ]; then
    setIMessage "" 1;
    setIMessage "${LPURPLE}Falha na execução:${NONE}";
    alertUser;
  else
    setIMessage "" 1;
    setIMessage "${LPURPLE}Configurações 'character_set'${NONE}";
    alertUser;

    echo "${tmpResult}";
  fi;
}



#
# Expõe para o usuário o valor definido para as configuração de variáveis
# do tipo 'collation'
dataBaseShowCollation() {
  local tmpConn=$(dataBaseExecuteCommand "");
  local tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "SHOW VARIABLES LIKE '%collation%';");

  if [ "${tmpResult}" == "" ]; then
    setIMessage "" 1;
    setIMessage "${LPURPLE}Falha na execução:${NONE}";
    alertUser;
  else
    setIMessage "" 1;
    setIMessage "${LPURPLE}Configurações 'collation'${NONE}";
    alertUser;

    echo "${tmpResult}";
  fi;
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
  local tmpConn=$(dataBaseExecuteCommand "");
  local tmpSQL="";
  local tmpResult="";
  local ISOK="1"

  tmpResult=$(dataBaseCheckCredentials "0");
  if [ "${tmpResult}" != "1" ]; then
    echo "${tmpResult}"
  else
    local DATABASE_NAME=$(mcfPrintVariableValue "DATABASE_NAME" "${MK_WEB_SERVER_ENV_FILE}")

    #
    # Identifica se o banco de dados alvo existe
    tmpSQL="SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME='${DATABASE_NAME}';";
    tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "${tmpSQL}");
    if [ "${tmpResult}" != "" ]; then

      setIMessage "" 1;
      setIMessage "${LPURPLE}ATENÇÃO${NONE}";
      setIMessage "O atual banco de dados ${LPURPLE}${DATABASE_NAME}${NONE} será totalmente perdido.";
      setIMessage "Você confirma esta ação?";
      promptUser;

      if [ "$MSE_GB_PROMPT_RESULT" == "0" ]; then
        ISOK="0"

        setIMessage "" 1;
        setIMessage "Ação abortada pelo usuário";
        alertUser;
      else
        tmpSQL="DROP DATABASE ${DATABASE_NAME};";
        tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "${tmpSQL}");
        if [ "${tmpResult}" != "" ]; then
          ISOK="0"

          setIMessage "" 1;
          setIMessage "${LPURPLE}Falha de execução:${NONE}";
          setIMessage "${tmpResult}";
          alertUser;
        fi;
      fi;
    fi;


    if [ "$ISOK" == "1" ]; then
      tmpSQL="CREATE DATABASE ${DATABASE_NAME};";
      tmpResult=$(dataBaseExecuteInstruction "${tmpConn}" "${tmpSQL}");
      if [ "${tmpResult}" != "" ]; then
        setIMessage "" 1;
        setIMessage "${LPURPLE}Falha de execução:${NONE}";
        setIMessage "${tmpResult}";
        alertUser;
      else
        setIMessage "" 1;
        setIMessage "Banco de dados ${LPURPLE}${DATABASE_NAME}${NONE} criado com sucesso.";
        alertUser;

        if [ "$1" == "1" ]; then
          if [ ! -f "${MK_LOCAL_BOOTSTRAP_FILE}" ]; then
            setIMessage "" 1;
            setIMessage "O arquivo ${LPURPLE}bootstrap.sql${NONE} não foi encontrado.";
            alertUser;
          else
            setIMessage "" 1;
            setIMessage "Iniciando ${LPURPLE}bootstrap${NONE} do banco de dados.";
            setIMessage "Esta ação pode levar alguns minutos.";
            alertUser;

            if [ ! -s "${MK_LOCAL_BOOTSTRAP_FILE}" ]; then
              setIMessage "" 1;
              setIMessage "O arquivo de instruções ${LPURPLE}bootstrap${NONE} está vazio.";
              setIMessage "Execução abortada";
              alertUser;
            else
              local tmpDump=$(dataBaseDumpCommand "import" "1");

              tmpSQL="SOURCE ${MK_WEB_SERVER_DATABASE_BOOTSTRAP_FILE};";
              tmpResult=$(dataBaseExecuteInstruction "${tmpDump}" "${tmpSQL}");
              if [ "${tmpResult}" == "" ]; then
                setIMessage "" 1;
                setIMessage "${LPURPLE}bootstrap${NONE} instalado com sucesso.";
                alertUser;
              else
                setIMessage "" 1;
                setIMessage "Falha ao instalar o ${LPURPLE}bootstrap${NONE}.";
                alertUser;

                echo "${tmpResult}";
              fi;
            fi;
          fi;
        fi;
      fi;
    fi;
  fi;
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

  local tmpYear=$(date +"%Y");
  local tmpMonth=$(date +"%m");

  local tmpContainerDir="/etc/database/backup/${tmpYear}/${tmpMonth}/";
  local tmpHostDir="${MK_LOCAL_CONTAINER_ROOT_DIR}${tmpContainerDir}";

  local DATABASE_NAME=$(mcfPrintVariableValue "DATABASE_NAME" "${MK_WEB_SERVER_ENV_FILE}");

  setIMessage "" 1;
  setIMessage "${LPURPLE}ATENÇÃO${NONE}";
  setIMessage "Uma cópia da versão atual do banco de dados ${LPURPLE}${DATABASE_NAME}${NONE} será criada.";
  if [ "$1" == "1" ]; then
    setIMessage "A versão atual do arquivo ${LPURPLE}bootstrap.sql${NONE} será totalmente substituída.";
  fi;
  setIMessage "Você confirma esta ação?";
  promptUser;

  if [ "$MSE_GB_PROMPT_RESULT" == "0" ]; then
    setIMessage "" 1;
    setIMessage "Ação abortada pelo usuário";
    alertUser;
  else
    mkdir -p "${tmpHostDir}";
    if [ ! -d "${tmpHostDir}" ]; then
      setIMessage "" 1;
      setIMessage "Não foi possível criar o diretório alvo";
      setIMessage "${LPURPLE}${tmpHostDir}${NONE}";
      setIMessage "  mapeado para ";
      setIMessage "${LPURPLE}${tmpContainerDir}${NONE}";
      setIMessage "";
      setIMessage "Execução abortada";
      alertUser;
    else
      local tmpDump=$(dataBaseDumpCommand "export" "1");

      local tmpResultFile=$(date +'%Y-%m-%d-%H-%M-%S');
      tmpResultFile=$(echo "${tmpResultFile}-${DATABASE_NAME}");

      setIMessage "" 1;
      setIMessage "Iniciando a exportação do banco de dados.";
      setIMessage "Esta ação pode levar alguns minutos.";
      setIMessage "";
      alertUser;

      tmpResult=$(dataBaseExecuteInstruction "${tmpDump}" "${tmpContainerDir}${tmpResultFile}.sql");
      if [ "${tmpResult}" != "" ]; then
        setIMessage "" 1;
        setIMessage "Falha ao exportar o banco de dados";
        alertUser;

        echo "${tmpResult}";
      else

        if [ ! -f "${tmpHostDir}${tmpResultFile}.sql" ]; then
          setIMessage "" 1;
          setIMessage "Uma falha inesperada ocorreu e não foi possível criar o arquivo de DUMP em";
          setIMessage "${LPURPLE}${tmpHostDir}${tmpResultFile}.sql${NONE}";
          setIMessage "  mapeado para ";
          setIMessage "${LPURPLE}${tmpContainerDir}${tmpResultFile}.sql${NONE}";
          setIMessage "";
          setIMessage "Execução abortada";
          alertUser;
        else
          echo "zip ${tmpContainerDir}${tmpResultFile}.zip ${tmpContainerDir}${tmpResultFile}.sql";
          docker exec -it ${CONTAINER_WEBSERVER_NAME} zip -j "${tmpContainerDir}${tmpResultFile}.zip" "${tmpContainerDir}${tmpResultFile}.sql";

          if [ "$1" == "1" ]; then
            docker exec -it ${CONTAINER_WEBSERVER_NAME} cp "${tmpContainerDir}${tmpResultFile}.sql" "/etc/database/bootstrap.sql";
          fi;

          if [ -f "${tmpHostDir}${tmpResultFile}.zip" ]; then
            docker exec -it ${CONTAINER_WEBSERVER_NAME} rm "${tmpContainerDir}${tmpResultFile}.sql";

            setIMessage "" 1;
            setIMessage "Base de dados exportada com sucesso";
            setIMessage "Uma versão zipada do mesmo foi salva em";
            setIMessage "${LPURPLE}${tmpHostDir}${tmpResultFile}.zip${NONE}";
            setIMessage "  mapeado para ";
            setIMessage "${LPURPLE}${tmpContainerDir}${tmpResultFile}.zip${NONE}";
            alertUser;
          else
            setIMessage "" 1;
            setIMessage "Base de dados exportada com sucesso";
            setIMessage "No entanto, não foi possível zipar o arquivo final";
            setIMessage "${LPURPLE}${tmpHostDir}${tmpResultFile}.sql${NONE}";
            setIMessage "  mapeado para ";
            setIMessage "${LPURPLE}${tmpContainerDir}${tmpResultFile}.sql${NONE}";
            alertUser;
          fi;
        fi;
      fi;
    fi;
  fi;
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
  if [ -z ${file+x} ]; then
    setIMessage "" 1;
    setIMessage "Você precisa indicar o parametro ${LPURPLE}file${NONE} para executar esta ação.";
    setIMessage "ex: make db-patch file='/target-patch.sql'";
    setIMessage ""
    alertUser;
  else
    local tmpContainerPatch="/etc/database/patch/${file}";
    local tmpHostPatch="${MK_LOCAL_CONTAINER_ROOT_DIR}${tmpContainerPatch}";

    if [ ! -f "${tmpHostPatch}" ]; then
      setIMessage "" 1;
      setIMessage "O arquivo de patch indicado não existe:";
      setIMessage "${LPURPLE}${tmpHostPatch}${NONE}";
      setIMessage "  mapeado para ";
      setIMessage "${LPURPLE}${tmpContainerPatch}${NONE}";
      alertUser;
    else

      if [ ! -s "${tmpHostPatch}" ]; then
        setIMessage "" 1;
        setIMessage "O arquivo de patch está vazio.";
        setIMessage "Execução abortada";
        alertUser;
      else

        setIMessage "" 1;
        setIMessage "Iniciando a execução do patch.";
        setIMessage "${LPURPLE}${tmpContainerPatch}${NONE}";
        alertUser;

        local tmpDump=$(dataBaseDumpCommand "patch" "1");

        tmpSQL="SOURCE ${tmpContainerPatch};";
        tmpResult=$(dataBaseExecuteInstruction "${tmpDump}" "${tmpSQL}");
        if [ "${tmpResult}" == "" ]; then
          setIMessage "" 1;
          setIMessage "Execução do patch realizada com sucesso";
          alertUser;
        else
          setIMessage "" 1;
          setIMessage "Falha ao executar o patch.";
          alertUser;

          echo "${tmpResult}";
        fi;
      fi;

    fi;
  fi;
}










#
# Permite evocar uma função deste script a partir de um argumento passado ao chamá-lo.
$*
