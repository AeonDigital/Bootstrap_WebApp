#!/bin/bash -eu








#
# Abaixo há variáveis que carregam as definição de cada uma das cores de
# fonte já preparadas para serem usadas em mensagens de texto de forma imediata.
#
# 'D' indica 'Dark'
# 'L' indica 'Light'
#

NONE='\e[0;37;37m'

BLACK='\e[0;47;30m'
DGREY='\e[0;37;90m'
LGREY='\e[0;37;37m'
WHITE='\e[0;37;97m'

RED='\e[0;37;31m'
LRED='\e[0;37;91m'

GREEN='\e[0;37;32m'
LGREEN='\e[0;37;92m'

YELLOW='\e[0;37;33m'
LYELLOW='\e[0;37;93m'

BLUE='\e[0;37;34m'
LBLUE='\e[0;37;94m'

PURPLE='\e[0;37;35m'
LPURPLE='\e[0;37;95m'

CYAN='\e[0;37;36m'
LCYAN='\e[0;37;96m'





MSE_GB_INTERFACE_MSG=()
MSE_GB_TARGET_FILES=()
MSE_GB_ALERT_MSG=()
MSE_GB_ALERT_INDENT="    "

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
# Adiciona uma nova linha de informação no array de mensagem
# de interface ${MSE_GB_INTERFACE_MSG}
#
#   @param string $1
#   Nova linha da mensagem
#
#   @param bool $2
#   Use '1' quando quiser que o array seja reiniciado.
#   Qualquer outro valor não causará efeitos
#
#   @example
#     setIMessage "Atenção" 1
#     setIMessage "Todos os arquivos serão excluídos."
#
setIMessage() {
  if [ $# != 1 ] && [ $# != 2 ]; then
    errorAlert "${FUNCNAME[0]}" "expected 1 or 2 arguments"
  else
    if [ $# == 2 ] && [ $2 == 1 ]; then
      MSE_GB_INTERFACE_MSG=()
    fi

    local mseLength=${#MSE_GB_INTERFACE_MSG[@]}
    MSE_GB_INTERFACE_MSG[mseLength]=$1
  fi
}
#
# Mostra uma mensagem de alerta para o usuário.
#
# A mensagem mostrada deve ser preparada no array ${MSE_GB_ALERT_MSG}
# onde, cada item do array será definido em uma linha do terminal
#
#   @example
#     MSE_GB_ALERT_MSG=()
#     MSE_GB_ALERT_MSG[0]=$(printf "${WHITE}Sucesso!${NONE}")
#     MSE_GB_ALERT_MSG[1]=$(printf "Todos os scripts foram atualizados")
#
#     alertUser
#
alertUser() {
  if [ ${#MSE_GB_ALERT_MSG[@]} == 0 ] && [ ${#MSE_GB_INTERFACE_MSG[@]} == 0 ]; then
    errorAlert "${FUNCNAME[0]}" "empty array ${LGREEN}MSE_GB_ALERT_MSG${NONE}"
  else
    if [ ${#MSE_GB_ALERT_MSG[@]} == 0 ]; then
      MSE_GB_ALERT_MSG=("${MSE_GB_INTERFACE_MSG[@]}")
    fi

    local mseMsg
    for mseMsg in "${MSE_GB_ALERT_MSG[@]}"; do
      printf "${MSE_GB_ALERT_INDENT}${mseMsg}\n"
    done

    MSE_GB_ALERT_MSG=()
    MSE_GB_INTERFACE_MSG=()
  fi
}
#
# Mostra uma mensagem de alerta para o usuário indicando um erro
# ocorrido em algum script.
#
#   @param string $1
#   Nome da função onde ocorreu o erro.
#   Se não for definido, usará o valor padrão 'script'.
#
#   @param string $2
#   Mensagem de erro.
#
#   @param string $3
#   Informação extra [opcional].
#
#   @example
#     errorAlert "" "expected 2 arguments"
#     errorAlert ${FUNCNAME[0]} "expected 2 arguments"
#
errorAlert() {
  if [ $# != 2 ] && [ $# != 3 ]; then
    errorAlert "${FUNCNAME[0]}" "expected 2 or 3 arguments"
  else
    local mseLocal=$1
    if [ $1 == "" ]; then
      mseLocal="script"
    fi

    setIMessage "${MSE_GB_ALERT_INDENT}${WHITE}ERROR (in ${mseLocal}) :${NONE} $2" 1
    if [ $# == 3 ]; then
      setIMessage "${MSE_GB_ALERT_INDENT}$3"
    fi
    alertUser
  fi
}
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
#
# Efetua o download e a instalação dos scripts alvos conforme as
# informações passadas pelos parametros.
# Os scripts alvo desta ação devem estar definidos no array ${MSE_GB_TARGET_FILES}.
#
#   @param string $1
#   URL do local (diretório) onde estão os scripts a serem baixados.
#
#   @param string $2
#   Endereço completo até o diretório onde os scripts serão salvos.
#
#   @example
#     MSE_GB_TARGET_FILES=("script01.sh" "script02.sh" "script03.sh")
#     downloadMyShellEnvFiles "https://myrepo/dir" "${HOME}/myShellEnv/"
#
#   @result
#     O resultado do sucesso ou falha da instalação dos scripts alvos
#     será armazenado na variável ${ISOK} onde '1' significa sucesso
#     e '0' significa falha em algum ponto do processo.
#
downloadMyShellEnvFiles() {
  if [ $# != 2 ]; then
    ISOK=0
    errorAlert "${FUNCNAME[0]}" "expected 2 arguments"
  else
    if [ ${#MSE_GB_TARGET_FILES[@]} == 0 ]; then
      ISOK=0
      errorAlert "${FUNCNAME[0]}" "empty array ${LGREEN}MSE_GB_TARGET_FILES${NONE}"
    else
      mkdir -p "$2"

      if [ ! -d "$2" ]; then
        ISOK=0
        errorAlert "${FUNCNAME[0]}" "target directory $2 cannot be created"
      else
        ISOK=1

        setIMessage "" 1
        setIMessage "Baixando arquivos para o diretório:"
        setIMessage "${LBLUE}$2${NONE} ..."
        alertUser

        local mseScript
        local mseTMP
        local mseTGTDIR
        for mseScript in "${MSE_GB_TARGET_FILES[@]}"; do
          if [ $ISOK == 1 ]; then
            printf "${MSE_GB_ALERT_INDENT} ... ${LBLUE}${mseScript}${NONE} "
            mseTMP="${2}${mseScript}"

            mseTGTDIR=$(dirname "${mseTMP}")
            if [ ! -d "${mseTGTDIR}" ]; then
              mkdir -p "${mseTGTDIR}"
            fi;

            local mseSCode=$(curl -s -w "%{http_code}" -o "$mseTMP" "${1}${mseScript}" || true)

            if [ ! -f "$mseTMP" ] || [ $mseSCode != 200 ]; then
              ISOK=0
              printf " ${LRED}[x]${NONE}\n"
            else
              printf " ${LGREEN}[v]${NONE}\n"
            fi
          fi
        done


        setIMessage "" 1
        if [ $ISOK == 1 ]; then
          setIMessage "Finalizado com sucesso."
        else
          setIMessage "Processo abortado."
        fi
        alertUser
      fi
    fi
  fi
}










ISOK=1
TMP_URL_BASE="https://raw.githubusercontent.com/AeonDigital/Bootstrap_WebApp/main/make/"
TMP_THIS_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


setIMessage "" 1
setIMessage "${LPURPLE}Make Env BootStrap${NONE}"
setIMessage "Deseja prosseguir com a atualização?"
promptUser

if [ "$MSE_GB_PROMPT_RESULT" == "1" ]; then
  #
  # Baixa a versão mais recente do script de atualização do
  # bootstrap e executa-o.
  tgtDir="${TMP_THIS_DIR}/"
  tgtURL="${TMP_URL_BASE}"
  MSE_GB_TARGET_FILES=(
    "installMakeEnv.sh"
  )

  downloadMyShellEnvFiles "$tgtURL" "$tgtDir"

  #
  # Inicia a execução da atualização.
  if [ "$ISOK" == "1" ]; then
    setIMessage "" 1
    setIMessage "${LPURPLE}Iniciando atualização${NONE}"
    alertUser

    chmod u+x "${tgtDir}installMakeEnv.sh"
    source "${tgtDir}installMakeEnv.sh" "1"
  fi;


  unset tgtDir
  unset tgtURL
fi;





unset ISOK
unset TMP_URL_BASE
unset TMP_THIS_DIR

unset MSE_GB_INTERFACE_MSG
unset MSE_GB_TARGET_FILES
unset MSE_GB_ALERT_MSG
unset MSE_GB_ALERT_INDENT

unset MSE_GB_PROMPT_MSG
unset MSE_GB_PROMPT_INDENT
unset MSE_GB_PROMPT_RESULT
unset MSE_GB_PROMPT_TEST
unset MSE_GB_PROMPT_ERROR_EXPECTED
unset MSE_GB_PROMPT_BOOL_OPTIONS_LABELS
unset MSE_GB_PROMPT_BOOL_OPTIONS_VALUES
unset MSE_GB_PROMPT_LIST_OPTIONS_LABELS
unset MSE_GB_PROMPT_LIST_OPTIONS_VALUES

unset setIMessage
unset alertUser
unset errorAlert
unset promptUser
unset downloadMyShellEnvFiles
