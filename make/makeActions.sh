#!/bin/bash -eu

MK_ROOT_PATH=$( cd -- "$( dirname $(dirname -- "${BASH_SOURCE[0]}") )" &> /dev/null && pwd );
MK_WEB_SERVER_ENV_FILE="${MK_ROOT_PATH}/container-config/apache-php-7.4/etc/.env"
source "${MK_ROOT_PATH}/make/mseStandAlone/loadScripts.sh";



CONTAINER_WEBSERVER_NAME="dev-php-webserver"
CONTAINER_DBSERVER_NAME="dev-php-dbserver"
GIT_LOG_LENGTH="10"





#
# Reinicia o arquivo de variáveis de ambiente a partir do modelo
# padrão.
# Todos os valores definidos serão resetados.
restartEnvConfig() {
  setIMessage "" 1;
  setIMessage "${LPURPLE}ATENÇÃO${NONE}";
  setIMessage "TODAS as configurações atualmente definidas em ${LPURPLE}.env${NONE} serão perdidas.";
  setIMessage "Você confirma esta ação?";
  promptUser;

  if [ "$MSE_GB_PROMPT_RESULT" != "1" ]; then
    setIMessage "" 1;
    setIMessage "Ação abortada pelo usuário.";
    alertUser;
  else

    MSE_GB_PROMPT_LIST_OPTIONS_LABELS=("utest" "lcl" "dev" "hmg" "qa" "prd");
    MSE_GB_PROMPT_LIST_OPTIONS_VALUES=("UTEST" "LCL" "DEV" "HMG" "QA" "PRD");

    setIMessage "" 1;
    setIMessage "Informe o tipo de ambiente no qual o projeto está sendo configurado.";
    promptUser "list";


    if [ "$MSE_GB_PROMPT_RESULT" != "0" ]; then
      local userName=$(whoami);
      local userHash="#";
      local userUID=$(id -u ${userName});
      local userGID=$(id -g ${userName});

      cp "${MK_ROOT_PATH}/make/.env" "${MK_WEB_SERVER_ENV_FILE}";

      mcfSetVariable "ENVIRONMENT" "${MSE_GB_PROMPT_RESULT}" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "APACHE_RUN_USER" "${userHash}${userUID}" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "APACHE_RUN_GROUP" "${userHash}${userGID}" "${MK_WEB_SERVER_ENV_FILE}";

      #
      # Configura variáveis de acesso ao banco de dados
      # usando os valores comuns para ambientes 'dev'
      mcfSetVariable "DATABASE_TYPE" "mysql" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "DATABASE_HOST" "db-server" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "DATABASE_PORT" "3306" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "DATABASE_NAME" "webapp" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "DATABASE_USER" "root" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "DATABASE_PASS" "root" "${MK_WEB_SERVER_ENV_FILE}";
      mcfSetVariable "DATABASE_CA_PATH" "" "${MK_WEB_SERVER_ENV_FILE}";
    fi;
  fi;
}





#
# Entra no bash do container principal do projeto
#
# Informe um parametro 'cont' para indicar em qual container deseja entrar.
#   Valores aceitos são: web|db
#   Se nenhum valor for informado, entrará no 'web'
openContainerBash() {
  if [ -z ${cont+x} ]; then
    cont="web";
  fi;

  if [ "${cont}" == "web" ]; then
    docker exec -it ${CONTAINER_WEBSERVER_NAME} /bin/bash;
  elif [ "${cont}" == "db" ]; then
    docker exec -it ${CONTAINER_DBSERVER_NAME} /bin/bash;
  else
    echo "Parametro cont='${cont}' inválido; use 'web' ou 'db'."
  fi;
}





#
# Retorna o IP da rede usado pelos containers
getContainersIP() {
  if [ "${CONTAINER_WEBSERVER_NAME}" != "" ]; then
    printf "Web-Server : ";
    docker inspect ${CONTAINER_WEBSERVER_NAME} | grep -oP -m1 '(?<="IPAddress": ")[a-f0-9.:]+';
  fi;
  if [ "${CONTAINER_DBSERVER_NAME}" != "" ]; then
    printf "DB-Server  : ";
    docker inspect ${CONTAINER_DBSERVER_NAME} | grep -oP -m1 '(?<="IPAddress": ")[a-f0-9.:]+';
  fi;
}





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
performUnitTests() {
  if [ -z ${file+x} ]; then
    docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --configuration "tests/phpunit.xml" --colors=always --verbose --debug;
  else
    if [ -z ${method+x} ]; then
      docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit "tests/src/${file}" --colors=always --verbose --debug;
    else
      docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --filter "::${method}\$" "tests/src/${file}" --colors=always --verbose --debug;
    fi;
  fi;
}





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
performUnitCoverTests() {
  if [ -z ${file+x} ] && [ -z ${output+x} ]; then
    docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --configuration "tests/phpunit.xml" --colors=always --coverage-text;
  else
    if [ -z ${file+x} ]; then
      if [ -z ${output+x} ] || [ ${output} == "text" ]; then
        docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --configuration "tests/phpunit.xml" --colors=always --coverage-text;
      elif [ "${output}" == "html" ]; then
        docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit --configuration "tests/phpunit.xml" --colors=always --coverage-html "tests/cover";
      else
        echo "Parametro 'output' inválido. Use apenas 'text' ou 'html'.";
      fi;
    else
      if [ -z ${output+x} ] || [ ${output} == "text" ]; then
        docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit "tests/src/${file}" --whitelist="tests/src/${file}" --colors=always --coverage-text;
      elif [ "${output}" == "html" ]; then
        docker exec -it ${CONTAINER_WEBSERVER_NAME} vendor/bin/phpunit "tests/src/${file}" --whitelist="tests/src/${file}" --coverage-html "tests/cover-file";
      else
        echo "Parametro 'output' inválido. Use apenas 'text' ou 'html'.";
      fi;
    fi;
  fi;
}





