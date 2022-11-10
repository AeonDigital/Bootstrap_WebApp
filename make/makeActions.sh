#!/usr/bin/env bash
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Carrega as ferramentas de uso geral
. "${PWD}/make/standalone.sh"
. "${PWD}/make/makeEnvironment.sh"
. "${PWD}/make/makeTools.sh"





#
# Ação executada imediatamente ANTES cada comando 'make'.
#
# @param string $1
# Recebe o nome do comando que está sendo executado.
#
makeExecuteBefore() {
  local doNothing=""
}





#
# Ação executada imediatamente ANTES cada comando 'make'.
#
# @param string $1
# Recebe o nome do comando que está sendo executado.
#
makeExecuteAfter() {
  local doNothing=""
}





#
# Permite evocar uma função deste script a partir de um argumento passado ao chamá-lo.
$*
