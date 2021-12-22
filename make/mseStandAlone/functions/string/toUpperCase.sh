#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Converte o argumento passado para maiúsculas.
#
#   @param string $1
#   String que será convertida.
#
#   @example
#     result=$(toUpperCase "text")
#
toUpperCase() {
  echo "$1" | awk '{print toupper($0)}'
}
