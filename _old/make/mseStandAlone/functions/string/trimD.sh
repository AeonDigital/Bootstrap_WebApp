#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Elimina qualquer espaço em branco existente imediatamente
# ANTES e APÓS o delimitador indicado.
#
#   @param string $1
#   Delimitador.
#
#   @param string $1
#   String que será alterada.
#
#   @example
#     result=$(trimD ":" "  Keep  calm   :   and   ... :   think  ")
#     echo $result # "Keep  calm:and   ...:think"
#
trimD() {
  sed 's/\s*'"$1"'\s*/'"$1"'/g' <<< "$2"
}
