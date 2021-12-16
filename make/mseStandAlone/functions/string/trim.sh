#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Elimina qualquer espaços em branco no início ou no final de uma string.
#
#   @param string $1
#   String que será alterada.
#
#   @example
#     result=$(trim "   texto  aqui   ")
#     echo $result # "texto  aqui"
#
trim() {
  echo "$1" | sed 's/^\s*//g' | sed 's/\s*$//g'

  # a opção abaixo elimina toda ocorrencia de
  # múltiplos espaços entre as palavras
  # portanto não é adequada ao que se deseja.
  # echo "$1" | xargs
}
