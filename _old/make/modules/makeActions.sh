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
# Reinicia o arquivo de variáveis de ambiente a partir do modelo padrão.
# Todos os valores definidos serão resetados.
restartEnvConfig() {
  find "${MK_ROOT_PATH}/make/" -name "*.sh" -exec chmod u+x {} \;


  setIMessage "" 1;
  setIMessage "${LPURPLE}ATENÇÃO${NONE}";
  setIMessage "TODAS as configurações atualmente definidas em seu ${LPURPLE}.env${NONE} serão perdidas.";
  setIMessage "Você confirma esta ação?";
  promptUser;

  if [ "$MSE_GB_PROMPT_RESULT" != "1" ]; then
    setIMessage "" 1;
    setIMessage "Ação abortada pelo usuário.";
    alertUser;
  else

    local userName=$(whoami);

    setIMessage "" 1;
    setIMessage "Deseja associar TODOS arquivos e diretórios do projeto";
    setIMessage "com o usuário ${LPURPLE}${userName}${NONE}?";
    promptUser;

    if [ "$MSE_GB_PROMPT_RESULT" == "1" ]; then
      sudo chown -R "${userName}":"${userName}" "${MK_ROOT_PATH}"
    fi;

    MSE_GB_PROMPT_LIST_OPTIONS_LABELS=("utest" "lcl" "dev" "hmg" "qa" "prd");
    MSE_GB_PROMPT_LIST_OPTIONS_VALUES=("UTEST" "LCL" "DEV" "HMG" "QA" "PRD");

    setIMessage "" 1;
    setIMessage "Informe o tipo de ambiente no qual o projeto está sendo configurado.";
    promptUser "list";

    if [ "$MSE_GB_PROMPT_RESULT" != "" ]; then
      local userHash="#";
      local userUID=$(id -u ${userName});
      local userGID=$(id -g ${userName});

      cp "${MK_ROOT_PATH}/make/mgmt/.env" "${MK_WEB_SERVER_ENV_FILE}";

      mcfSetVariable "ENVIRONMENT" "${MSE_GB_PROMPT_RESULT}" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "APACHE_RUN_USER" "${userHash}${userUID}" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "APACHE_RUN_GROUP" "${userHash}${userGID}" "${MK_WEB_SERVER_ENV_FILE}";

      setIMessage "" 1;
      setIMessage "Deseja configurar o acesso ao banco de dados?";
      promptUser;

      if [ "$MSE_GB_PROMPT_RESULT" == "1" ]; then
        local DATABASE_TYPE="mysql";
        local DATABASE_HOST="db-server";
        local DATABASE_PORT="3306";
        local DATABASE_NAME="webapp";
        local DATABASE_USER="root";
        local DATABASE_PASS="root";
        local DATABASE_CA_PATH="";

        setIMessage "" 1;
        setIMessage "Deseja usar os valores padrões?";
        setIMessage "DATABASE_TYPE: ${LPURPLE}${DATABASE_TYPE}${NONE}";
        setIMessage "DATABASE_HOST: ${LPURPLE}${DATABASE_HOST}${NONE}";
        setIMessage "DATABASE_PORT: ${LPURPLE}${DATABASE_PORT}${NONE}";
        setIMessage "DATABASE_NAME: ${LPURPLE}${DATABASE_NAME}${NONE}";
        setIMessage "DATABASE_USER: ${LPURPLE}${DATABASE_USER}${NONE}";
        setIMessage "DATABASE_PASS: ${LPURPLE}${DATABASE_PASS}${NONE}";
        promptUser;

        if [ "$MSE_GB_PROMPT_RESULT" == "1" ]; then
          #
          # Configura variáveis de acesso ao banco de dados
          # usando os valores padrões
          mcfSetVariable "DATABASE_TYPE" "${DATABASE_TYPE}" "${MK_WEB_SERVER_ENV_FILE}";
          mcfSetVariable "DATABASE_HOST" "${DATABASE_HOST}" "${MK_WEB_SERVER_ENV_FILE}";
          mcfSetVariable "DATABASE_PORT" "${DATABASE_PORT}" "${MK_WEB_SERVER_ENV_FILE}";
          mcfSetVariable "DATABASE_NAME" "${DATABASE_NAME}" "${MK_WEB_SERVER_ENV_FILE}";
          mcfSetVariable "DATABASE_USER" "${DATABASE_USER}" "${MK_WEB_SERVER_ENV_FILE}";
          mcfSetVariable "DATABASE_PASS" "${DATABASE_PASS}" "${MK_WEB_SERVER_ENV_FILE}";
          mcfSetVariable "DATABASE_CA_PATH" "${DATABASE_CA_PATH}" "${MK_WEB_SERVER_ENV_FILE}";
        else
          configEnvDataBaseServer;
        fi;
      fi;
    fi;
  fi;
}





