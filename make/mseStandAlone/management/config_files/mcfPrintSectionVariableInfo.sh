#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Imprime na tela as informações de uma variável.
# Serão impressas 2 linhas de dados, uma contendo o nome da variável e na outra
# seu respectivo valor.
#
# @param string $1
#        Nome da seção alvo.
#
# @param string $2
#        Nome da variável alvo.
#
# @param string $3
#        Caminho até o arquivo que deve ser verificado.
#
mcfPrintSectionVariableInfo()
{
  local strSelection=$(mcfPrintSectionVariable "$1" "$2" "$3");
  local key
  local value

  oIFS="${IFS}";
  if [ "${strSelection}" != "" ]; then
    while IFS='=' read key value; do
      local k=$(trim "${key}");
      local v=$(trim "${value}");
      echo "${k}";
      echo "${v}";
    done <<< "${strSelection}"
  fi;
  IFS="${oIFS}";
}