#
# Mostra log resumido do git
# Use o parametro 'len' para indicar a quantidade de itens a serem mostrados.
gitShowLog() {
  if [ -z ${len+x} ]; then
    len="${GIT_LOG_LENGTH}";
  fi;

  tmpLogData=$(git log -${len} --pretty='format:%ad | %s' --reverse --date=format:'%d %B | %H:%M');
  column -e -t -s "|" <<< "${tmpLogData}"
}




#
# Gerencia as ações de controle de tags do git para o projeto.
gitTagManagement() {
  GIT_ACTIVE_BRANCH=$(git branch --show-current);



  #
  # Identifica se a branch atual refere-se ao 'main'
  if [ "${GIT_ACTIVE_BRANCH}" != "main" ]; then
    setIMessage "" 1;
    setIMessage "Alterne para a branch principal ${PURPLE}main${NONE}.";
    setIMessage ":: git checkout main";
    alertUser;
  else
    #
    # Identifica se existem alterações não comitadas
    if [ $(git status --porcelain | wc -l) -gt "0" ] && [ 1 == 2 ]; then
      setIMessage "" 1;
      setIMessage "Foram encontradas alterações não comitadas.";
      setIMessage "Efetue o commit das alterações para prosseguir.";
      setIMessage ":: git add .";
      setIMessage ":: git commit -m \"message\"";
      setIMessage ":: git push origin main";
      alertUser;
    else

      GIT_ATUAL_TAG="0.0.0-alpha";
      if [ "$(git tag)" != "" ]; then
        GIT_ATUAL_TAG=$(git describe --abbrev=0 --tags);
      fi

      TAG_SPLIT=(${GIT_ATUAL_TAG//-/ });
      TAG_RAW_VERSION=(${TAG_SPLIT[0]//[!0-9.]/ });


      VERSION_SPLIT=(${TAG_RAW_VERSION//\./ });

      PROJECT_VERSION_MAJOR=${VERSION_SPLIT[0]};
      PROJECT_VERSION_MINOR=${VERSION_SPLIT[1]};
      PROJECT_VERSION_PATCH=${VERSION_SPLIT[2]};
      PROJECT_VERSION_STABILITY=("-"${TAG_SPLIT[1]});

      PROJECT_ATUAL_VERSION="${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}";

      ISOK=1;

      if [ "$1" == "remark" ]; then
        git tag -d "${GIT_ATUAL_TAG}";
        git push --delete origin "${GIT_ATUAL_TAG}";
        git tag "${GIT_ATUAL_TAG}";
        git push --tags origin;
      else
        if [ "$1" == "version" ]; then
          if [ "$2" == "patch" ]; then
            PROJECT_VERSION_PATCH=$((PROJECT_VERSION_PATCH+1));
          else
            if [ "$2" == "minor" ]; then
              PROJECT_VERSION_MINOR=$((PROJECT_VERSION_MINOR+1));
              PROJECT_VERSION_PATCH=0;
            else
              if [ "$2" == "major" ]; then
                PROJECT_VERSION_MAJOR=$((PROJECT_VERSION_MAJOR+1));
                PROJECT_VERSION_MINOR=0;
                PROJECT_VERSION_PATCH=0;
              else
                ISOK=0;
              fi
            fi
          fi
        elif [ "$1" == "stability" ]; then
          if [ "$2" == "alpha" ] || [ "$2" == "beta" ] || [ "$2" == "cr" ] || [ "$2" == "r" ]; then
            if [ "$2" == "r" ]; then
              PROJECT_VERSION_STABILITY="";
            else
              PROJECT_VERSION_STABILITY="-$2";
            fi
          else
            ISOK=0;
          fi
        else
          ISOK=0;
        fi



        if [ "${ISOK}" == "0" ]; then
          setIMessage "" 1;
          setIMessage "Parametros incorretos: [ ${1}; ${2} ].";
          setIMessage "Nenhuma ação foi realizada.";
          alertUser;
        else
          USE_VERSION="${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}";
          NEW_VERSION="v${USE_VERSION}${PROJECT_VERSION_STABILITY}";

          #
          # Verifica se é necessário atualizar o versionamento da documentação exportada
          CONF="docs/conf.py";
          if [ -f "${CONF}" ]; then
            OLD_SHORT_VERSION="project_short_version = '.*'";
            NEW_SHORT_VERSION="project_short_version = '${USE_VERSION}'";
            sed -i "s/${OLD_SHORT_VERSION}/${NEW_SHORT_VERSION}/" "${CONF}";

            OLD_FULL_VERSION="project_full_version = '.*'";
            NEW_FULL_VERSION="project_full_version = '${NEW_VERSION}'";
            sed -i "s/${OLD_FULL_VERSION}/${NEW_FULL_VERSION}/" "${CONF}";

            if [ $(git status --porcelain | wc -l) -gt "0" ]; then
              git add .;
              git commit -m "Atualizado para a versão ${NEW_VERSION}";
              git push origin main;
            fi
          fi

          git tag ${NEW_VERSION};
          git push --tags origin;
        fi
      fi;
    fi;
  fi;
}





#
# Permite evocar uma função deste script a partir de um argumento passado ao chamá-lo.
$*
