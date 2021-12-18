#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Imprime na tela as informações de uma variável.
# Serão impressas 2 linhas de dados, uma contendo o nome da variável e na outra
# seu respectivo valor.
#
#   @param string $1
#   Nome da variável alvo.
#
#   @param string $2
#   Caminho até o arquivo que deve ser verificado.
#
mcfPrintVariableInfo()
{
  mcfPrintSectionVariableInfo "" "$1" "$2"
}
