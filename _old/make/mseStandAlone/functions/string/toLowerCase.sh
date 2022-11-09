#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Converte o argumento passado para minúsculas.
#
#   @param string $1
#   String que será convertida
#
#   @example
#     result=$(toLowerCase "TEXT")
#
toLowerCase() {
  echo "$1" | awk '{print tolower($0)}'
}
