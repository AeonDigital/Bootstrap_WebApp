#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Variáveis
MSE_GB_PROMPT_MSG=()
MSE_GB_PROMPT_INDENT="    "
MSE_GB_PROMPT_RESULT=""
MSE_GB_PROMPT_TEST=0
MSE_GB_PROMPT_ERROR_EXPECTED="Valor inválido. Esperado apenas: "

#
# Valores padrões usados para prompt do tipo 'bool'
unset MSE_GB_PROMPT_BOOL_OPTIONS_LABELS
unset MSE_GB_PROMPT_BOOL_OPTIONS_VALUES
MSE_GB_PROMPT_BOOL_OPTIONS_LABELS=(
  "yes" "sim" "y" "s" "no" "nao" "n"
)
MSE_GB_PROMPT_BOOL_OPTIONS_VALUES=(
  "1" "1" "1" "1" "0" "0" "0"
)

#
# Armazena os valores aceitos para um prompt do tipo 'list'
unset MSE_GB_PROMPT_LIST_OPTIONS_LABELS
unset MSE_GB_PROMPT_LIST_OPTIONS_VALUES
MSE_GB_PROMPT_LIST_OPTIONS_LABELS=()
MSE_GB_PROMPT_LIST_OPTIONS_VALUES=()




#
# Mostra uma mensagem para o usuário e permite que ele
# ofereça uma resposta.
#
# O resultado selecionado pelo usuário ficará definido na variável
# ${MSE_GB_PROMPT_RESULT}.
#
# Quando usar os tipos 'bool' e 'list', defina as chaves de valores
# sempre em minúsculas.
#
#   @param string $1
#   Tipo de valor que é esperado como resposta do prompt.
#   Se nenhum valor for informado, usará o tipo 'bool'.
#
#   Os tipos válidos são:
#   - bool  : espera uma resposta booleana [ sim|não ]
#   - list  : espera uma resposta baseada em uma lista pré-definida.
#   - value : aceita qualquer resposta como válida.
#
#
#   Para usar o tipo 'list' é necessário preencher as variáveis
#   ${MSE_GB_PROMPT_LIST_OPTIONS_LABELS} e ${MSE_GB_PROMPT_LIST_OPTIONS_VALUES}
#   com as chaves/valores que são aceitos para a mesma.
#
#   Em "LABELS" armazene as 'keys' que são as strings que o usuário pode
#   digitar. Já em "VALUES" deve existir um valor correspondente à posição de
#   cada "key" previamente definida.
#   O valor selecionado irá ficar armazenado na variável
#   ${MSE_GB_PROMPT_RESULT}
#
#   @example
#     MSE_GB_PROMPT_MSG=()
#     MSE_GB_PROMPT_MSG[0]=$(printf "${WHITE}ATENÇÃO!${NONE}")
#     MSE_GB_PROMPT_MSG[1]=$(printf "Deseja prosseguir?")
#
#     promptUser
#     if [ "$MSE_GB_PROMPT_RESULT" == "1" ]; then
#       printf "Escolhido Sim"
#     else
#       printf "Escolhido Não"
#     fi
#
#
#
#     MSE_GB_PROMPT_LIST_OPTIONS_LABELS=(
#       "arch" "ubuntu" "debian"
#     )
#     MSE_GB_PROMPT_LIST_OPTIONS_VALUES=(
#       "Arch" "Ubuntu" "Debian"
#     )
#
#     MSE_GB_PROMPT_MSG=()
#     MSE_GB_PROMPT_MSG[0]=$(printf "${WHITE}ATENÇÃO!${NONE}")
#     MSE_GB_PROMPT_MSG[1]=$(printf "Selecione sua distribuição preferida:")
#
#     promptUser "list"
#     printf "Você escolheu a opção: $MSE_GB_PROMPT_RESULT"
#
promptUser() {
  MSE_GB_PROMPT_RESULT=""

  #
  # Se não há uma mensagem a ser mostrada para o usuário
  if [ ${#MSE_GB_PROMPT_MSG[@]} == 0 ] && [ ${#MSE_GB_INTERFACE_MSG[@]} == 0 ]; then
    errorAlert "${FUNCNAME[0]}" "empty array ${LGREEN}MSE_GB_PROMPT_MSG${NONE}"
  else
    #
    # Verifica o tipo de prompt
    local mseType="bool"
    if [ $# == 1 ] && [ "$1" != "" ]; then
      mseType="$1"
    fi


    if [ "$mseType" != "bool" ] && [ "$mseType" != "list" ] && [ "$mseType" != "value" ]; then
      errorAlert "${FUNCNAME[0]}" "invalid type ${LGREEN}${mseType}${NONE}"
    else
      #
      # Prepara a mensagem principal
      if [ ${#MSE_GB_PROMPT_MSG[@]} == 0 ]; then
        MSE_GB_PROMPT_MSG=("${MSE_GB_INTERFACE_MSG[@]}")
      fi


      local mseKey=""
      local mseValue=""
      local msePromptOptions=""
      local msePromptReadLineMessage=""
      if [ "$mseType" == "bool" ]; then

        for index in "${!MSE_GB_PROMPT_BOOL_OPTIONS_LABELS[@]}"; do
          mseKey="${MSE_GB_PROMPT_BOOL_OPTIONS_LABELS[$index]}"

          if [ "$mseValue" != "${MSE_GB_PROMPT_BOOL_OPTIONS_VALUES[$index]}" ]; then
            mseValue="${MSE_GB_PROMPT_BOOL_OPTIONS_VALUES[$index]}"

            if [ "$msePromptOptions" != "" ]; then
              msePromptOptions="${msePromptOptions} | "
            fi
          else
            if [ "$msePromptOptions" != "" ]; then
              msePromptOptions="${msePromptOptions}/"
            fi
          fi

          msePromptOptions="${msePromptOptions}${mseKey}"
          msePromptReadLineMessage="${MSE_GB_PROMPT_INDENT}[ ${msePromptOptions} ] : "
        done

      elif [ "$mseType" == "list" ]; then

        for index in "${!MSE_GB_PROMPT_LIST_OPTIONS_LABELS[@]}"; do
          mseKey="${MSE_GB_PROMPT_LIST_OPTIONS_LABELS[$index]}"

          if [ "$mseValue" != "${MSE_GB_PROMPT_LIST_OPTIONS_VALUES[$index]}" ]; then
            mseValue="${MSE_GB_PROMPT_LIST_OPTIONS_VALUES[$index]}"

            if [ "$msePromptOptions" != "" ]; then
              msePromptOptions="${msePromptOptions} | "
            fi
          else
            if [ "$msePromptOptions" != "" ]; then
              msePromptOptions="${msePromptOptions}/"
            fi
          fi

          msePromptOptions="${msePromptOptions}${mseKey}"
          msePromptReadLineMessage="${MSE_GB_PROMPT_INDENT}[ ${msePromptOptions} ] : "
        done

      else
        msePromptReadLineMessage="${MSE_GB_PROMPT_INDENT}: "
      fi



      if [ "$msePromptOptions" == "" ] && [ "$mseType" == "bool" ]; then
        errorAlert "${FUNCNAME[0]}" "empty list of boolean options"
      elif [ "$msePromptOptions" == "" ] && [ "$mseType" == "list" ]; then
        errorAlert "${FUNCNAME[0]}" "empty list of list options"
      else

        #
        # Efetua um loop recebendo valores do usuário até que seja digitado algum válido.
        local msePromptValue=""
        while [ "$MSE_GB_PROMPT_RESULT" == "" ]; do
          if [ $MSE_GB_PROMPT_TEST == 0 ]; then
            if [ "$msePromptValue" != "" ]; then
              printf "${MSE_GB_PROMPT_INDENT}${MSE_GB_PROMPT_ERROR_EXPECTED} [ ${msePromptOptions} ]: \"$msePromptValue\" \n"
            fi

            local mseMsg
            for mseMsg in "${MSE_GB_PROMPT_MSG[@]}"; do
              printf "${MSE_GB_ALERT_INDENT}${mseMsg}\n"
            done
          fi

          #
          # Permite que o usuário digite sua resposta
          read -p "${msePromptReadLineMessage}" msePromptValue

          #
          # Verifica se o valor digitado corresponde a algum dos valores válidos.
          if [ "$mseType" == "bool" ]; then
            msePromptValue=$(echo "$msePromptValue" | awk '{print tolower($0)}')

            for index in "${!MSE_GB_PROMPT_BOOL_OPTIONS_LABELS[@]}"; do
              mseKey="${MSE_GB_PROMPT_BOOL_OPTIONS_LABELS[$index]}"
              if [ "$mseKey" == "$msePromptValue" ]; then
                MSE_GB_PROMPT_RESULT=${MSE_GB_PROMPT_BOOL_OPTIONS_VALUES[$index]}
              fi
            done
          elif [ "$mseType" == "list" ]; then
            msePromptValue=$(echo "$msePromptValue" | awk '{print tolower($0)}')

            for index in "${!MSE_GB_PROMPT_LIST_OPTIONS_LABELS[@]}"; do
              mseKey="${MSE_GB_PROMPT_LIST_OPTIONS_LABELS[$index]}"
              if [ "$mseKey" == "$msePromptValue" ]; then
                MSE_GB_PROMPT_RESULT=${MSE_GB_PROMPT_LIST_OPTIONS_VALUES[$index]}
              fi
            done
          else
              MSE_GB_PROMPT_RESULT=$msePromptValue
              break
          fi
        done

      fi


      MSE_GB_PROMPT_MSG=()
      MSE_GB_INTERFACE_MSG=()

      if [ $MSE_GB_PROMPT_TEST == 1 ]; then
        echo $MSE_GB_PROMPT_RESULT
      fi
    fi
  fi
}
