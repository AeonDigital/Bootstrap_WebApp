#!/bin/bash -eu

#
# Carrega dependencias
source "${PWD}/make/makeEnvironment.sh"
source "${MK_ROOT_PATH}/make/mseStandAlone/loadScripts.sh";

#
# Se quiser,
# defina um arquivo 'make/myMakeEnvironment.sh' e defina nele suas
# personalizações para seu local de trabalho.
if [ -f "${MK_MY_ENVIRONMENT_FILE}" ]; then
  source "${MK_MY_ENVIRONMENT_FILE}"
fi;










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
# Permite evocar uma função deste script a partir de um argumento passado ao chamá-lo.
$*
