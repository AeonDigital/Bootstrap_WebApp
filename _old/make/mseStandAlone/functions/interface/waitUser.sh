#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Variáveis
MSE_GB_ALERT_WAIT_PROMPT="Precione qualquer tecla para prosseguir."



#
# Mostra uma mensagem de alerta para o usuário e aguarda ele digitar qualquer tecla.
#
# A mensagem mostrada deve ser preparada no array ${MSE_GB_ALERT_MSG}
# onde, cada item do array será definido em uma linha do terminal
#
#   @example
#     MSE_GB_ALERT_MSG=()
#     MSE_GB_ALERT_MSG[0]=$(printf "${WHITE}Sucesso!${NONE}")
#     MSE_GB_ALERT_MSG[1]=$(printf "Todos os scripts foram atualizados")
#
#     waitUser
#
waitUser() {
  if [ ${#MSE_GB_ALERT_MSG[@]} == 0 ] && [ ${#MSE_GB_INTERFACE_MSG[@]} == 0 ]; then
    errorAlert "${FUNCNAME[0]}" "empty array ${LGREEN}MSE_GB_ALERT_MSG${NONE}"
  else
    if [ ${#MSE_GB_ALERT_MSG[@]} == 0 ]; then
      MSE_GB_ALERT_MSG=("${MSE_GB_INTERFACE_MSG[@]}")
    fi

    local mseMsg
    for mseMsg in "${MSE_GB_ALERT_MSG[@]}"; do
      printf "${MSE_GB_ALERT_INDENT}$mseMsg \n"
    done
    read -n 1 -s -r -p "${MSE_GB_ALERT_INDENT}[ ${MSE_GB_ALERT_WAIT_PROMPT} ] `echo $'\n '`"

    MSE_GB_ALERT_MSG=()
    MSE_GB_INTERFACE_MSG=()
  fi
}
