#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Imprime na tela o valor da variável pesquisada.
#
#   @param string $1
#   Nome da variável alvo.
#
#   @param string $2
#   Caminho até o arquivo que deve ser verificado.
#
mcfPrintVariableValue()
{
  mcfPrintSectionVariableValue "" "$1" "$2"
}
