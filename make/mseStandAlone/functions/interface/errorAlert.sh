#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Mostra uma mensagem de alerta para o usuário indicando um erro
# ocorrido em algum script.
#
#   @param string $1
#   Nome da função onde ocorreu o erro.
#   Se não for definido, usará o valor padrão 'script'.
#
#   @param string $2
#   Mensagem de erro.
#
#   @param string $3
#   Informação extra [opcional].
#
#   @example
#     errorAlert "" "expected 2 arguments"
#     errorAlert ${FUNCNAME[0]} "expected 2 arguments"
#
errorAlert() {
  if [ $# != 2 ] && [ $# != 3 ]; then
    errorAlert "${FUNCNAME[0]}" "expected 2 or 3 arguments"
  else
    local mseLocal=$1
    if [ $1 == "" ]; then
      mseLocal="script"
    fi

    setIMessage "${MSE_GB_ALERT_INDENT}${WHITE}ERROR (in ${mseLocal}) :${NONE} $2" 1
    if [ $# == 3 ]; then
      setIMessage "${MSE_GB_ALERT_INDENT}$3"
    fi
    alertUser
  fi
}
