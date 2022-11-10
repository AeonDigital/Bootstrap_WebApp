#!/usr/bin/env bash
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Carrega as ferramentas de uso geral
. "${PWD}/make/standalone.sh"
. "${PWD}/make/makeEnvironment.sh"
. "${PWD}/make/makeTools.sh"





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
    mse_inter_showAlert "f" "Parametro cont=\"${cont}\" inválido; use \"web\" ou \"db\"."
  fi;
}





#
# Retorna o IP da rede usado pelos containers
getContainersIP() {
  local tmpIP=""
  local tmpMsgTitle="IP dos Containers"
  declare -a arrMessage=()


  if [ "${CONTAINER_WEBSERVER_NAME}" != "" ]; then
    tmpIP=$(docker inspect ${CONTAINER_WEBSERVER_NAME} | grep -oP -m1 '(?<="IPAddress": ")[a-f0-9.:]+')
    arrMessage+=("Web-Server : ${tmpIP}")
  fi
  if [ "${CONTAINER_DBSERVER_NAME}" != "" ]; then
    tmpIP=$(docker inspect ${CONTAINER_DBSERVER_NAME} | grep -oP -m1 '(?<="IPAddress": ")[a-f0-9.:]+')
    arrMessage+=("DB-Server  : ${tmpIP}")
  fi

  mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"
}










#
# Permite evocar uma função deste script a partir de um argumento passado ao chamá-lo.
$*
