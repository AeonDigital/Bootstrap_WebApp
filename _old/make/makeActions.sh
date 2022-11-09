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
# Ação executada imediatamente ANTES cada comando 'make'.
#
# @param string $1
#       Recebe o nome do comando que está sendo executado.
#
makeExecuteBefore() {
  local tmp="";
}





#
# Ação executada imediatamente ANTES cada comando 'make'.
#
# @param string $1
#       Recebe o nome do comando que está sendo executado.
#
makeExecuteAfter() {
  local tmp="";
}










#
# Permite evocar uma função deste script a partir de um argumento passado ao chamá-lo.
$*
