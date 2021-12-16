#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Converte o valor Octal informado para o respectivo Hexadecimal.
#
# Use múltiplos valores separados por espaços se quiser converter mais de
# um ao mesmo tempo.
#
#   @param int $1
#   Valor que será convertido.
#
#   @param bool $2
#   Se omitido, ou se '0' irá retornar o valor convertido e adicionará uma linha
#   em branco após a impressão.
#   Se '1' retornará apenas o caracter.
#
#   @example
#     convertOctalToHex "241"       # converte para -> A1
#     convertOctalToHex "303 255"   # converte para -> "C3 AD"
#     result=$(convertOctalToHex "241" 1)
#
convertOctalToHex() {
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE=C

  if [ $# != 1 ] && [ $# != 2 ]; then
    errorAlert "${FUNCNAME[0]}" "expected 1 or 2 arguments"
  else
    local i
    local mseIsValid=1
    local mseArrParam=(${1// / })
    local mseRawOutput
    local mseTmp


    #
    # verifica cada um dos valores apresentados identificando se
    # são válidos
    local mseREG='^[0-9A-Fa-f]{1,}$'
    for (( i=0; i<${#mseArrParam[@]}; i++ )); do
      if [ $mseIsValid == 1 ]; then
        if ! [[ ${mseArrParam[$i]} =~ $mseREG ]]; then
          mseIsValid=0
          errorAlert "${FUNCNAME[0]}" "argument 1 is not an valid hexadecimal"
        fi
      fi
    done


    if [ $mseIsValid == 1 ]; then

      #
      # Converte cada um dos valores apresentados
      for (( i=0; i<${#mseArrParam[@]}; i++ )); do
        if [ "$i" != "0" ]; then
          mseRawOutput+='-'
        fi

        # Converte cada octal em um decimal
        mseTmp=$(echo $((8#${mseArrParam[$i]})))
        # Converte cada decimal para um hexadecimal
        mseTmp=$(printf '%X' ${mseTmp})

        mseRawOutput+="${mseTmp}"
      done

      printf $mseRawOutput | sed 's/-/ /g'

      #
      # Adiciona o caracter de 'nova linha' caso necessário
      if [ $# == 1 ]; then
        printf "\n"
      else
        if [ $# == 2 ] && [ $2 == 0 ]; then
          printf "\n"
        fi
      fi
    fi
  fi

  LC_CTYPE="${oLC_CTYPE}"
}
