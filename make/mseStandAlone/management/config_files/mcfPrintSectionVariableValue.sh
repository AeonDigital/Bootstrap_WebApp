#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Imprime na tela o valor da variável pesquisada.
# A variável será pesquisada apenas na seção indicada.
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
mcfPrintSectionVariableValue()
{
  local strSelection=$(mcfPrintSectionVariableInfo "$1" "$2" "$3");

  oIFS="${IFS}";
  IFS=$'\n'
  strSelection=($strSelection);
  IFS="${oIFS}"

  if [ ${#strSelection[@]} == 2 ]; then
    echo "${strSelection[1]}";
  fi;
}
