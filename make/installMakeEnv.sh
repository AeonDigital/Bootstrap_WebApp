#!/bin/bash -eu








ISOK=1
TMP_URL_BASE="https://raw.githubusercontent.com/AeonDigital/myShellEnv/main/etc/skel/myShellEnv/"
TMP_THIS_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TMP_TARGET_DIR="${TMP_THIS_DIR}/mseStandAlone/"
TMP_TARGET_LOAD_SCRIPTS="${TMP_TARGET_DIR}loadScripts.sh"
MSE_GB_INTERFACE_MSG=()
MSE_GB_TARGET_FILES=()
MSE_GB_ALERT_MSG=()
MSE_GB_ALERT_INDENT="    "


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
        for mseScript in "${MSE_GB_TARGET_FILES[@]}"; do
          if [ $ISOK == 1 ]; then
            printf "${MSE_GB_ALERT_INDENT} ... ${LBLUE}${mseScript}${NONE} "
            mseTMP="${2}${mseScript}"
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






#
# Cria o diretório onde os scripts serão armazenados
rm -rf "${TMP_TARGET_DIR}"
mkdir -p "${TMP_TARGET_DIR}"
if [ ! -d "${TMP_TARGET_DIR}" ]; then
  setIMessage "" 1
  setIMessage "Não foi possível criar o diretório ${WHITE}mseStandAlone${NONE}"
  setIMessage "Nenhuma ação foi executada."
  alertUser
else



  echo '#!/bin/bash -eu' > "$TMP_TARGET_LOAD_SCRIPTS"
  echo '' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '#' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '# Carrega os scripts' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'TMP_PATH_TO_SCRIPTS="${MK_ROOT_PATH}/make/mseStandAlone/"' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'TMP_TARGET_SCRIPTS=(' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '  "functions/interface/"' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '  "functions/string/"' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '  "management/config_files/"' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo ')' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'for tgtDir in "${TMP_TARGET_SCRIPTS[@]}"; do' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '  tgtPath="${TMP_PATH_TO_SCRIPTS}${tgtDir}"' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '  tgtFiles=$(find "$tgtPath" -name "*.sh");' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '  while read rawLine' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '  do' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '    source "$rawLine"' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '  done <<< ${tgtFiles}' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'done' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'unset tgtDir' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'unset tgtPath' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'unset tgtFiles' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'unset rawLine' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo '' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'unset TMP_PATH_TO_SCRIPTS' >>  "$TMP_TARGET_LOAD_SCRIPTS"
  echo 'unset TMP_TARGET_SCRIPTS' >>  "$TMP_TARGET_LOAD_SCRIPTS"



  # Funções :: interface
  if [ $ISOK == 1 ]; then
    mseDir="${TMP_TARGET_DIR}functions/interface/"
    mseURL="${TMP_URL_BASE}functions/interface/"
    MSE_GB_TARGET_FILES=(
      "alertUser.sh" "aliases.sh" "errorAlert.sh" "promptUser.sh"
      "setIMessage.sh" "textColors.sh" "waitUser.sh"
    )

    downloadMyShellEnvFiles "$mseURL" "$mseDir"
  fi


  # Funções :: string
  if [ $ISOK == 1 ]; then
    mseDir="${TMP_TARGET_DIR}functions/string/"
    mseURL="${TMP_URL_BASE}functions/string/"
    MSE_GB_TARGET_FILES=(
      "toLowerCase.sh" "toUpperCase.sh"
      "trim.sh" "trimD.sh" "trimDL.sh" "trimDR.sh" "trimL.sh" "trimR.sh"
    )

    downloadMyShellEnvFiles "$mseURL" "$mseDir"
  fi


  # Gerenciamento :: configuração
  if [ $ISOK == 1 ]; then
    mseDir="${TMP_TARGET_DIR}management/config_files/"
    mseURL="${TMP_URL_BASE}management/config_files/"
    MSE_GB_TARGET_FILES=(
      "mcfCommentSectionVariable.sh" "mcfCommentVariable.sh" "mcfPrintSectionVariable.sh"
      "mcfPrintSectionVariableInfo.sh" "mcfPrintSectionVariables.sh" "mcfPrintSectionVariableValue.sh"
      "mcfPrintVariable.sh" "mcfPrintVariableInfo.sh" "mcfPrintVariables.sh"
      "mcfPrintVariableValue.sh" "mcfSetArrayValues.sh" "mcfSetSectionVariable.sh"
      "mcfSetVariable.sh" "mcfUncommentSectionVariable.sh" "mcfUncommentVariable.sh"
    )

    downloadMyShellEnvFiles "$mseURL" "$mseDir"
  fi
fi








unset ISOK
unset TMP_URL_BASE
unset TMP_THIS_DIR
unset TMP_TARGET_DIR
unset TMP_TARGET_LOAD_SCRIPTS
unset MSE_GB_INTERFACE_MSG
unset MSE_GB_TARGET_FILES
unset MSE_GB_ALERT_MSG
unset MSE_GB_ALERT_INDENT

unset mseDir
unset mseURL

unset alertUser
unset errorAlert
unset downloadMyShellEnvFiles
