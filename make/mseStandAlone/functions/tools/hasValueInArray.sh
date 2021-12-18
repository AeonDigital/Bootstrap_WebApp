#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Identifica se o valor indicado existe no array alvo.
# Printa na tela '0' quando não encontrar e '1' caso encontre
# o valor indicado.
#
#   @param string $1
#   Valor que está sendo pesquisado
#
#   @param string $2
#   Nome do array em que a pesquisa deve ser feita.
#
hasValueInArray() {
    local tgtArray="$2[@]"
    local value
    local match="0"

    for value in "${!tgtArray}"; do
      if [[ $value == "$1" ]]; then
        match="1"
        break
      fi
    done

    echo "$match"
}