#
# Efetua a configuração do banco de dados.
configEnvDataBaseServer() {
  setIMessage "" 1;
  setIMessage "${LPURPLE}Iniciando configuração personalizada do Banco de Dados${NONE}";
  setIMessage "Você confirma esta ação?";
  promptUser;

  if [ "$MSE_GB_PROMPT_RESULT" != "1" ]; then
    setIMessage "" 1;
    setIMessage "Ação abortada pelo usuário.";
    alertUser;
  else

    local ISOK="1";
    local EXPECTED_VAR_NAME=(
      "DATABASE_TYPE" "DATABASE_HOST" "DATABASE_PORT"
      "DATABASE_NAME" "DATABASE_USER" "DATABASE_PASS"
      "DATABASE_CA_PATH"
    );

    local PROMPT_MESSAGE="Informe o ${PURPLE}[[VAR_LABEL]]${NONE}";
    local PROMPT_ERROR_REQUIRED="${PURPLE}[[VAR_LABEL]]${NONE} é obrigatório. Ação abortada.";
    local PROMPT_REQUEST_VAR_LABEL=(
      "TYPE" "HOST" "PORT" "DATABASE_NAME" "USER" "PASSWORD" "CA_PATH"
    );
    local PROMPT_REQUEST_VAR_REQUIRED=(
      "1" "1" "1" "1" "1" "1" "0"
    );
    local PROMPT_RESPONSE_VALUES=();


    local index;
    for index in "${!PROMPT_REQUEST_VAR_LABEL[@]}"; do

      if [ "${ISOK}" == "1" ]; then
        local pLabel="${PROMPT_REQUEST_VAR_LABEL[$index]}";
        local pRequired="${PROMPT_REQUEST_VAR_REQUIRED[$index]}";
        local pMessage=$(sed 's/\[\[VAR_LABEL\]\]/'"${pLabel}"'/' <<< "$PROMPT_MESSAGE");

        local pType="value";
        if [ "$pLabel" == "TYPE" ]; then
          pType="list";
          MSE_GB_PROMPT_LIST_OPTIONS_LABELS=("mysql" "postgresql");
          MSE_GB_PROMPT_LIST_OPTIONS_VALUES=("mysql" "postgresql");
        fi

        if [ "${pRequired}" == "1" ]; then
          pMessage=$(sed 's/\[\[VAR_LABEL\]\]/'"${pLabel} [obrigatório]"'/' <<< "$PROMPT_MESSAGE");
        fi;


        setIMessage "" 1;
        setIMessage "$pMessage";
        promptUser "$pType";

        if [ "${MSE_GB_PROMPT_RESULT}" == "" ] && [ "$pRequired" == "1" ]; then
          pMessage=$(sed 's/\[\[VAR_LABEL\]\]/'"${pLabel}"'/' <<< "$PROMPT_ERROR_REQUIRED");

          ISOK="0";
          setIMessage "" 1;
          setIMessage "$pMessage";
          alertUser;
        else
          PROMPT_RESPONSE_VALUES+=("${MSE_GB_PROMPT_RESULT}");
        fi;
      fi;
    done;


    if [ "${ISOK}" == "1" ]; then
      local key;
      local value;
      for index in "${!PROMPT_RESPONSE_VALUES[@]}"; do
        key="${EXPECTED_VAR_NAME[$index]}";
        value="${PROMPT_RESPONSE_VALUES[$index]}";

        mcfSetVariable "$key" "$value" "${MK_WEB_SERVER_ENV_FILE}";
      done;
    fi;
  fi;
}










#
# Permite evocar uma função deste script a partir de um argumento passado ao chamá-lo.
$*
