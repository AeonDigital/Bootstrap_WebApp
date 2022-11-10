#!/usr/bin/env bash
# myShellEnv v 1.0 [aeondigital.com.br]
# INI :: pt-br.sh
declare -ga MSE_GLOBAL_LABEL_MONTH=("" "Janeiro" "Fevereiro" "Março" "Abril" "Maio" "Junho" "Julho" "Agosto" "Setembro" "Outubro" "Novembro" "Dezembro")
declare -ga MSE_GLOBAL_LABEL_WEEKDAY=("" "Segunda" "Terça" "Quarta" "Quinta" "Sexta" "Sábado" "Domingo")
declare -ga MSE_GLOBAL_LABEL_DAYPERIOD=("" "Madrugada" "Manhã" "Tarde" "Noite")
lbl_err_lostParameters="Foram perdidos [[LOST]] parametros."
lbl_err_variableAlreadExists="Variável \"[[VAR]]\" já existe"
lbl_err_variableDoNotExists="Variável \"[[VAR]]\" não existe"
lbl_err_variableDoNotExistsInSection="Variável \"[[VAR]]\" não existe na seção \"[[SECTION]]\""
lbl_err_paramA_HasInvalidValue="Parametro \"[[PARAM_A]]\" foi definido com um valor inválido"
lbl_err_paramA_HasInvalidOption="Parametro \"[[PARAM_A]]\" foi definido com uma opção inválida"
lbl_err_paramA_IsOutOfRange="Parametro \"[[PARAM_A]]\" está fora dos limites"
lbl_err_paramA_IsRequired="Parametro \"[[PARAM_A]]\" é obrigatório"
lbl_err_paramA_IsNot_A="Parametro \"[[PARAM_A]]\" não é um [[A]]"
lbl_err_paramA_IsNotAn_A="Parametro \"[[PARAM_A]]\" não é um [[A]]"
lbl_err_paramA_IsGreaterThanMaxLength="Parametro \"[[PARAM_A]]\" é maior do que o tamanho máximo permitido ( [[MAXLENGTH]] )"
lbl_err_paramA_IsNotValid_A_RepresentationOf_B="Parametro \"[[PARAM_A]]\" não é um representante [[A]] de um [[B]]"
lbl_err_paramA_MustBeGreaterOrEqualsThan_A="Parametro \"[[PARAM_A]]\" deve ser maior ou igual a [[A]]"
lbl_err_paramA_MustBeLessOrEqualsThan_A="Parametro \"[[PARAM_A]]\" deve ser menor ou igual a [[A]]"
lbl_err_paramA_MustBeNameOfExistentFunction="Parametro \"[[PARAM_A]]\" deve ser o nome de uma função existente"
lbl_err_cannotCreateNewFileIn="Não foi possível criar um novo arquivo em [[LOCAL]]"
lbl_err_paramA_PointsToNonExistentFile="Parametro \"[[PARAM_A]]\" aponta para um arquivo inexistente"
lbl_err_cannotCreateNewDirectoryIn="Não foi possível criar um novo diretório em [[LOCAL]]"
lbl_err_paramA_PointsToNonExistentDirectory="Parametro \"[[PARAM_A]]\" aponta para um diretório inexistente"
lbl_err_paramA_MustBeAnArray="Parametro \"[[PARAM_A]]\" deve ser um array"
lbl_err_paramA_MustBeAnAssocArray="Parametro \"[[PARAM_A]]\" deve ser um array associativo"
lbl_err_paramA_IsAnEmptyArray="Parametro \"[[PARAM_A]]\" é um array vazio"
lbl_err_paramA_BothArraysMustHaveSameNumberOfElements="Parametros \"[[PARAM_A]]\" e \"[[PARAM_B]]\" devem ter o mesmo número de elementos"
lbl_err_paramA_MustBeAnArrayWithAtLast_Min="Parametro \"[[PARAM_A]]\" deve ser um array com ao menos [[MIN]] elementos"
lbl_err_paramA_MustBeAnArrayWithAtLast_Max="Parametro \"[[PARAM_A]]\" deve ser um array com no máximo [[MAX]] elementos"
lbl_err_paramA_LostTheRequiredKey_Key="Parametro \"[[PARAM_A]]\" não possui a chave \"[[KEY]]\" exigida"
lbl_err_paramA_RequiredFor_A_Operation="Parametro \"[[PARAM_A]]\" é exigido para a operação do tipo \"[[A]]\""
lbl_err_checkForValidOptionsUsingFunction="Verifique por opções válidas usando a função \"[[FUNCTION]]\""
lbl_err_chooseOneOfThisOptions="Escolha uma destas opções: "
lbl_err_cannotIdentifyTargetLine="Não foi possível identificar a linha alvo para executar esta operação."
# END :: pt-br.sh


# INI :: general.sh
lbl_exec_vp_ipd_mainMessage="Definição de parametro inválida; [ [[MSG]] ]"
lbl_exec_vp_ipd_fieldA_CannotBeEmpty="O Campo [[FIELDNAME_A]] não pode ser vazio"
lbl_exec_vp_ipd_fieldA_HasAnInvalidValue="O Campo [[FIELDNAME_A]] possui um valor inválido"
lbl_exec_vp_ipd_fieldA_HasAnInvalidOption="O Campo [[FIELDNAME_A]] possui uma opção inválida "
lbl_exec_vp_ipd_fieldA_PointsToNonExistentFunction="O Campo [[FIELDNAME_A]] aponta para uma função inexistente"
lbl_exec_vp_ipd_fieldA_MustBeAnInteger="O Campo [[FIELDNAME_A]] deve ser um inteiro"
lbl_exec_vp_ipd_fieldA_MustBeGreaterThanZero="O Campo [[FIELDNAME_A]] deve ser maior que 0"
lbl_exec_vp_ipd_fieldA_IsGreaterThan_FieldB="O Campo [[FIELDNAME_A]] é maior que o campo [[FIELDNAME_B]]"
lbl_exec_vp_ipd_forTypeA_FieldA_MustBeGreaterOrEqualsToZero="Para o tipo \"[[TYPE_A]]\", o campo [[FIELDNAME_A]] deve ser maior ou igual a 0"
lbl_exec_vp_ipd_forTypeA_FieldA_MustBeGreaterOrEqualsToOne="Para o tipo \"[[TYPE_A]]\", o campo [[FIELDNAME_A]] deve ser maior ou igual a 1"
lbl_exec_vp_ipd_fieldA_LostThe_A_Collection="O Campo [[FIELDNAME_A]] não possui a coleção do tipo [[A]]"
lbl_exec_vp_ipd_fieldA_HasAnEmpty_A_Collection="O Campo [[FIELDNAME_A]] possui uma coleção vazia do tipo [[A]]"
lbl_exec_vp_ipd_fieldA_HasAnIncorrectCorrelationBetween_A_and_B="O Campo [[FIELDNAME_A]] possui uma correlação incorreta entre [[A]] e [[B]]"
# END :: general.sh


# INI :: general.sh
lbl_fw_iv_mainMessage="Parametro \"[[PARAM_A]]\" possui um valor inválido [ [[MSG]] ]"
lbl_fw_iv_expectedFunctionNameOrInteger="É experado o nome de uma função ou um/dois inteiros; \"[[FUNCTION]]\": \"[[RESULT]]\"  :: [[ERR]]"
lbl_fw_iv_firstLineMustBeLessThanTheLast="A primeira linha precisa ser um número menor do que a última: \"[[RESULT]]\""
lbl_fw_iv_outsideTheFileLimits="Definição fora dos limites do arquivo; 1 - [[LASTLINE]]"
lbl_fw_iv_errorOnSave="Erro ao salvar. Você tem permissão para alterar o arquivo alvo?"
# END :: general.sh


# INI :: general.sh
lbl_font_showTextColors_TableHeaders="Cor:Raw:Variavel:Aparencia"
lbl_font_showTextColors_UseCodeExample="Use o número da cor desejada no lugar do 'X': "
# END :: general.sh


# INI :: general.sh
lbl_inter_alert_header_info="Informação"
lbl_inter_alert_header_attention="Atenção"
lbl_inter_alert_header_warning="Alerta"
lbl_inter_alert_header_error="Erro"
lbl_inter_alert_header_fail="Falha"
lbl_inter_alert_header_success="Sucesso"
lbl_inter_wait_user_any_key="Precione qualquer tecla para prosseguir"
lbl_inter_prompt_invalidValue="O valor \"[[VALUE]]\" é inválido."
unset lbl_inter_showPrompt_BoolValues
declare -gA lbl_inter_showPrompt_BoolValues
lbl_inter_showPrompt_BoolValues["1"]="sim::s"
lbl_inter_showPrompt_BoolValues["0"]="nao::n"
# END :: general.sh


# INI :: general.sh
lbl_generic_confirmActionToProceed="Confirme esta ação para prosseguir"
lbl_generic_actionAbortedByTheUser="Ação interrompida pelo usuário."
lbl_generic_scriptInterruptedError=("Operação interrompida.")
lbl_generic_cannotFoundConfigFile="Arquivo de configuração não foi encontrado."
lbl_generic_cannotSaveinFile="Não foi possível salvar."
lbl_generic_fileNotFound="O arquivo \"[[FILE]]\" não foi encontrado."
lbl_generic_checkConfigFile="Verifique se o arquivo de configuração existe."
lbl_generic_checkPermissions="Verifique suas permissões para efetuar esta operação."
lbl_generic_save="Salvo."
lbl_showMetaSummary_moreDetails="Para mais detalhes use a função \"mse_mmod_mng_showMetaData\"."
lbl_man_enterAFunction="Entre o nome de uma função."
lbl_man_functionDoesNotExists="A função \"[[FUNCTION]]\" não existe."
lbl_man_searchForAValidFunction="Para pesquisar por uma função válida use \"mse_mmod_mng_showMetaData\"."
lbl_man_couldNotFindHelpForFunction="Não foi possível encontrar uma ajuda para a função \"[[FUNCTION]]\""
lbl_man_fileOfFunctionNotFound="O arquivo da função não foi encontrado em [[PATH]]"
lbl_man_noUsageDescriptionFoundForFunction="Nenhuma descrição de uso foi encontrada para a função"
lbl_searchFunction_enterAFunction="Entre o nome da função."
lbl_cmd_commandNotFound="O comando \"[[CMD]]\" não foi encontrado."
lbl_cmd_completion_param_pickBool="Use \"1\" para sim ou \"0\" para não."
lbl_cmd_completion_param_pickOption="Selecione uma opção da lista a seguir:"
lbl_generateStandalone_moduleNotFound="Módulo não encontrado."
lbl_update_updateStart="Atualizando todos os módulos \"myShellEnv\"."
lbl_update_updateSuccess="Todos os módulos e submódulos foram atualizados"
lbl_update_updateFail="Uma falha inesperada ocorreu e não foi possível atualizar todos os módulos [ [[ERRCODE]] ]"
lbl_uninstall_uninstallStart="Iniciando desinstalação do \"myShellEnv\""
lbl_uninstall_uninstallPromptMessage=()
lbl_uninstall_uninstallPromptMessage+=("Esta ação não pode ser desfeita.")
lbl_uninstall_uninstallPromptMessage+=("Todos os dados e configurações de todos os módulos atualmente instalados")
lbl_uninstall_uninstallPromptMessage+=("serão perdidos permanentemente.")
lbl_uninstall_uninstallPromptMessage+=("")
lbl_uninstall_uninstallPromptMessage+=("Você tem certeza que deseja prosseguir?")
lbl_uninstall_uninstallErrorRemoveDir="Não foi possível remover o diretório \"myShellEnv\"."
lbl_uninstall_uninstallSuccess="Uninstallation completed."
lbl_submoduleInstall_addNew="Adicionando novo módulo."
lbl_submoduleInstall_addSuccess="O novo módulo foi adicionado com sucesso"
lbl_submoduleInstall_addFail="Houve uma falha inesperada ao tentar adicionar o novo módulo"
lbl_submoduleInstall_confirmAction="Você tem certeza que deseja adicionar o submódulo [[SUBMODULE]] à sua instância do \"myShellEnv\"?"
lbl_submoduleInstall_alreadExists="Este submódulo já está adicionado em seu \"myShellEnv\"."
lbl_submoduleInstall_unableToEditConfigFile="Não foi possível editar o arquivo de configuração  \"[[FILE]]\"."
lbl_submoduleInstall_unableToEditConfigFile_msg=()
lbl_submoduleInstall_unableToEditConfigFile_msg+=("O módulo foi instalado com sucesso mas não será")
lbl_submoduleInstall_unableToEditConfigFile_msg+=("carregado até que sua entrada na variável global \"MSE_AVAILABLE_MODULES\" seja definida.")
lbl_submoduleUninstall_submoduleDoesNotExists="O submódulo indicado não está instalado."
lbl_submoduleUninstall_cannotRemove="Um erro ocorreu e não possível desinstalar o submódulo."
lbl_submoduleUninstall_unableToEditConfigFile="Não foi possível editar o arquivo de configuração \"[[FILE]]\"."
# END :: general.sh


# INI :: variables.sh
MSE_TMP_SUBMODULES="check::str::str_convert::exec::file::config::font::inter::misc"
declare -gA MSE_GLOBAL_SUBMODULES_REPOSITORIES
MSE_GLOBAL_SUBMODULES_REPOSITORIES["Shell-MSE-Prompt"]="https://github.com/AeonDigital/Shell-MSE-Prompt.git"
MSE_GLOBAL_SUBMODULES_REPOSITORIES["Shell-MSE-Notes"]="https://github.com/AeonDigital/Shell-MSE-Notes.git"
declare -gA MSE_GLOBAL_CMD
declare -gA MSE_GLOBAL_CMD_COMPARE
MSE_GLOBAL_COMPLETION_MODE="F"
declare -a MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS=()
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execOnStart")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execOnEnd")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execBeforeLoadLocale")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execAfterLoadLocale")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execBeforeLoadEnv")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execAfterLoadEnv")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execBeforeLoadVariables")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execAfterLoadVariables")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execBeforeLoadAliases")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execAfterLoadAliases")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execBeforeLoadScripts")
MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS+=("mse_registerModule_execAfterLoadScripts")
declare -a MSE_GLOBAL_STANDALONE_META_FUNCTIONS=()
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execOnStart")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execOnEnd")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execBeforeLoadLocale")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execAfterLoadLocale")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execBeforeLoadEnv")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execAfterLoadEnv")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execBeforeLoadVariables")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execAfterLoadVariables")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execBeforeLoadAliases")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execAfterLoadAliases")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execBeforeLoadScripts")
MSE_GLOBAL_STANDALONE_META_FUNCTIONS+=("mse_standalone_execAfterLoadScripts")
declare -gA MSE_GLOBAL_MODULES_METADATA
declare -ga MSE_GLOBAL_MODULES_METADATA_INDEXED
declare -gA MSE_GLOBAL_MODULES_PATH
declare -g MSE_GLOBAL_LASTERR=""
declare -g MSE_GLOBAL_RETURN=""
MSE_GLOBAL_THEME_LOADED=""
declare -gA MSE_GLOBAL_SHOW_MESSAGE_CONFIG
declare -gA MSE_GLOBAL_SHOW_PROGRESSBAR_CONFIG
declare -gA MSE_GLOBAL_SHOW_PROMPT_CONFIG
MSE_GLOBAL_PROMPT_RESULT=""
trap mse_inter_stopSpinner EXIT
MSE_GLOBAL_SPINNER_PID=""
MSE_GLOBAL_SPINNER_DEFAULT=(" / " " - " " \\ " " | ")
MSE_GLOBAL_SPINNER_COMESANDGOES=(" •      " "  •     " "   •    " "    •   " "     •  " "      • " "     •  " "    •   " "   •    " "  •     ")
declare -gA MSE_GLOBAL_MAIN_THEME_COLORS
unset MSE_GLOBAL_VALIDATE_PARAMETERS_DATA
declare -ga MSE_GLOBAL_VALIDATE_PARAMETERS_DATA
unset MSE_GLOBAL_VALIDATE_PARAMETERS_RULES
declare -gA MSE_GLOBAL_VALIDATE_PARAMETERS_RULES
MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP="1"
declare -ga MSE_GLOBAL_MODULE_SPLIT_RESULT
# END :: variables.sh


# INI :: colors.sh
mseNONE='\e[0m'
mseBLACK='\e[20;47;30m'
mseDBLACK='\e[2;47;30m'
mseLBLACK='\e[20;47;90m'
mseDLBLACK='\e[2;47;90m'
mseRED='\e[20;49;31m'
mseDRED='\e[2;49;31m'
mseLRED='\e[20;49;91m'
mseDLRED='\e[2;49;91m'
mseGREEN='\e[20;49;32m'
mseDGREEN='\e[2;49;32m'
mseLGREEN='\e[20;49;92m'
mseDLGREEN='\e[2;49;92m'
mseYELLOW='\e[20;49;33m'
mseDYELLOW='\e[2;49;33m'
mseLYELLOW='\e[20;49;93m'
mseDLYELLOW='\e[2;49;93m'
mseBLUE='\e[20;49;34m'
mseDBLUE='\e[2;49;34m'
mseLBLUE='\e[20;49;94m'
mseDLBLUE='\e[2;49;94m'
msePURPLE='\e[20;49;35m'
mseDPURPLE='\e[2;49;35m'
mseLPURPLE='\e[20;49;95m'
mseDLPURPLE='\e[2;49;95m'
mseCYAN='\e[20;49;36m'
mseDCYAN='\e[2;49;36m'
mseLCYAN='\e[20;49;96m'
mseDLCYAN='\e[2;49;96m'
mseWHITE='\e[20;49;37m'
mseDWHITE='\e[2;49;37m'
mseLWHITE='\e[20;49;97m'
mseDLWHITE='\e[2;49;97m'
MSE_MD_ICOLOR_AVAILABLE_COLOR_NAMES=(
  'NONE'
  'BLACK'   'DBLACK'  'LBLACK'  'DLBLACK'
  'RED'     'DRED'    'LRED'    'DLRED'
  'GREEN'   'DGREEN'  'LGREEN'  'DLGREEN'
  'YELLOW'  'DYELLOW' 'LYELLOW' 'DLYELLOW'
  'BLUE'    'DBLUE'   'LBLUE'   'DLBLUE'
  'PURPLE'  'DPURPLE' 'LPURPLE' 'DLPURPLE'
  'CYAN'    'DCYAN'   'LCYAN'   'DLCYAN'
  'WHITE'   'DWHITE'  'LWHITE'  'DLWHITE'
)
MSE_MD_ICOLOR_AVAILABLE_COLOR_LABELS=(
  'Normal'
  'Black'   'Black + Dark'  'Black Light'   'Black Light + Dark'
  'Red'     'Red + Dark'    'Red Light'     'Red Light + Dark'
  'Green'   'Green + Dark'  'Green Light'   'Green Light + Dark'
  'Yellow'  'Yellow + Dark' 'Yellow Light'  'Yellow Light + Dark'
  'Blue'    'Blue + Dark'   'Blue Light'    'Blue Light + Dark'
  'Purple'  'Purple + Dark' 'Purple Light'  'Purple Light + Dark'
  'Cyan'    'Cyan + Dark'   'Cyan Light'    'Cyan Light + Dark'
  'White'   'White + Dark'  'White Light'   'White Light + Dark'
)
MSE_MD_ICOLOR_AVAILABLE_COLOR_CODES=(
  '39'
  '30' '230' '90' '290'
  '31' '231' '91' '291'
  '32' '232' '92' '292'
  '33' '233' '93' '293'
  '34' '234' '94' '294'
  '35' '235' '95' '295'
  '36' '236' '96' '296'
  '37' '237' '97' '297'
)
MSE_MD_ICOLOR_AVAILABLE_BGCOLOR_CODES=(
  '49'
  '40' '' '100' ''
  '41' '' '101' ''
  '42' '' '102' ''
  '43' '' '103' ''
  '44' '' '104' ''
  '45' '' '105' ''
  '46' '' '106' ''
  '47' '' '107' ''
)
MSE_MD_ICOLOR_AVAILABLE_FONT_ATTRIBUTE_NAMES=(
  'NONE'
  'BOLD'    'DARK'    'ITALIC'    'UNDERLINE'
  'BLINKS'  'BLINKF'  'REVERSE'   'HIDE'        'STRIKE'
  'RBOLD'   'RDARK'   'RITALIC'   'RUNDERLINE'
  'RBLINKS' 'RBLINKF' 'RREVERSE'  'RHIDE'       'RSTRIKE'
)
MSE_MD_ICOLOR_AVAILABLE_FONT_ATTRIBUTE_CODES=(
  '20'
  '1'   '2'   '3'   '4'
  '5'   '6'   '7'   '8'   '9'
  '21'  '22'  '23'  '24'
  '25'  '16'  '27'  '28'  '29'
)
# END :: colors.sh


# INI :: aliases.sh
alias mse="mse_mmod_ini_cmd"
# END :: aliases.sh


# INI :: mse_check_hasKeyInAssocArray.sh
mse_check_hasKeyInAssocArray() {
  local mseReturn
  declare -n assocName="$2"
  if [ ! -z "${assocName[$1]+x}" ]; then mseReturn=1; else mseReturn=0; fi
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["check has keyInAssocArray"]="mse_check_hasKeyInAssocArray"
mse_check_hasKeyInAssocArray_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=2
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="KeyName :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="AssocArrayName :: r :: assocName"
}
# END :: mse_check_hasKeyInAssocArray.sh


# INI :: mse_check_hasValueInArray.sh
mse_check_hasValueInArray() {
  local mseSearchValue="$1"
  declare -n arrayName="$2"
  local mseArrayLength="${#arrayName[@]}"
  local mseCaseInsensitive
  local mseReturnIndex
  mseCaseInsensitive=0
  if [ $# -ge 3 ] && [ "$3" == "1" ]; then
    mseCaseInsensitive=1
  fi
  mseReturnIndex=0
  if [ $# -ge 4 ] && [ "$4" == "1" ]; then
    mseReturnIndex=1
  fi
  local i
  local mseResultIndex=""
  local mseResultBool=0
  if [ "${mseCaseInsensitive}" == "0" ]; then
    for ((i=0; i<mseArrayLength; i++)); do
      if [ "${arrayName[$i]}" == "${mseSearchValue}" ]; then
        mseResultIndex="$i"
        mseResultBool="1"
        break
      fi
    done
  elif [ "${mseCaseInsensitive}" == "1" ]; then
    for ((i=0; i<mseArrayLength; i++)); do
      if [ "${arrayName[$i]^^}" == "${mseSearchValue^^}" ]; then
        mseResultIndex="$i"
        mseResultBool="1"
        break
      fi
    done
  fi
  if [ "${mseReturnIndex}" == "1" ]; then
    printf "%s" "${mseResultIndex}"
  else
    printf "%s" "${mseResultBool}"
  fi
}
MSE_GLOBAL_CMD["check has valueInArray"]="mse_check_hasValueInArray"
mse_check_hasValueInArray_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=4
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Value :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="ArrayName :: r :: arrayName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="CaseInsensitive :: o :: bool"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="ReturnIndex :: o :: bool"
}
# END :: mse_check_hasValueInArray.sh


# INI :: mse_check_isChar.sh
mse_check_isChar() {
  local mseReturn
  local oLC_CTYPE="$LC_CTYPE"
  LC_CTYPE=""
  if [ "${#1}" == 1 ]; then mseReturn=1; else mseReturn=0; fi
  LC_CTYPE="${oLC_CTYPE}"
  printf "%s" "$mseReturn"
}
MSE_GLOBAL_CMD["check is char"]="mse_check_isChar"
mse_check_isChar_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Value :: r :: string"
}
# END :: mse_check_isChar.sh


# INI :: mse_check_isCharDecimal.sh
mse_check_isCharDecimal() {
  local mseReturn
  local mseI
  local mseREG
  local mseArrParam
  mseREG='^[0-9]+$'
  mseArrParam=(${1// / })
  mseReturn=1
  for (( mseI=0; mseI<${#mseArrParam[@]}; mseI++ )); do
    if [ $mseReturn == 1 ]; then
      if ! [[ "${mseArrParam[$mseI]}" =~ $mseREG ]]; then
        mseReturn=0
        break
      fi
    fi
  done
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["check is charDecimal"]="mse_check_isCharDecimal"
mse_check_isCharDecimal_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Value :: r :: string"
}
# END :: mse_check_isCharDecimal.sh


# INI :: mse_check_isCharHex.sh
mse_check_isCharHex() {
  local mseReturn
  local mseI
  local mseREG
  local mseArrParam
  mseREG='^[0-9A-Fa-f]{1,2}$'
  mseArrParam=(${1// / })
  mseReturn=1
  for (( mseI=0; mseI<${#mseArrParam[@]}; mseI++ )); do
    if [ $mseReturn == 1 ]; then
      if ! [[ "${mseArrParam[$mseI]}" =~ $mseREG ]]; then
        mseReturn=0
        break
      fi
    fi
  done
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["check is charHex"]="mse_check_isCharHex"
mse_check_isCharHex_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Value :: r :: string"
}
# END :: mse_check_isCharHex.sh


# INI :: mse_check_isCharOctal.sh
mse_check_isCharOctal() {
  local mseReturn
  local mseI
  local mseREG
  local mseArrParam
  mseREG='^[0-7]{3}$'
  mseArrParam=(${1// / })
  mseReturn=1
  for (( mseI=0; mseI<${#mseArrParam[@]}; mseI++ )); do
    if [ $mseReturn == 1 ]; then
      if ! [[ "${mseArrParam[$mseI]}" =~ $mseREG ]]; then
        mseReturn=0
        break
      fi
    fi
  done
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["check is charOctal"]="mse_check_isCharOctal"
mse_check_isCharOctal_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Value :: r :: string"
}
# END :: mse_check_isCharOctal.sh


# INI :: mse_check_isCommandExists.sh
mse_check_isCommandExists() {
  local mseReturn
  $1 &> /dev/null
  if [ $? == 0 ]; then mseReturn=1; else mseReturn=0; fi
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["check is commandExists"]="mse_check_isCommandExists"
mse_check_isCommandExists_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Command :: r :: string"
}
# END :: mse_check_isCommandExists.sh


# INI :: mse_check_isFunctionExists.sh
mse_check_isFunctionExists() {
  local mseReturn
  if [ "$(type -t $1)" == "function" ]; then mseReturn=1; else mseReturn=0; fi
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["check is functionExists"]="mse_check_isFunctionExists"
mse_check_isFunctionExists_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Value :: r :: string"
}
# END :: mse_check_isFunctionExists.sh


# INI :: mse_check_isInteger.sh
mse_check_isInteger() {
  local mseReturn
  local regEx
  regEx='^[-]?[0-9]+$'
  if [[ "$1" =~ $regEx ]]; then mseReturn=1; else mseReturn=0; fi
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["check is integer"]="mse_check_isInteger"
mse_check_isInteger_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Value :: r :: string"
}
# END :: mse_check_isInteger.sh


# INI :: mse_str_join.sh
mse_str_join() {
  local mseGlue
  local mseGlueLen
  mseGlue="$1"
  mseGlueLen="${#mseGlue}"
  declare -n mseArrayName="$2"
  mseReturn=$(printf "%s${1}" "${mseArrayName[@]}")
  if [ $mseGlueLen -gt 0 ]; then
    mseReturn="${mseReturn:: -$mseGlueLen}"
  fi
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["str join"]="mse_str_join"
mse_str_join_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=2
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Glue :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="ArrayName :: r :: arrayName"
}
# END :: mse_str_join.sh


# INI :: mse_str_pad.sh
mse_str_pad() {
  local mseNStr=""
  local mseOStr="${1}"
  local msePadChar="${2}"
  local mseTotalLength="${3}"
  local msePadPosition="${4}"
  if [ "${msePadPosition}" == "left" ] || [ "${msePadPosition}" == "l" ]; then
    msePadPosition="l"
  elif [ "${msePadPosition}" == "right" ] || [ "${msePadPosition}" == "r" ]; then
    msePadPosition="r"
  else
    msePadPosition=""
  fi
  if [ "${#msePadChar}" == "1" ] && [ "${mseTotalLength}" -gt 0 ] && [ "${msePadPosition}" != "" ]; then
    mseNStr="${mseOStr}"
    if [ "${mseTotalLength}" -gt "${#mseNStr}" ]; then
      local mseStringLength="${#mseNStr}"
      local msePadLeft=0
      local msePadStr=""
      ((msePadLeft=mseTotalLength-mseStringLength))
      if [ "${msePadChar}" == " " ]; then
        msePadStr=$(printf "%-${msePadLeft}s")
      else
        msePadStr=$(eval printf "${msePadChar}%.0s" {1..${msePadLeft}})
      fi
      if [ "${msePadPosition}" == "l" ]; then
        mseNStr="${msePadStr}${mseNStr}"
      elif [ "${msePadPosition}" == "r" ]; then
        mseNStr="${mseNStr}${msePadStr}"
      fi
    fi
  fi
  printf "%s" "${mseNStr}"
}
MSE_GLOBAL_CMD["str pad"]="mse_str_pad"
mse_str_pad_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=4
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="String :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="PadChar :: r :: char"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="TotalLength :: r :: int"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="PadPosition :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3_labels"]="left, right"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3_values"]="l, r"
}
# END :: mse_str_pad.sh


# INI :: mse_str_replace.sh
mse_str_replace() {
  local mseReturn
  local mseOld
  local mseNew
  local mseString
  mseOld="$1"
  mseNew="$2"
  mseString="$3"
  mseReturn="${mseString//${mseOld}/${mseNew}}"
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["str replace"]="mse_str_replace"
mse_str_replace_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=3
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Old :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="New :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="String :: r :: string"
}
# END :: mse_str_replace.sh


# INI :: mse_str_replacePlaceHolder.sh
mse_str_replacePlaceHolder() {
  if [ $# -ge 3 ]; then
    local mseOriginalString
    local msePH
    local mseValue
    if [ $# == 3 ]; then
      mseOriginalString="$1"
      msePH="\[\[${2}\]\]"
      mseValue="$3"
      printf "%s" "${mseOriginalString//${msePH}/${mseValue}}"
    else
      local i
      local v
      local mseTotalParans
      local mseTmpParametersArray
      local mseReturn="$1"
      mseTmpParametersArray=("$@")
      mseTmpParametersArray=("${mseTmpParametersArray[@]:1}")
      mseTotalParans="${#mseTmpParametersArray[@]}"
      for ((i=0; i<mseTotalParans; i=i+2)); do
        ((v=i+1))
        if [ "${v}" -lt "${mseTotalParans}" ]; then
          msePH="${mseTmpParametersArray[$i]}"
          mseValue="${mseTmpParametersArray[$v]}"
          mseReturn=$(mse_str_replacePlaceHolder "${mseReturn}" "${msePH}" "${mseValue}")
        fi
      done
      printf "${mseReturn}"
    fi
  fi
}
MSE_GLOBAL_CMD["str replacePlaceHolder"]="mse_str_replacePlaceHolder"
mse_str_replacePlaceHolder_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=3
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="OriginalString :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="PlaceHolderName :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="NewValue :: r :: string"
}
# END :: mse_str_replacePlaceHolder.sh


# INI :: mse_str_replacePlaceHolderColor.sh
mse_str_replacePlaceHolderColor() {
  if [ $# -ge 4 ]; then
    local mseOriginalString
    local msePH
    local mseValue
    local mseColor
    if [ $# == 4 ]; then
      mseOriginalString="$1"
      msePH="\[\[${2}\]\]"
      mseValue=$(printf "${4}${3}${mseNONE}")
      printf "%s" "${mseOriginalString//${msePH}/${mseValue}}"
    else
      local i
      local v
      local c
      local mseTotalParans
      local mseTmpParametersArray
      local mseReturn="$1"
      mseTmpParametersArray=("$@")
      mseTmpParametersArray=("${mseTmpParametersArray[@]:1}")
      mseTotalParans="${#mseTmpParametersArray[@]}"
      for ((i=0; i<mseTotalParans; i=i+3)); do
        ((v=i+1))
        ((c=i+2))
        if [ "${v}" -lt "${mseTotalParans}" ]; then
          msePH="${mseTmpParametersArray[$i]}"
          mseValue="${mseTmpParametersArray[$v]}"
          mseColor="${mseTmpParametersArray[$c]}"
          mseReturn=$(mse_str_replacePlaceHolderColor "${mseReturn}" "${msePH}" "${mseValue}" "${mseColor}")
        fi
      done
      printf "${mseReturn}"
    fi
  fi
}
MSE_GLOBAL_CMD["str replacePlaceHolderColor"]="mse_str_replacePlaceHolderColor"
mse_str_replacePlaceHolder_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=4
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="OriginalString :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="PlaceHolderName :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="NewValue :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="ColorCode :: r :: string"
}
# END :: mse_str_replacePlaceHolderColor.sh


# INI :: mse_str_split.sh
mse_str_split() {
  local mseDelimiter
  local mseString
  local mseSubStr
  local mseRemoveEmpty
  unset MSE_GLOBAL_MODULE_SPLIT_RESULT
  declare -ga MSE_GLOBAL_MODULE_SPLIT_RESULT
  mseDelimiter="$1"
  mseString="$2"
  mseSubStr=""
  mseRemoveEmpty="0"
  mseTrimElements="0"
  if [ $# -ge 3 ] && [ "$3" == "1" ]; then
    mseRemoveEmpty="1"
  fi
  if [ $# -ge 4 ] && [ "$4" == "1" ]; then
    mseTrimElements="1"
  fi
  while [ "${mseString}" != "" ]; do
    if [[ "$mseString" != *"$mseDelimiter"* ]]; then
      if [ "${mseTrimElements}" == "1" ]; then
        mseString=$(mse_str_trim "${mseString}")
      fi
      MSE_GLOBAL_MODULE_SPLIT_RESULT+=("$mseString")
      break
    else
      mseSubStr="${mseString%%${mseDelimiter}*}"
      if [ "${mseTrimElements}" == "1" ]; then
        mseSubStr=$(mse_str_trim "${mseSubStr}")
      fi
      if [ "${mseSubStr}" != "" ] || [ "${mseRemoveEmpty}" == "0" ]; then
        MSE_GLOBAL_MODULE_SPLIT_RESULT+=("$mseSubStr")
      fi
      mseString="${mseString#*${mseDelimiter}}"
    fi
  done
}
MSE_GLOBAL_CMD["str split"]="mse_str_split"
mse_str_split_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=4
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Delimiter :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="String :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="RemoveEmpty :: o :: bool"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="Trim :: o :: bool"
  local mseTmpThisDirectory=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
  local msePathToLocaleParamDescription="${mseTmpThisDirectory}/assets/locale/${MSE_GLOBAL_MODULE_LOCALE}/completion/mse_str_split.sh"
  if [ -f "${msePathToLocaleParamDescription}" ]; then
    . "${msePathToLocaleParamDescription}"
  fi
}
# END :: mse_str_split.sh


# INI :: mse_str_splitInLines.sh
mse_str_splitInLines() {
  local mseOriginalString
  local mseMaxLineLength
  if [ $# -ge 2 ]; then
    mseOriginalString=$(mse_str_trim "${1}")
    if [ "${mseOriginalString}" != "" ]; then
      local mseCheck=$(mse_check_isInteger "${2}")
      if [ "${mseCheck}" == "0" ] || [ "${mseCheck}" -lt "1" ]; then
        mseMaxLineLength="${COLUMNS}"
      else
        mseMaxLineLength="${2}"
      fi
      mse_str_split " " "${mseOriginalString}"
      local mseWord=""
      local mseTmpWordLength="0"
      local mseTmpLineLength="0"
      local mseTmpLineSpaces="0"
      local mseTmpStrLine=""
      declare -a mseTmpSplitArrayResult=()
      declare -a mseTmpArrayLineWords=()
      local oLC_CTYPE="$LC_CTYPE"
      LC_CTYPE=""
      for mseWord in "${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"; do
        mseTmpWordLength=${#mseWord}
        mseTmpLineSpaces="${#mseTmpArrayLineWords[@]}"
        ((mseTmpLineSpaces = mseTmpLineSpaces - 1))
        if ((mseTmpLineLength + mseTmpWordLength + mseTmpLineSpaces >= mseMaxLineLength)); then
          mseTmpStrLine=$(mse_str_join " " "mseTmpArrayLineWords")
          mseTmpSplitArrayResult+=("${mseTmpStrLine}")
          mseTmpArrayLineWords=()
          mseTmpLineLength="0"
        fi
        mseTmpArrayLineWords+=("${mseWord}")
        ((mseTmpLineLength = mseTmpLineLength + mseTmpWordLength))
      done
      LC_CTYPE="${oLC_CTYPE}"
      if [ "${#mseTmpArrayLineWords[@]}" -gt 0 ]; then
        mseTmpStrLine=$(mse_str_join " " "mseTmpArrayLineWords")
        mseTmpSplitArrayResult+=("${mseTmpStrLine}")
      fi
      unset MSE_GLOBAL_MODULE_SPLIT_RESULT
      declare -ga MSE_GLOBAL_MODULE_SPLIT_RESULT
      MSE_GLOBAL_MODULE_SPLIT_RESULT=("${mseTmpSplitArrayResult[@]}")
    fi
  fi
}
MSE_GLOBAL_CMD["str splitInLines"]="mse_str_splitInLines"
test_mse_str_splitInLines_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=2
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="OriginalString :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="MaxLineLength :: o :: int"
}
# END :: mse_str_splitInLines.sh


# INI :: mse_str_toLower.sh
mse_str_toLower() {
  printf "%s" "${1,,}"
}
MSE_GLOBAL_CMD["str toLower"]="mse_str_toLower"
mse_str_toLower_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="String :: r :: string"
}
# END :: mse_str_toLower.sh


# INI :: mse_str_toUpper.sh
mse_str_toUpper() {
  printf "%s" "${1^^}"
}
MSE_GLOBAL_CMD["str toUpper"]="mse_str_toUpper"
mse_str_toUpper_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="String :: r :: string"
}
# END :: mse_str_toUpper.sh


# INI :: mse_str_trim.sh
mse_str_trim() {
  local str
  str="$1"
  str="${str#"${str%%[![:space:]]*}"}" # trim L
  str="${str%"${str##*[![:space:]]}"}" # trim R
  printf "%s" "${str}"
}
MSE_GLOBAL_CMD["str trim"]="mse_str_trim"
mse_str_trim_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="String :: r :: string"
}
# END :: mse_str_trim.sh


# INI :: mse_str_trimD.sh
mse_str_trimD() {
  local mseArrTmp
  local mseArrLen
  local mseArrLen
  mseReturn="$2"
  mse_str_split "$1" "$2"
  mseArrTmp=("${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}")
  mseArrLen="${#mseArrTmp[@]}"
  if [ $mseArrLen -gt 0 ]; then
    local i
    local ii
    local li
    local elem
    local mseArrElemOne
    local mseArrElemLas
    local mseTrimType
    i=0
    ((li=mseArrLen-1))
    mseArrElemOne="${mseArrTmp[$ii]}"
    mseArrElemLas="${mseArrTmp[$li]}"
    mseTrimType='both'
    if [ $# -ge 3 ]; then
      if [ "${3,,}" == "r" ] || [ "${3,,}" == "right" ]; then
        mseTrimType='right'
      elif [ "${3,,}" == "l" ] || [ "${3,,}" == "left" ]; then
        mseTrimType='left'
      fi
    fi
    if [ "${mseTrimType}" == "both" ] || [ "${mseTrimType}" == "left" ]; then
      mseArrTmp[$ii]="${mseArrElemOne%"${mseArrElemOne##*[![:space:]]}"}" # trim R
    fi
    if [ "${mseTrimType}" == "both" ] || [ "${mseTrimType}" == "right" ]; then
      mseArrTmp[$li]="${mseArrElemLas#"${mseArrElemLas%%[![:space:]]*}"}" # trim L
    fi
    if [ $mseArrLen -gt 2 ]; then
      for (( i=1; i<li; i++ )); do
        elem="${mseArrTmp[$i]}"
        if [ "${mseTrimType}" == "both" ] || [ "${mseTrimType}" == "left" ]; then
          elem="${elem%"${elem##*[![:space:]]}"}" # trim R
        fi
        if [ "${mseTrimType}" == "both" ] || [ "${mseTrimType}" == "right" ]; then
          elem="${elem#"${elem%%[![:space:]]*}"}" # trim L
        fi
        mseArrTmp[$i]="${elem}"
      done
    fi
  fi
  mseReturn=$(mse_str_join "$1" "mseArrTmp")
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["str trimD"]="mse_str_trimD"
mse_str_trimD_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=3
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Delimiter :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="String :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="Type :: o :: list :: both"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2_labels"]="right, left, both"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2_values"]="r, l, b"
}
# END :: mse_str_trimD.sh


# INI :: mse_str_trimDL.sh
mse_str_trimDL() {
  mse_str_trimD "$1" "$2" "l"
}
MSE_GLOBAL_CMD["str trimDL"]="mse_str_trimDL"
mse_str_trimDL_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=2
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Delimiter :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="String :: r :: string"
}
# END :: mse_str_trimDL.sh


# INI :: mse_str_trimDR.sh
mse_str_trimDR() {
  mse_str_trimD "$1" "$2" "r"
}
MSE_GLOBAL_CMD["str trimDR"]="mse_str_trimDR"
mse_str_trimDR_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=2
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Delimiter :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="String :: r :: string"
}
# END :: mse_str_trimDR.sh


# INI :: mse_str_trimL.sh
mse_str_trimL() {
  local mseReturn
  mseReturn="$1"
  mseReturn="${mseReturn#"${mseReturn%%[![:space:]]*}"}" # trim L
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["str trimL"]="mse_str_trimL"
mse_str_trimL_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="String :: r :: string"
}
# END :: mse_str_trimL.sh


# INI :: mse_str_trimR.sh
mse_str_trimR() {
  local mseReturn
  mseReturn="$1"
  mseReturn="${mseReturn%"${mseReturn##*[![:space:]]}"}" # trim R
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["str trimR"]="mse_str_trimR"
mse_str_trimR_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="String :: r :: string"
}
# END :: mse_str_trimR.sh


# INI :: mse_str_convert_charToDecimal.sh
mse_str_convert_charToDecimal() {
  local mseReturn
  local mseChar
  local mseCharI
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  for (( mseCharI=0; mseCharI<${#1}; mseCharI++ )); do
    mseChar="${1:${mseCharI}:1}"
    if [ "$mseCharI" != "0" ]; then
      mseReturn+=" "
    fi
    mseReturn+=$(printf "%i" "'$mseChar")
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert charToDecimal"]="mse_str_convert_charToDecimal"
mse_str_convert_charToDecimal_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Char :: r :: char"
}
# END :: mse_str_convert_charToDecimal.sh


# INI :: mse_str_convert_charToHex.sh
mse_str_convert_charToHex() {
  local mseReturn
  local mseChar
  local mseCharI
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  for (( mseCharI=0; mseCharI<${#1}; mseCharI++ )); do
    mseChar="${1:${mseCharI}:1}"
    if [ "$mseCharI" != "0" ]; then
      mseReturn+=" "
    fi
    mseReturn+=$(printf "%X" "'$mseChar")
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert charToHex"]="mse_str_convert_charToHex"
mse_str_convert_charToHex_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Char :: r :: char"
}
# END :: mse_str_convert_charToHex.sh


# INI :: mse_str_convert_charToOctal.sh
mse_str_convert_charToOctal() {
  local mseReturn
  local mseChar
  local mseCharI
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  for (( mseCharI=0; mseCharI<${#1}; mseCharI++ )); do
    mseChar="${1:${mseCharI}:1}"
    if [ "$mseCharI" != "0" ]; then
      mseReturn+=" "
    fi
    mseReturn+=$(printf "%03o" "'$mseChar")
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert charToOctal"]="mse_str_convert_charToOctal"
mse_str_convert_charToOctal_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Char :: r :: char"
}
# END :: mse_str_convert_charToOctal.sh


# INI :: mse_str_convert_decimalToChar.sh
mse_str_convert_decimalToChar() {
  local mseReturn
  local mseTmp
  local mseByte
  local mseArrParam
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  mseArrParam=(${1// / })
  for mseByte in "${mseArrParam[@]}"; do
    mseTmp=$(printf "%o" "${mseByte}")
    mseReturn+="\\${mseTmp}"
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert decimalToChar"]="mse_str_convert_decimalToChar"
mse_str_convert_decimalToChar_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Decimal :: r :: charDecimal"
}
# END :: mse_str_convert_decimalToChar.sh


# INI :: mse_str_convert_decimalToHex.sh
mse_str_convert_decimalToHex() {
  local mseReturn
  local mseTmp
  local mseByte
  local mseArrParam
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  mseArrParam=(${1// / })
  for mseByte in "${mseArrParam[@]}"; do
    if [ "${mseReturn}" != "" ]; then
      mseReturn+=' '
    fi
    mseTmp=$(printf "%X" "${mseByte}")
    mseReturn+="${mseTmp}"
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert decimalToHex"]="mse_str_convert_decimalToHex"
mse_str_convert_decimalToHex_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Decimal :: r :: charDecimal"
}
# END :: mse_str_convert_decimalToHex.sh


# INI :: mse_str_convert_decimalToOctal.sh
mse_str_convert_decimalToOctal() {
  local mseReturn
  local mseTmp
  local mseByte
  local mseArrParam
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  mseArrParam=(${1// / })
  for mseByte in "${mseArrParam[@]}"; do
    if [ "${mseReturn}" != "" ]; then
      mseReturn+=' '
    fi
    mseTmp=$(printf "%o" "${mseByte}")
    mseReturn+="${mseTmp}"
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert decimalToOctal"]="mse_str_convert_decimalToOctal"
mse_str_convert_decimalToOctal_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Decimal :: r :: charDecimal"
}
# END :: mse_str_convert_decimalToOctal.sh


# INI :: mse_str_convert_hexToChar.sh
mse_str_convert_hexToChar() {
  local mseReturn
  local mseTmp
  local mseByte
  local mseArrParam
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  mseArrParam=(${1// / })
  for mseByte in "${mseArrParam[@]}"; do
    mseTmp=$(printf $((16#${mseByte})))
    mseTmp=$(printf "%o" ${mseTmp})
    mseReturn+="\\${mseTmp}"
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert hexToChar"]="mse_str_convert_hexToChar"
mse_str_convert_hexToChar_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Hex :: r :: charHex"
}
# END :: mse_str_convert_hexToChar.sh


# INI :: mse_str_convert_hexToDecimal.sh
mse_str_convert_hexToDecimal() {
  local mseReturn
  local mseTmp
  local mseByte
  local mseArrParam
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  mseArrParam=(${1// / })
  for mseByte in "${mseArrParam[@]}"; do
    if [ "${mseReturn}" != "" ]; then
      mseReturn+=' '
    fi
    mseTmp=$(printf $((16#${mseByte})))
    mseReturn+="${mseTmp}"
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert hexToDecimal"]="mse_str_convert_hexToDecimal"
mse_str_convert_hexToDecimal_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Hex :: r :: charHex"
}
# END :: mse_str_convert_hexToDecimal.sh


# INI :: mse_str_convert_hexToOctal.sh
mse_str_convert_hexToOctal() {
  local mseReturn
  local mseTmp
  local mseByte
  local mseArrParam
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  mseArrParam=(${1// / })
  for mseByte in "${mseArrParam[@]}"; do
    if [ "${mseReturn}" != "" ]; then
      mseReturn+=' '
    fi
    mseTmp=$(printf $((16#${mseByte})))
    mseTmp=$(printf "%o" ${mseTmp})
    mseReturn+="${mseTmp}"
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert hexToOctal"]="mse_str_convert_hexToOctal"
mse_str_convert_hexToOctal_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Hex :: r :: charHex"
}
# END :: mse_str_convert_hexToOctal.sh


# INI :: mse_str_convert_octalToChar.sh
mse_str_convert_octalToChar() {
  local mseReturn
  local mseTmp
  local mseByte
  local mseArrParam
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  mseArrParam=(${1// / })
  for mseByte in "${mseArrParam[@]}"; do
    mseReturn+="\\${mseByte[$i]}"
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert octalToChar"]="mse_str_convert_octalToChar"
mse_str_convert_octalToChar_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Octal :: r :: charOctal"
}
# END :: mse_str_convert_octalToChar.sh


# INI :: mse_str_convert_octalToDecimal.sh
mse_str_convert_octalToDecimal() {
  local mseReturn
  local mseTmp
  local mseByte
  local mseArrParam
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  mseArrParam=(${1// / })
  for mseByte in "${mseArrParam[@]}"; do
    if [ "$mseReturn" != "" ]; then
      mseReturn+=" "
    fi
    mseTmp=$(printf $((8#${mseByte})))
    mseReturn+="${mseTmp}"
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert octalToDecimal"]="mse_str_convert_octalToDecimal"
mse_str_convert_octalToDecimal_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Octal :: r :: charOctal"
}
# END :: mse_str_convert_octalToDecimal.sh


# INI :: mse_str_convert_octalToHex.sh
mse_str_convert_octalToHex() {
  local mseReturn
  local mseTmp
  local mseByte
  local mseArrParam
  local oLC_CTYPE="${LC_CTYPE}"
  LC_CTYPE="C"
  mseReturn=""
  mseArrParam=(${1// / })
  for mseByte in "${mseArrParam[@]}"; do
    if [ "$mseReturn" != "" ]; then
      mseReturn+=" "
    fi
    mseTmp=$(printf $((8#${mseByte})))
    mseTmp=$(printf "%X" ${mseTmp})
    mseReturn+="${mseTmp}"
  done
  LC_CTYPE="${oLC_CTYPE}"
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["str convert octalToHex"]="mse_str_convert_octalToHex"
mse_str_convert_octalToHex_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Octal :: r :: charOctal"
}
# END :: mse_str_convert_octalToHex.sh


# INI :: mse_exec_clearVars.sh
mse_exec_clearVars() {
  declare -g MSE_GLOBAL_LASTERR=""
  declare -g MSE_GLOBAL_RETURN=""
  unset MSE_GLOBAL_VALIDATE_PARAMETERS_DATA
  declare -ga MSE_GLOBAL_VALIDATE_PARAMETERS_DATA
  unset MSE_GLOBAL_VALIDATE_PARAMETERS_RULES
  declare -gA MSE_GLOBAL_VALIDATE_PARAMETERS_RULES
  unset MSE_GLOBAL_MODULE_SPLIT_RESULT
  declare -ga MSE_GLOBAL_MODULE_SPLIT_RESULT
}
# END :: mse_exec_clearVars.sh


# INI :: mse_exec_ifValidate.sh
mse_exec_ifValidate() {
  local mseReturn
  local mseFunctionName
  local mseTmpParametersArray
  mse_exec_validate "$@" &> /dev/null
  if [ $? == 0 ]; then
    mseFunctionName="$1"
    mseTmpParametersArray=("$@")
    mseTmpParametersArray=("${mseTmpParametersArray[@]:1}")
    mseReturn=$("$mseFunctionName" "${mseTmpParametersArray[@]}")
    if [ $? == 0 ]; then
      MSE_GLOBAL_RETURN="${mseReturn}"
      return 0
    else
      MSE_GLOBAL_LASTERR="${mseReturn}"
      return 1
    fi
  else
    return 1
  fi
}
# END :: mse_exec_ifValidate.sh


# INI :: mse_exec_validate.sh
mse_exec_validate() {
  mse_exec_clearVars
  local mseReturn
  local mseFunctionName
  local mseFunctionValidateRules
  mseFunctionName="$1"
  mseFunctionValidateRules="${mseFunctionName}_vldtr"
  if [ "$(type -t $mseFunctionValidateRules)" != "function" ]; then
    mseReturn=1;
  else
    MSE_GLOBAL_VALIDATE_PARAMETERS_DATA=("$@")
    MSE_GLOBAL_VALIDATE_PARAMETERS_DATA=("${MSE_GLOBAL_VALIDATE_PARAMETERS_DATA[@]:1}")
    $mseFunctionValidateRules
    mseReturn=$(mse_exec_validateParams "MSE_GLOBAL_VALIDATE_PARAMETERS_RULES" "MSE_GLOBAL_VALIDATE_PARAMETERS_DATA")
    if [ "${mseReturn}" != 1 ]; then
      MSE_GLOBAL_LASTERR="${mseReturn}"
      mseReturn=0
    else
      mseReturn=1
    fi
  fi
  printf "%s" "${mseReturn}"
  if [ "${mseReturn}" == 1 ]; then
    return 0
  else
    return 1
  fi
}
# END :: mse_exec_validate.sh


# INI :: mse_exec_validateParams.sh
mse_exec_validateParams() {
  local mseReturn
  mseReturn=1
  if [ $# -le 2 ] || [ "$3" != "1" ]; then
    declare -a mseCheckData=("$@")
    declare -A mseCheckParams
    mseCheckParams["count"]="3"
    mseCheckParams["param_0"]="ValidateRules :: r :: assocName :: :: count"
    mseCheckParams["param_1"]="ValidateData :: r :: arrayName"
    mseReturn=$(mse_exec_validateParams "mseCheckParams" "mseCheckData" "1")
  fi
  if [ "$mseReturn" == 1 ]; then
    local mseCurrentParam
    local mseCurrentParamIsSet
    declare -n mseRawParamRules
    local mseRawParamRulesName
    local mseRawParamRulesLength
    local mseRawCurrentParamRule
    local mseRawCurrentParamRuleKey
    local mseRawCurrentParamRuleValues
    declare -n mseRawParamData
    local mseRawParamDataLength
    local mseRawCurrentParamDataValue
    local mseParamL
    local mseParamI
    local mseParamCk
    local mseParamLabel
    local mseParamRequired
    local mseParamType
    local mseParamDefault
    local mseParamMaxLength
    local mseParamMin
    local mseParamMax
    local mseParamCreate
    local mseParamAssocKeys
    local mseParamListLabels
    local mseParamListValues
    local mseParamFunctionName
    local mseTmpMsg
    mseCurrentParam=0
    mseRawParamRules="$1"
    mseRawParamRulesName="$1"
    mseRawParamRulesLength="${mseRawParamRules[count]}"
    mseRawCurrentParamRule=""
    mseRawParamData="$2"
    mseRawParamDataLength="${#mseRawParamData[@]}"
    for ((mseCurrentParam=0; mseCurrentParam<mseRawParamRulesLength; mseCurrentParam++)); do
      if [ "${mseReturn}" == 1 ]; then
        mseCurrentParamIsSet=0
        mseRawCurrentParamDataValue=""
        mseRawCurrentParamRuleKey="param_${mseCurrentParam}"
        if [ ! -z "${mseRawParamRules[$mseRawCurrentParamRuleKey]+x}" ] && [ "${mseRawParamRules[$mseRawCurrentParamRuleKey]}" != "" ]; then
          mseRawCurrentParamRule="${mseRawParamRules[$mseRawCurrentParamRuleKey]}"
          mse_str_split "::" "${mseRawCurrentParamRule}"
          mseRawCurrentParamRuleValues=("${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}")
          if [ "${#mseRawCurrentParamRuleValues[@]}" -lt 3 ]; then
            mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseRawCurrentParamRule}")
          else
            mseParamL="${#mseRawCurrentParamRuleValues[@]}"
            for ((mseParamI=0; mseParamI<mseParamL; mseParamI++)); do
              mseRawCurrentParamRuleValues[$mseParamI]=$(mse_str_trim "${mseRawCurrentParamRuleValues[$mseParamI]}")
            done
            mseParamLabel="${mseRawCurrentParamRuleValues[0]}"
            mseParamRequired="${mseRawCurrentParamRuleValues[1]}"
            mseParamType="${mseRawCurrentParamRuleValues[2]}"
            if [ "$mseParamLabel" == "" ]; then
              mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_CannotBeEmpty}" "FIELDNAME_A" "Label")
              mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
            fi
            if [ "${mseReturn}" == 1 ]; then
              if [ "$mseParamRequired" == "" ]; then
                mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_CannotBeEmpty}" "FIELDNAME_A" "Required")
                mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
              else
                case "$mseParamRequired" in
                  optional | opt | o | 0)
                    mseParamRequired=0
                  ;;
                  required | req | r | 1)
                    mseParamRequired=1
                  ;;
                  *)
                    mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_HasAnInvalidValue}" "FIELDNAME_A" "Required")
                    mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                  ;;
                esac
              fi
            fi
            if [ "${mseReturn}" == 1 ]; then
              if [ "$mseParamType" == "" ]; then
                mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_CannotBeEmpty}" "FIELDNAME_A" "Type")
                mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
              else
                mseParamDefault=""
                mseParamFunctionName=""
                if [ "${#mseRawCurrentParamRuleValues[@]}" -ge 4 ]; then
                  case "$mseParamType" in
                    bool | string | char | charDecimal | charHex | charOctal | int | fileName | dirName | functionName | arrayName | assocName | list)
                      mseParamDefault="${mseRawCurrentParamRuleValues[3]}"
                    ;;
                    validateFN)
                      mseParamFunctionName="${mseRawCurrentParamRuleValues[3]}"
                      mseParamCk=$(mse_check_isFunctionExists "$mseParamFunctionName")
                      if [ $mseParamCk == 0 ]; then
                        mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_PointsToNonExistentFunction}" "FIELDNAME_A" "ValidateFunction")
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                      fi
                    ;;
                    *)
                      mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_HasAnInvalidValue}" "FIELDNAME_A" "Type")
                      mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                    ;;
                  esac
                fi
              fi
            fi
            if [ "${mseReturn}" == 1 ]; then
              mseParamMaxLength=""
              mseParamMin=""
              mseParamMax=""
              mseParamCreate=""
              mseParamAssocKeys=""
              mseParamListLabels=""
              mseParamListValues=""
              case "$mseParamType" in
                string)
                  if [ $mseParamL -ge 5 ]; then
                    mseParamMaxLength="${mseRawCurrentParamRuleValues[4]}"
                    mseParamCk=$(mse_check_isInteger "$mseParamMaxLength")
                    if [ $mseParamCk == 0 ]; then
                      mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_MustBeAnInteger}" "FIELDNAME_A" "MaxLength")
                      mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                    else
                      if [ $mseParamMaxLength -lt 1 ]; then
                        mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_MustBeGreaterThanZero}" "FIELDNAME_A" "MaxLength")
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                      fi
                    fi
                  fi
                ;;
                int | arrayName)
                  if [ $mseParamL -ge 5 ]; then
                    mseParamMin="${mseRawCurrentParamRuleValues[4]}"
                    mseParamCk=$(mse_check_isInteger "$mseParamMin")
                    if [ $mseParamCk == 0 ]; then
                      mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_MustBeAnInteger}" "FIELDNAME_A" "Min")
                      mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                    fi
                  fi
                  if [ "${mseReturn}" == 1 ] && [ $mseParamL -ge 6 ]; then
                    mseParamMax="${mseRawCurrentParamRuleValues[5]}"
                    mseParamCk=$(mse_check_isInteger "$mseParamMax")
                    if [ $mseParamCk == 0 ]; then
                      mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_MustBeAnInteger}" "FIELDNAME_A" "Max")
                      mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                    fi
                  fi
                  if [ "$mseReturn" == 1 ]; then
                    if [ "$mseParamMin" != "" ] && [ "$mseParamMax" != "" ] && [ "$mseParamMin" -gt "$mseParamMax" ]; then
                      mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_IsGreaterThan_FieldB}" "FIELDNAME_A" "Min" "FIELDNAME_B" "Max")
                      mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                    fi
                  fi
                  if [ "$mseReturn" == 1 ] && [ "$mseParamType" == "arrayName" ]; then
                    if [ "$mseParamMin" != "" ] && [ "$mseParamMin" -lt 0 ]; then
                      mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_forTypeA_FieldA_MustBeGreaterOrEqualsToZero}" "TYPE_A" "arrayName" "FIELDNAME_A" "Min")
                      mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                    elif [ "$mseParamMax" != "" ] && [ "$mseParamMax" -lt 1 ]; then
                      mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_forTypeA_FieldA_MustBeGreaterOrEqualsToOne}" "TYPE_A" "arrayName" "FIELDNAME_A" "Max")
                      mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                    fi
                  fi
                ;;
                fileName | dirName)
                  mseParamCreate="0"
                  if [ $mseParamL -ge 5 ]; then
                    case "${mseRawCurrentParamRuleValues[4]}" in
                      create | yes | y | 1)
                        mseParamCreate=1
                      ;;
                      nocreate | no | n | 0)
                        mseParamCreate=0
                      ;;
                      *)
                        mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_HasAnInvalidOption}" "FIELDNAME_A" "${mseParamType}")
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                      ;;
                    esac
                  fi
                ;;
                assocName)
                  mseParamAssocKeys=()
                  if [ $mseParamL -ge 5 ] && [ "${mseRawCurrentParamRuleValues[4]}" != "" ]; then
                    local mseI
                    local mseL
                    mse_str_split "," "${mseRawCurrentParamRuleValues[4]}"
                    mseParamAssocKeys=("${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}")
                    mseL="${#mseParamAssocKeys[@]}"
                    for ((mseI=0; mseI<mseL; mseI++)); do
                      mseParamAssocKeys[$mseI]=$(mse_str_trim "${mseParamAssocKeys[$mseI]}")
                    done
                  fi
                ;;
                list)
                  local mseParamTmpList
                  mseParamCk=$(mse_check_hasKeyInAssocArray "${mseRawCurrentParamRuleKey}_labels" "${mseRawParamRulesName}")
                  if [ $mseParamCk == 0 ]; then
                    mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_LostThe_A_Collection}" "FIELDNAME_A" "List" "A" "label")
                    mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                  else
                    mseParamTmpList="${mseRawParamRules[${mseRawCurrentParamRuleKey}_labels]}"
                    if [ "$mseParamTmpList" == "" ]; then
                      mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_HasAnEmpty_A_Collection}" "FIELDNAME_A" "List" "A" "label")
                      mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                    else
                      mse_str_split "," "${mseParamTmpList}"
                      mseParamListLabels=("${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}")
                      mseL="${#mseParamListLabels[@]}"
                      for ((mseI=0; mseI<mseL; mseI++)); do
                        mseParamListLabels[$mseI]=$(mse_str_trim "${mseParamListLabels[$mseI]}")
                      done
                    fi
                  fi
                  if [ "${mseReturn}" == 1 ]; then
                    mseParamCk=$(mse_check_hasKeyInAssocArray "${mseRawCurrentParamRuleKey}_values" "${mseRawParamRulesName}")
                    if [ $mseParamCk == 0 ]; then
                      mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_LostThe_A_Collection}" "FIELDNAME_A" "List" "A" "value")
                      mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                    else
                      mseParamTmpList="${mseRawParamRules[${mseRawCurrentParamRuleKey}_values]}"
                      if [ "$mseParamTmpList" == "" ]; then
                        mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_HasAnEmpty_A_Collection}" "FIELDNAME_A" "List" "A" "value")
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                      else
                        mse_str_split "," "${mseParamTmpList}"
                        mseParamListValues=("${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}")
                        mseL="${#mseParamListValues[@]}"
                        for ((mseI=0; mseI<mseL; mseI++)); do
                          mseParamListValues[$mseI]=$(mse_str_trim "${mseParamListValues[$mseI]}")
                        done
                      fi
                    fi
                  fi
                  if [ "${mseReturn}" == 1 ] && [ ${#mseParamListLabels[@]} != ${#mseParamListValues[@]} ]; then
                    mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_fieldA_HasAnIncorrectCorrelationBetween_A_and_B}" "FIELDNAME_A" "List" "A" "labels" "B" "values")
                    mseReturn=$(mse_str_replacePlaceHolder "${lbl_exec_vp_ipd_mainMessage}" "MSG" "${mseTmpMsg}")
                  fi
                ;;
              esac
            fi
            if [ "${mseReturn}" == 1 ]; then
              if [ "$mseCurrentParam" -lt "$mseRawParamDataLength" ]; then
                mseCurrentParamIsSet=1
                mseRawCurrentParamDataValue="${mseRawParamData[$mseCurrentParam]}"
              fi
              if [ $mseCurrentParamIsSet == 0 ] && [ "${mseParamDefault}" != "" ]; then
                mseCurrentParamIsSet=1
                mseRawCurrentParamDataValue="${mseParamDefault}"
              fi
              if [ $mseParamRequired == 1 ] && [ $mseCurrentParamIsSet == 0 ]; then
                ((mseCurrentParam=mseCurrentParam+1))
                mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsRequired}" "PARAM_A" "${mseParamLabel}")
              else
                if [ "${mseRawCurrentParamDataValue}" != "" ]; then
                  case "${mseParamType}" in
                    bool)
                      if [ "${mseRawCurrentParamDataValue}" != 1 ] && [ "${mseRawCurrentParamDataValue}" != 0 ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsNot_A}" "PARAM_A" "${mseParamLabel}" "A" "bool")
                      fi
                    ;;
                    string)
                      local oLC_CTYPE="${LC_CTYPE}"
                      LC_CTYPE=""
                      if [ "$mseParamMaxLength" != "" ] && [ "${#mseRawCurrentParamDataValue}" -gt $mseParamMaxLength ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsGreaterThanMaxLength}" "PARAM_A" "${mseParamLabel}" "MAXLENGTH" "${mseParamMaxLength}")
                      fi
                      LC_CTYPE="${oLC_CTYPE}"
                    ;;
                    char)
                      mseParamCk=$(mse_check_isChar "${mseRawCurrentParamDataValue}")
                      if [ $mseParamCk == 0 ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsNot_A}" "PARAM_A" "${mseParamLabel}" "A" "char")
                      fi
                    ;;
                    charDecimal)
                      mseParamCk=$(mse_check_isCharDecimal "${mseRawCurrentParamDataValue}")
                      if [ $mseParamCk == 0 ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsNotValid_A_RepresentationOf_B}" "PARAM_A" "${mseParamLabel}" "A" "decimal" "B" "char")
                      fi
                    ;;
                    charHex)
                      mseParamCk=$(mse_check_isCharHex "${mseRawCurrentParamDataValue}")
                      if [ $mseParamCk == 0 ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsNotValid_A_RepresentationOf_B}" "PARAM_A" "${mseParamLabel}" "A" "hexadecimal" "B" "char")
                      fi
                    ;;
                    charOctal)
                      mseParamCk=$(mse_check_isCharOctal "${mseRawCurrentParamDataValue}")
                      if [ $mseParamCk == 0 ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsNotValid_A_RepresentationOf_B}" "PARAM_A" "${mseParamLabel}" "A" "octal" "B" "char")
                      fi
                    ;;
                    int)
                      mseParamCk=$(mse_check_isInteger "${mseRawCurrentParamDataValue}")
                      if [ "$mseParamCk" == 0 ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsNotAn_A}" "PARAM_A" "${mseParamLabel}" "A" "integer")
                      else
                        if [ "$mseParamMin" != "" ] && [ "${mseRawCurrentParamDataValue}" -lt "$mseParamMin" ]; then
                          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_MustBeGreaterOrEqualsThan_A}" "PARAM_A" "${mseParamLabel}" "A" "${mseParamMin}")
                        elif [ "$mseParamMax" != "" ] && [ "${mseRawCurrentParamDataValue}" -gt "$mseParamMax" ]; then
                          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_MustBeLessOrEqualsThan_A}" "PARAM_A" "${mseParamLabel}" "A" "${mseParamMax}")
                        fi
                      fi
                    ;;
                    fileName)
                      if [ "${mseParamCreate}" == 1 ] && [ ! -f "${mseRawCurrentParamDataValue}" ]; then
                        > "${mseRawCurrentParamDataValue}"
                        if [ "$?" != 0 ]; then
                          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_cannotCreateNewFileIn}" "LOCAL" "${mseRawCurrentParamDataValue}")
                        fi
                      fi
                      if [ ! -f "${mseRawCurrentParamDataValue}" ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_PointsToNonExistentFile}" "PARAM_A" "${mseParamLabel}")
                      fi
                    ;;
                    dirName)
                      if [ "${mseParamCreate}" == 1 ] && [ ! -d "${mseRawCurrentParamDataValue}" ]; then
                        mkdir -p "${mseRawCurrentParamDataValue}"
                        if [ $? != 0 ]; then
                          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_cannotCreateNewDirectoryIn}" "LOCAL" "${mseRawCurrentParamDataValue}")
                        fi
                      fi
                      if [ ! -d "${mseRawCurrentParamDataValue}" ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_PointsToNonExistentDirectory}" "PARAM_A" "${mseParamLabel}")
                      fi
                    ;;
                    functionName)
                      mseParamCk=$(mse_check_isFunctionExists "${mseRawCurrentParamDataValue}")
                      if [ $mseParamCk == 0 ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_MustBeNameOfExistentFunction}" "PARAM_A" "${mseParamLabel}")
                      fi
                    ;;
                    arrayName)
                      if [[ ! "$(declare -p ${mseRawCurrentParamDataValue} 2> /dev/null)" =~ "declare -a" ]]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsNotAn_A}" "PARAM_A" "${mseParamLabel}" "A" "array name")
                      else
                        declare -n mseTmpArrayName="${mseRawCurrentParamDataValue}"
                        if [ "$mseParamMin" != "" ] && [ "${#mseTmpArrayName[@]}" -lt "$mseParamMin" ]; then
                          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_MustBeAnArrayWithAtLast_Min}" "PARAM_A" "${mseParamLabel}" "MIN" ${mseParamMin})
                        elif [ "$mseParamMax" != "" ] && [ "${#mseTmpArrayName[@]}" -gt "$mseParamMax" ]; then
                          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_MustBeAnArrayWithAtLast_Max}" "PARAM_A" "${mseParamLabel}" "MAX" ${mseParamMax})
                        fi
                      fi
                    ;;
                    assocName)
                      if [[ ! "$(declare -p ${mseRawCurrentParamDataValue} 2> /dev/null)" =~ "declare -A" ]]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsNotAn_A}" "PARAM_A" "${mseParamLabel}" "A" "associative array name")
                      else
                        declare -n mseTmpAssocArrayName="${mseRawCurrentParamDataValue}"
                        local mseTmpAssocKey
                        for mseTmpAssocKey in "${mseParamAssocKeys[@]}"; do
                          if [ "$mseReturn" == 1 ] && [ -z "${mseTmpAssocArrayName[$mseTmpAssocKey]+x}" ]; then
                            mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_LostTheRequiredKey_Key}" "PARAM_A" "${mseParamLabel}" "KEY" ${mseTmpAssocKey})
                          fi
                        done
                      fi
                    ;;
                    list)
                      local mseTmpMatch
                      local mseTmpListI
                      local mseTmpListL
                      mseTmpMatch=0
                      mseTmpListL="${#mseParamListLabels[@]}"
                      for ((mseTmpListI=0; mseTmpListI<mseTmpListL; mseTmpListI++)); do
                        if [ "${mseRawCurrentParamDataValue}" == "${mseParamListLabels[$mseTmpListI]}" ] || [ "${mseRawCurrentParamDataValue}" == "${mseParamListValues[$mseTmpListI]}" ]; then
                          mseRawCurrentParamDataValue="${mseParamListValues[$mseTmpListI]}"
                          mseTmpMatch=1
                          break;
                        fi
                      done
                      if [ "$mseTmpMatch" == 0 ]; then
                        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_HasInvalidValue}" "PARAM_A" "${mseParamLabel}")
                      fi
                    ;;
                  esac
                fi
              fi
            fi
          fi
        fi
      fi
    done
  fi
  printf "%s" "${mseReturn}"
}
# END :: mse_exec_validateParams.sh


# INI :: checkLine.sh
mse_file_read_checkLine_isComment() {
  local mseR
  local mseLine
  mseR=0
  if [ $# -ge 4 ] && [ "$3" != "" ]; then
    mseLine=$(mse_str_trim "${3}")
    if [ "$4" == "1" ]; then
      mseLine="${mseLine#*#}"
    fi
    for mseComSig in "${line_check_args_array[@]}"; do
      if [ "${mseLine:0:1}" == "$mseComSig" ]; then
        mseR=1
        break
      fi
    done
  fi
  printf "${mseR}"
}
mse_file_read_checkLine_isVariable() {
  local mseR
  local mseLine
  local mseReg
  local mseCommentChars
  mseR=0
  if [ $# -ge 4 ] && [ "$3" != "" ]; then
    mseLine=$(mse_str_trim "${3}")
    if [ "$4" == "1" ]; then
      mseLine="${mseLine#*#}"
    fi
    mseCommentChars=$(printf '%s' "${line_check_args_array[@]}")
    mseReg='^(['"${mseCommentChars}"']?)([a-zA-Z]+).*='
    if [[ "$mseLine" =~ $mseReg ]]; then
      mseR=1
    fi
  fi
  printf "${mseR}"
}
mse_file_read_checkLine_hasVariable() {
  local mseR
  local mseLine
  local mseComSig
  local mseVarName
  mseR=0
  if [ $# -ge 5 ] && [ "$3" != "" ]; then
    mseLine=$(mse_str_trim "$3")
    mseLine=$(mse_str_trimD "=" "$mseLine")
    if [ "$4" == "1" ]; then
      mseLine="${mseLine#*#}"
    fi
    mseVarName="${line_check_args_array[0]}"
    line_check_args_array=("${line_check_args_array[@]:1}")
    for mseComSig in "${line_check_args_array[@]}"; do
      if [ "${mseLine:0:1}" == "${mseComSig}" ]; then
        mseLine="${mseLine#${mseComSig}}"
      fi
    done
    if [ "${mseLine%%=*}" == "${mseVarName}" ]; then
      mseR=1
    fi
  fi
  printf "${mseR}"
}
# END :: checkLine.sh


# INI :: checkSection.sh
mse_file_read_checkSection_start() {
  local mseR
  mseR=0
  if [ $# -ge 5 ]; then
    local mseSection
    for mseSection in "${block_start_check_args_array[@]}"; do
      mseSection="[${mseSection}]"
      if [ "$mseSection" == "$3" ]; then
        mseR=1
        break
      fi
    done
  fi
  printf "${mseR}"
}
mse_file_read_checkSection_end() {
  local mseR
  mseR=0
  if [ $# -ge 5 ]; then
    if [ "${3:0:1}" == "[" ]; then
      mseR=1
    fi
  fi
  printf "${mseR}"
}
mse_file_read_checkArbitratySection_start() {
  local mseR=0
  if [ "${3}" == "${5}" ]; then
    mseR=1
  fi
  printf "${mseR}"
}
mse_file_read_checkArbitratySection_end() {
  local mseR=0
  declare -n mseReadOptions="${1}"
  if [ "${3}" == "${5}" ]; then
    mseR=1
  fi
  printf "${mseR}"
}
# END :: checkSection.sh


# INI :: transformLine.sh
mse_file_read_transformLine_normalizeKeyValue() {
  local mseLine
  if [ $# -ge 3 ] && [ "$3" != "" ]; then
    mseLine=$(mse_str_trimD "=" "$3")
  fi
  printf "${mseLine}"
}
# END :: transformLine.sh


# INI :: mse_file_boundaryLineNumbers.sh
mse_file_boundaryLineNumbers() {
  local mseReturn=1
  if [ $# -ge 5 ] && [ -f "${1}" ]; then
    local msePathToFile="${1}"
    local mseCommentChar="${2}"
    local mseConfigFile="${3}"
    local mseSectionStart="${4}"
    local mseSectionEnd="${5}"
    local mseRemoveLastEmptyLines="${6}"
    local mseFirstLine
    local mseFirstLineNumber
    local mseLastLine
    local mseLastLineNumber
    local mseRawLines
    if [ "${mseSectionStart}" == "" ]; then
      mseFirstLineNumber="1"
      mseLastLineNumber=$(mse_file_countLines "$msePathToFile")
    else
      unset mseReadOptionsBLN
      declare -A mseReadOptionsBLN
      mse_file_prepareRead "mseReadOptionsBLN"
      if [ "${mseConfigFile}" == "1" ]; then
        mseReadOptionsBLN["block_start_check"]="mse_file_read_checkSection_start"
        mseReadOptionsBLN["block_start_check_args"]="${mseSectionStart}"
        mseReadOptionsBLN["block_start_check_args_sep"]=","
        mseReadOptionsBLN["block_start_get_first_line"]="1"
        mseReadOptionsBLN["block_end_check"]="mse_file_read_checkSection_end"
      else
        mseReadOptionsBLN["block_start_check"]="mse_file_read_checkArbitratySection_start"
        mseReadOptionsBLN["block_start_check_args"]="${mseSectionStart}"
        mseReadOptionsBLN["block_start_check_args_sep"]=""
        mseReadOptionsBLN["block_start_get_first_line"]="1"
        mseReadOptionsBLN["block_end_check"]="mse_file_read_checkArbitratySection_end"
        mseReadOptionsBLN["block_end_check_args"]="${mseSectionEnd}"
        mseReadOptionsBLN["block_end_check_args_sep"]=""
        mseReadOptionsBLN["block_end_get_last_line"]="1"
      fi
      mseRawLines=$(mse_file_read "${msePathToFile}" "mseReadOptionsBLN" 0 1)
      if [ "${mseRemoveLastEmptyLines}" == "1" ]; then
        declare -a mseNewRawLines=()
        local mseLineRaw=""
        IFS=$'\n'
        while read mseLineRaw || [ -n "${mseLineRaw}" ]; do
          mseNewRawLines+=("${mseLineRaw}")
        done <<< "$mseRawLines"
        IFS=$' \t\n'
        local mseLength="${#mseNewRawLines[@]}"
        local mseREG='^[0-9]+[#]$'
        local mseI
        local mseLastInvalidLineIndex
        ((mseLastInvalidLineIndex=mseLength-1))
        for ((mseI=mseLastInvalidLineIndex; mseI>=0; mseI--)); do
          if [[ ! "${mseNewRawLines[$mseI]}" =~ $mseREG ]]; then
            ((mseLastInvalidLineIndex=mseI+1))
            break
          fi
        done
        mseRawLines=$(printf "%s\n" "${mseNewRawLines[@]:0:$mseLastInvalidLineIndex}")
      fi
      if [ "${mseRawLines}" != "" ]; then
        mseFirstLine="${mseRawLines%%[[:cntrl:]]*}"
        mseFirstLineNumber="${mseFirstLine%${mseCommentChar}*}"
        mseFirstLineNumber="${mseFirstLineNumber%*#}"
        mseLastLine="${mseRawLines##*[[:cntrl:]]}"
        mseLastLineNumber="${mseLastLine%${mseCommentChar}*}"
        mseLastLineNumber="${mseLastLineNumber%*#}"
      fi
    fi
    local mseCheck01=$(mse_check_isInteger "${mseFirstLineNumber}")
    local mseCheck02=$(mse_check_isInteger "${mseLastLineNumber}")
    if [ "${mseCheck01}" == "1" ] && [ "${mseCheck02}" == "1" ]; then
      mseReturn=0
      printf "%s" "${mseFirstLineNumber} ${mseLastLineNumber}"
    fi
  fi
  return "${mseReturn}"
}
MSE_GLOBAL_CMD["file boundaryLineNumbers"]="mse_file_boundaryLineNumbers"
mse_file_boundaryLineNumbers_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=6
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="PathToFile :: r :: fileName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="CommentChar :: r :: char"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="ConfigFile :: r :: bool"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="SectionStart :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_4"]="SectionEnd :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_5"]="RemoveLastEmptyLines :: o :: bool :: 0"
}
# END :: mse_file_boundaryLineNumbers.sh


# INI :: mse_file_countLines.sh
mse_file_countLines() {
  local mseReturn
  local mseLineRaw
  local mseFileContent
  mseReturn=0
  mseFileContent="$1"
  if [ -f "${mseFileContent}" ]; then
    mseFileContent=$(< "${mseFileContent}")
  fi
  if [ "${mseFileContent}" != "" ]; then
    IFS=$'\n'
    while read mseLineRaw || [ -n "${mseLineRaw}" ]; do
      ((mseReturn=mseReturn+1))
    done <<< "$mseFileContent"
    IFS=$' \t\n'
  fi
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["file countLines"]="mse_file_countLines"
mse_file_countLines_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="PathToFile :: r :: fileName"
}
# END :: mse_file_countLines.sh


# INI :: mse_file_prepareRead.sh
mse_file_prepareRead() {
  declare -n mseArrAssoc="${1}"
  local mseKey=""
  for mseKey in "${!mseArrAssoc[@]}"; do
    unset mseArrAssoc["${mseKey}"]
  done
  mseArrAssoc["block_start_check"]=""
  mseArrAssoc["block_start_check_args"]=""
  mseArrAssoc["block_start_check_args_sep"]=""
  mseArrAssoc["block_start_get_first_line"]=""
  mseArrAssoc["block_end_check"]=""
  mseArrAssoc["block_end_check_args"]=""
  mseArrAssoc["block_end_check_args_sep"]=""
  mseArrAssoc["block_end_get_last_line"]=""
  mseArrAssoc["block_check_invert"]=""
  mseArrAssoc["line_check"]=""
  mseArrAssoc["line_check_args"]=""
  mseArrAssoc["line_check_args_sep"]=""
  mseArrAssoc["line_check_invert"]=""
  mseArrAssoc["line_check_has_linenumber"]=""
  mseArrAssoc["line_transform"]=""
  mseArrAssoc["line_transform_args"]=""
  mseArrAssoc["line_transform_args_sep"]=""
  mseArrAssoc["line_transform_has_linenumber"]=""
  mseArrAssoc["line_hide_empty"]=""
  mseArrAssoc["line_show_number"]=""
  unset block_start_check_args_array
  declare -ga block_start_check_args_array=()
  unset block_end_check_args_array
  declare -ga block_end_check_args_array=()
  unset line_check_args_array
  declare -ga line_check_args_array=()
  unset line_transform_args_array
  declare -ga line_transform_args_array=()
  if [ "${2}" != "" ]; then
    mseArrAssoc["block_start_check"]="${2}"
    mseArrAssoc["block_start_check_args"]="${3}"
    mseArrAssoc["block_start_check_args_sep"]="${4}"
    mseArrAssoc["block_start_get_first_line"]="${5}"
    if [ "${5}" != "0" ] && [ "${5}" != "1" ]; then
      mseArrAssoc["block_start_get_first_line"]="0"
    fi
  fi
  if [ "${6}" != "" ]; then
    mseArrAssoc["block_end_check"]="${6}"
    mseArrAssoc["block_end_check_args"]="${7}"
    mseArrAssoc["block_end_check_args_sep"]="${8}"
    mseArrAssoc["block_end_get_last_line"]="${9}"
    if [ "${9}" != "0" ] && [ "${9}" != "1" ]; then
      mseArrAssoc["block_end_get_last_line"]="0"
    fi
  fi
  if [ "${2}" != "" ] || [ "${6}" != "" ]; then
    mseArrAssoc["block_check_invert"]="${10}"
    if [ "${10}" != "0" ] && [ "${10}" != "1" ]; then
      mseArrAssoc["block_check_invert"]="0"
    fi
  fi
  if [ "${11}" != "" ]; then
    mseArrAssoc["line_check"]="${11}"
    mseArrAssoc["line_check_args"]="${12}"
    mseArrAssoc["line_check_args_sep"]="${13}"
    mseArrAssoc["line_check_invert"]="${14}"
    mseArrAssoc["line_check_has_linenumber"]="${15}"
    if [ "${14}" != "0" ] && [ "${14}" != "1" ]; then
      mseArrAssoc["line_check_invert"]="0"
    fi
    if [ "${15}" != "0" ] && [ "${15}" != "1" ]; then
      mseArrAssoc["line_check_has_linenumber"]="0"
    fi
  fi
  if [ "${16}" != "" ]; then
    mseArrAssoc["line_transform"]="${16}"
    mseArrAssoc["line_transform_args"]="${17}"
    mseArrAssoc["line_transform_args_sep"]="${18}"
    mseArrAssoc["line_transform_has_linenumber"]="${19}"
    if [ "${19}" != "0" ] && [ "${19}" != "1" ]; then
      mseArrAssoc["line_transform_has_linenumber"]="0"
    fi
  fi
  mseArrAssoc["line_hide_empty"]="${20}"
  if [ "${20}" != "0" ] && [ "${20}" != "1" ]; then
    mseArrAssoc["line_hide_empty"]="0"
  fi
  mseArrAssoc["line_show_number"]="${21}"
  if [ "${21}" != "0" ] && [ "${21}" != "1" ]; then
    mseArrAssoc["line_show_number"]="0"
  fi
}
MSE_GLOBAL_CMD["file prepareRead"]="mse_file_prepareRead"
mse_file_prepareRead_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=21
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="AssocArrayName :: r :: assocName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="BlockStartCheck :: o :: functionName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="BlockStartCheckArgs :: o :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="BlockStartCheckArgsSep :: o :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_4"]="BlockStartGetFirstLine :: o :: bool :: 0"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_5"]="BlockEndCheck :: o :: functionName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_6"]="BlockEndCheckArgs :: o :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_7"]="BlockEndCheckArgsSep :: o :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_8"]="BlockEndGetLastLine :: o :: bool :: 0"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_9"]="BlockCheckInvert :: o :: bool :: 0"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_10"]="LineCheck :: o :: functionName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_11"]="LineCheckArgs :: o :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_12"]="LineCheckArgsSep :: o :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_13"]="LineCheckInvert :: o :: bool :: 0"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_14"]="LineCheckHasLineNumber :: o :: bool :: 0"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_15"]="LineTransform :: o :: functionName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_16"]="LineTransformArgs :: o :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_17"]="LineTransformArgsSep :: o :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_18"]="LineTransformLineNumber :: o :: bool :: 0"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_19"]="LineHideEmpty :: o :: bool :: 0"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_20"]="LineShowNumber :: o :: bool :: 0"
}
# END :: mse_file_prepareRead.sh


# INI :: mse_file_read.sh
mse_file_read() {
  local mseLineRaw
  local mseFileContent
  mseFileContent="$1"
  if [ -f "$mseFileContent" ]; then
    mseFileContent=$(< "$mseFileContent")
  fi
  if [ "${mseFileContent}" != "" ]; then
    declare -n mseReadOptions="${2}"
    local block_start_check
    local block_start_check_args
    local block_start_check_args_sep
    local block_start_get_first_line
    local block_end_check
    local block_end_check_args
    local block_end_check_args_sep
    local block_end_get_last_line
    local block_check_invert
    local line_check
    local line_check_args
    local line_check_args_sep
    local line_check_invert
    local line_check_has_linenumber
    local line_transform
    local line_transform_args
    local line_transform_args_sep
    local line_transform_has_linenumber
    local line_hide_empty
    local line_show_number
    if [ "${mseReadOptions[block_start_check]}" != "" ]; then
      block_start_check="${mseReadOptions[block_start_check]}"
      block_start_check_args="${mseReadOptions[block_start_check_args]}"
      block_start_check_args_sep="${mseReadOptions[block_start_check_args_sep]}"
      block_start_get_first_line="0"
      if [ "${block_start_check_args_sep}" != "" ]; then
        mse_str_split "${block_start_check_args_sep}" "${block_start_check_args}"
        block_start_check_args_array=("${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}")
      fi
      if [ "${mseReadOptions[block_start_get_first_line]}" == "1" ]; then
        block_start_get_first_line="1"
      fi
    fi
    if [ "${mseReadOptions[block_end_check]}" != "" ]; then
      block_end_check="${mseReadOptions[block_end_check]}"
      block_end_check_args="${mseReadOptions[block_end_check_args]}"
      block_end_check_args_sep="${mseReadOptions[block_end_check_args_sep]}"
      block_end_get_last_line="0"
      if [ "${block_end_check_args_sep}" != "" ]; then
        mse_str_split "${block_end_check_args_sep}" "${block_end_check_args}"
        block_end_check_args_array=("${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}")
      fi
      if [ "${mseReadOptions[block_end_get_last_line]}" == "1" ]; then
        block_end_get_last_line="1"
      fi
    fi
    block_check_invert="0"
    if [ "${mseReadOptions[block_check_invert]}" == "1" ]; then
      block_check_invert="1"
    fi
    if [ "${mseReadOptions[line_check]}" != "" ]; then
      line_check="${mseReadOptions[line_check]}"
      line_check_args="${mseReadOptions[line_check_args]}"
      line_check_args_sep="${mseReadOptions[line_check_args_sep]}"
      line_check_invert="0"
      line_check_has_linenumber="0"
      if [ "${line_check_args_sep}" != "" ]; then
        mse_str_split "${line_check_args_sep}" "${line_check_args}"
        line_check_args_array=("${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}")
      fi
      if [ "${mseReadOptions[line_check_invert]}" == "1" ]; then
        line_check_invert="1"
      fi
      if [ "${mseReadOptions[line_check_has_linenumber]}" == "1" ]; then
        line_check_has_linenumber="1"
      fi
    fi
    if [ "${mseReadOptions[line_transform]}" != "" ]; then
      line_transform="${mseReadOptions[line_transform]}"
      line_transform_args="${mseReadOptions[line_transform_args]}"
      line_transform_args_sep="${mseReadOptions[line_transform_args_sep]}"
      if [ "${line_transform_args_sep}" != "" ]; then
        mse_str_split "${line_transform_args_sep}" "${line_transform_args}"
        line_transform_args_array=("${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}")
      fi
      if [ "${mseReadOptions[line_transform_has_linenumber]}" == "1" ]; then
        line_transform_has_linenumber=1
      fi
    fi
    line_hide_empty="0"
    if [ "${mseReadOptions[line_hide_empty]}" == "1" ] || ([ $# -ge 3 ] && [ "$3" == "1" ]); then
      line_hide_empty="1"
    fi
    line_show_number="0"
    if [ "${mseReadOptions[line_show_number]}" == "1" ] || ([ $# -ge 4 ] && [ "$4" == "1" ]); then
      line_show_number="1"
    fi
    IFS=$'\n'
    local mseValidSection="1"
    local mseValidLine=1
    local mseValidLastLine=0
    local mseLineCount=0
    local mseLineRaw=""
    if [ "${block_start_check}" != "" ]; then
      mseValidSection=0
    fi
    while read mseLineRaw || [ -n "${mseLineRaw}" ]; do
      ((mseLineCount=mseLineCount+1))
      mseValidLine=1
      mseValidLastLine=0
      if [ "${mseLineRaw}" != "" ] || [ "$line_hide_empty" == "0" ]; then
        if [ "${mseValidSection}" == "0" ]; then
          if [ "${block_start_check}" != "" ]; then
            mseValidSection=$($block_start_check "${2}" "${mseLineCount}" "${mseLineRaw}" "0" "${block_start_check_args}")
            if [ "${mseValidSection}" == "1" ] && [ "${block_start_get_first_line}" == "0" ]; then
              mseValidLine=0
            fi
          fi
        else
          if [ "${block_end_check}" != "" ]; then
            mseValidSection=$($block_end_check "${2}" "${mseLineCount}" "${mseLineRaw}" "0" "${block_end_check_args}")
            if [ "${mseValidSection}" == "1" ]; then
              if [ "${block_end_get_last_line}" == "1" ]; then
                mseValidSection=1
                mseValidLastLine=1
              else
                mseValidSection=0
              fi
            else
              mseValidSection=1
            fi
          fi
        fi
        if [ "${mseValidSection}" == "1" ] && [ "${mseValidLine}" == "1" ]; then
          if [ "$line_check" != "" ]; then
            mseValidLine=$($line_check "${2}" "${mseLineCount}" "${mseLineRaw}" "${line_check_has_linenumber}" "${line_check_args}")
            if [ "${line_check_invert}" == "1" ]; then
              if [ "${mseValidLine}" == "1" ]; then
                mseValidLine="0"
              else
                mseValidLine="1"
              fi
            fi
          fi
          if [ "${mseValidLine}" == "1" ]; then
            if [ "${line_transform}" != "" ]; then
              mseLineRaw=$($line_transform "${mseLineCount}" "${mseLineRaw}" "${line_transform_has_linenumber}" "${line_transform_args}")
            fi
            if [ "${line_show_number}" == "1" ]; then
              printf "${mseLineCount}#"
            fi
            printf "${mseLineRaw}\n"
            if [ "${mseValidLastLine}" == "1" ]; then
              mseValidSection=0
            fi
          fi
        fi
      fi
    done <<< "$mseFileContent"
    IFS=$' \t\n'
  fi
  return 0
}
MSE_GLOBAL_CMD["file read"]="mse_file_read"
mse_file_read_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=4
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="PathToFile :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="ReadOptions :: r :: assocName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="ShowEmptyLines :: o :: bool :: 0"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="ShowLineNumber :: o :: bool :: 0"
}
# END :: mse_file_read.sh


# INI :: mse_file_write.sh
mse_file_write() {
  local mseReturn
  local mseFilePath
  local mseFileContent
  local mseFileLastLine
  declare -n mseContentArrayName
  local mseAction
  local mseTargetFirstLine
  local mseTargetLastLine
  local mseCountLine
  local mseNewFileContent
  mseReturn=1
  mseFilePath="$1"
  mseFileContent=$(< "$mseFilePath")
  mseFileLastLine=$(mse_file_countLines "$mseFilePath")
  mseContentArrayName="$2"
  mseAction="a"
  if [ $# -ge 3 ]; then
    case "$3" in
      prepend | p)
        mseAction="p"
        mseTargetFirstLine=1
        mseTargetLastLine=0
      ;;
      append | a)
        mseAction="a"
        mseTargetFirstLine=$mseFileLastLine
        mseTargetLastLine=0
      ;;
      replace | r)
        mseAction="r"
        if [ $# -lt 4 ]; then
          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_RequiredFor_A_Operation}" "PARAM_A" "TargetLine" "A" "replace")
        fi
      ;;
      delete | d)
        mseAction="d"
        if [ $# -lt 4 ]; then
          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_RequiredFor_A_Operation}" "PARAM_A" "TargetLine" "A" "delete")
        fi
      ;;
    esac
  fi
  if [ "$mseReturn" == 1 ] && [ $# -ge 4 ]; then
    if [[ "$4" =~ ^[0-9]+$ ]]; then
      mseTargetFirstLine=$4
      mseTargetLastLine=0
    else
      local mseFnName
      local mseFnResult
      local mseFnResultParts
      local mseTmpMsg
      mseFnResult="$4"
      if [ "$(type -t $4)" == "function" ]; then
        mseFnName="fn $4"
        mseFnResult=$($4)
      else
        mseFnName="Received"
      fi
      mse_str_split " " "$mseFnResult"
      mseFnResultParts="${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"
      if [ "$mseFnResultParts" == 0 ] || [ "$mseFnResultParts" -gt 2 ]; then
        mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_fw_iv_expectedFunctionNameOrInteger}" "FUNCTION" "${mseFnName}" "RESULT" "${mseFnResult}" "ERR" "1")
        mseReturn=$(mse_str_replacePlaceHolder "${lbl_fw_iv_mainMessage}" "PARAM_A" "TargetLine" "MSG" "${mseTmpMsg}")
      else
        mseTargetFirstLine="${MSE_GLOBAL_MODULE_SPLIT_RESULT[0]}"
        mseTargetLastLine=0
        if ! [[ "${mseTargetFirstLine}" =~ ^[0-9]+$ ]]; then
          mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_fw_iv_expectedFunctionNameOrInteger}" "FUNCTION" "${mseFnName}" "RESULT" "${mseFnResult}" "ERR" "2")
          mseReturn=$(mse_str_replacePlaceHolder "${lbl_fw_iv_mainMessage}" "PARAM_A" "TargetLine" "MSG" "${mseTmpMsg}")
        else
          if [ "$mseFnResultParts" == 2 ] && [ "${MSE_GLOBAL_MODULE_SPLIT_RESULT[1]}" != "$mseTargetFirstLine" ]; then
            mseTargetLastLine="${MSE_GLOBAL_MODULE_SPLIT_RESULT[1]}"
            if ! [[ "${mseTargetLastLine}" =~ ^[0-9]+$ ]]; then
              mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_fw_iv_expectedFunctionNameOrInteger}" "FUNCTION" "${mseFnName}" "RESULT" "${mseFnResult}" "ERR" "3")
              mseReturn=$(mse_str_replacePlaceHolder "${lbl_fw_iv_mainMessage}" "PARAM_A" "TargetLine" "MSG" "${mseTmpMsg}")
            else
              if [ $mseTargetFirstLine -gt $mseTargetLastLine ]; then
                mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_fw_iv_firstLineMustBeLessThanTheLast}" "RESULT" "${mseFnResult}")
                mseReturn=$(mse_str_replacePlaceHolder "${lbl_fw_iv_mainMessage}" "PARAM_A" "TargetLine" "MSG" "${mseTmpMsg}")
              fi
            fi
          fi
        fi
      fi
    fi
    if [ "$mseReturn" == 1 ]; then
      if [ "$mseTargetFirstLine" -lt 1 ] || [ "$mseTargetFirstLine" -gt "$mseFileLastLine" ] || [ "$mseTargetLastLine" -gt "$mseFileLastLine" ]; then
        mseTmpMsg=$(mse_str_replacePlaceHolder "${lbl_fw_iv_outsideTheFileLimits}" "LASTLINE" "${mseFileLastLine}")
        mseReturn=$(mse_str_replacePlaceHolder "${lbl_fw_iv_mainMessage}" "PARAM_A" "TargetLine" "MSG" "${mseTmpMsg}")
      fi
    fi
  fi
  if [ "$mseReturn" == 1 ]; then
    IFS=$'\n'
    mseCountLine=0
    mseNewFileContent=""
    while read -r mseLineRaw || [ -n "${mseLineRaw}" ]; do
      ((mseCountLine=mseCountLine+1))
      mseLineRaw="${mseLineRaw//\\/\\\\}"
      if [ $mseCountLine == $mseTargetFirstLine ]; then
        if [ $mseAction == "a" ]; then
          mseNewFileContent+="${mseLineRaw}\n"
        fi
        if [ $mseAction != "d" ]; then
          local mseNL
          for mseNL in "${mseContentArrayName[@]}"; do
            mseNewFileContent+="${mseNL//\\/\\\\}\n"
          done
        fi
        if [ $mseAction == "p" ]; then
          mseNewFileContent+="${mseLineRaw}\n"
        fi
      else
        if [ $mseTargetLastLine == 0 ] || [ $mseCountLine -lt $mseTargetFirstLine ] || [ $mseCountLine -gt $mseTargetLastLine ]; then
          mseNewFileContent+="${mseLineRaw}\n"
        fi
      fi
    done <<< "$mseFileContent"
    IFS=$' \t\n'
    printf "${mseNewFileContent}" > "${mseFilePath}"
    if [ $? != 0 ]; then
      mseReturn="${lbl_fw_iv_errorOnSave}"
    fi
  fi
  printf "${mseReturn}"
}
MSE_GLOBAL_CMD["file write"]="mse_file_write"
mse_file_write_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=3
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="PathToFile :: r :: fileName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="ContentArrayName :: r :: arrayName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="OperationType :: o :: list :: append"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2_labels"]="prepend, append, replace"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2_values"]="p, a, r"
}
# END :: mse_file_write.sh


# INI :: mse_config_setVariable.sh
mse_config_setVariable() {
  local mseReturn
  local msePathToFile="${1}"
  local mseCommentChar="${2}"
  local mseConfigFile="${3}"
  local mseSectionNameStart="${4}"
  local mseSectionNameEnd=""
  local mseVarType="${5}"
  local mseVarName="${6}"
  local mseVarValue="${7}"
  declare -n mseVarArrName
  local mseOperation="${8}"
  local msePosition=""
  mseReturn=1
  if [ $# -lt 8 ]; then
    local mseArgs="$#"
    local mseLost
    ((mseLost=8-mseArgs))
    mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_lostParameters}" "LOST" "${mseLost}")
  else
    if [ "$msePathToFile" == "" ]; then
      mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsRequired}" "PARAM_A" "PathToFile")
    elif [ ! -f "$msePathToFile" ]; then
      mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_PointsToNonExistentFile}" "PARAM_A" "PathToFile")
    fi
    if [ "${mseReturn}" == "1" ] && [ "${mseConfigFile}" == "1" ] && [ "$mseCommentChar" == "" ]; then
      mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsRequired}" "PARAM_A" "CommentChar")
    fi
    if [ "${mseReturn}" == "1" ]; then
      if [ "${mseConfigFile}" == "" ]; then
        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsRequired}" "PARAM_A" "ConfigFile")
      elif [ "${mseConfigFile}" != "0" ] && [ "${mseConfigFile}" != "1" ]; then
        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_HasInvalidValue}" "PARAM_A" "ConfigFile")
      fi
    fi
    if [ "${mseReturn}" == "1" ]; then
      if [ "${mseVarType}" == "" ]; then
        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsRequired}" "PARAM_A" "VarType")
      else
        case "${mseVarType}" in
          s | scalar)
            mseVarType="s"
          ;;
          i | index)
            mseVarType="i"
          ;;
          a | assoc)
            mseVarType="a"
          ;;
          *)
            mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_HasInvalidValue}" "PARAM_A" "VarType")
          ;;
        esac
      fi
    fi
    if [ "${mseReturn}" == "1" ] && [ "${mseVarName}" == "" ]; then
      mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsRequired}" "PARAM_A" "VarName")
    else
      if [ "${mseConfigFile}" == "0" ]; then
        mseSectionNameStart="${mseCommentChar} [[INI-${mseVarName}]]"
        mseSectionNameEnd="${mseCommentChar} [[END-${mseVarName}]]"
      fi
    fi
    if [ "${mseReturn}" == "1" ] && [ "${mseVarType}" != "s" ]; then
      local mseArrDeclare=$(declare -p "${mseVarValue}" 2> /dev/null)
      if [ "${mseVarType}" == "i" ] && [[ ! "${mseArrDeclare}" =~ "declare -a" ]]; then
        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_MustBeAnArray}" "PARAM_A" "VarValue")
      elif [ "${mseVarType}" == "a" ] && [[ ! "${mseArrDeclare}" =~ "declare -A" ]]; then
        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_MustBeAnAssocArray}" "PARAM_A" "VarValue")
      else
        mseVarArrName="${mseVarValue}"
      fi
    fi
    if [ "${mseConfigFile}" == "1" ] && [ "$mseReturn" == 1 ]; then
      case "$mseOperation" in
        add | a)
          mseOperation="a"
        ;;
        delete | d)
          mseOperation="d"
        ;;
        change | ch)
          mseOperation="ch"
        ;;
        comment | c)
          mseOperation="c"
        ;;
        uncomment | u)
          mseOperation="u"
        ;;
        *)
          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_HasInvalidOption}" "PARAM_A" "Operation")
        ;;
      esac
    fi
    if [ "${mseConfigFile}" == "1" ] && [ "$mseReturn" == 1 ] && [ "$mseOperation" == "a" ]; then
      msePosition="a"
      if [ $# -ge 9 ] && [ "${9}" != "" ]; then
        case "${9}" in
          prepend | p)
            msePosition="p"
          ;;
          append | a)
            msePosition="a"
          ;;
          *)
            mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_paramA_HasInvalidOption}" "PARAM_A" "Position")
          ;;
        esac
      fi
    fi
  fi
  local mseTargetSectionLines
  local mseTargetSectionFirstLine
  local mseTargetSectionLastLine
  if [ "$mseReturn" == 1 ]; then
    mseTargetSectionLines=$(mse_file_boundaryLineNumbers "${msePathToFile}" "${mseCommentChar}" "${mseConfigFile}" "${mseSectionNameStart}" "${mseSectionNameEnd}")
    mse_str_split " " "${mseTargetSectionLines}"
    if [ "${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}" != 2 ]; then
      mseReturn="${lbl_err_cannotIdentifyTargetLine}"
    else
      mseTargetSectionFirstLine="${MSE_GLOBAL_MODULE_SPLIT_RESULT[0]}"
      mseTargetSectionLastLine="${MSE_GLOBAL_MODULE_SPLIT_RESULT[1]}"
    fi
  fi
  local mseTargetVarRawLine
  local mseTargetVarLineNumber
  local mseTargetVarIsCommented
  if [ "$mseReturn" == 1 ] && [ "${mseConfigFile}" == "1" ]; then
    mseTargetVarRawLine=$(mse_config_showVariableLine "${msePathToFile}" "${mseSectionNameStart}" "${mseVarName}" "1")
    if [ "${mseOperation}" == "a" ]; then
      if [ "${mseTargetVarRawLine}" != "" ]; then
        mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_variableAlreadExists}" "VAR" "${mseVarName}")
      fi
    else
      if [ "${mseTargetVarRawLine}" == "" ]; then
        if [ "${mseSectionNameStart}" == "" ]; then
          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_variableDoNotExists}" "VAR" "${mseVarName}")
        else
          mseReturn=$(mse_str_replacePlaceHolder "${lbl_err_variableDoNotExistsInSection}" "VAR" "${mseVarName}" "SECTION" "${mseSectionNameStart}")
        fi
      else
        mseTargetVarLineNumber="${mseTargetVarRawLine%${mseCommentChar}*}"
        mseTargetVarLineNumber="${mseTargetVarLineNumber%*${mseCommentChar}}"
        mseTargetVarRawLine="${mseTargetVarRawLine#${mseTargetVarLineNumber}#}"
        mseTargetVarIsCommented=0
        if [ "${mseTargetVarRawLine:0:1}" == "${mseCommentChar}" ]; then
          mseTargetVarIsCommented=1
        fi
      fi
    fi
  fi
  if [ "$mseReturn" == 1 ]; then
    declare -a mseNewLine=()
    if [ "${mseConfigFile}" == "0" ]; then
      if [ "${mseOperation}" != "d" ]; then
        local mseTmpComment=""
        if [ "${mseOperation}" == "c" ]; then
          mseTmpComment="${mseCommentChar} "
        fi
        mseNewLine+=("${mseSectionNameStart}")
        case "${mseVarType}" in
          s)
            mseNewLine+=("${mseTmpComment}${mseVarName}=${mseVarValue}")
          ;;
          i)
            local i
            local l="${#mseVarArrName[@]}"
            local v
            mseNewLine+=("declare -ga ${mseVarName}")
            for ((i=0; i<l; i++)); do
              v="${mseVarArrName[$i]}"
              mseNewLine+=("${mseTmpComment}${mseVarName}[$i]=\"${v}\"")
            done
          ;;
          a)
            local k
            local v
            mseNewLine+=("declare -gA ${mseVarName}")
            for k in ${!mseVarArrName[@]}; do
              v="${mseVarArrName[$k]}"
              mseNewLine+=("${mseTmpComment}${mseVarName}[\"$k\"]=\"${v}\"")
            done
          ;;
        esac
        mseNewLine+=("${mseSectionNameEnd}")
        mseReturn=$(mse_file_write "${msePathToFile}" "mseNewLine" "r" "${mseTargetSectionLines}")
      fi
    else
      case "${mseOperation}" in
        a)
          if [ "${msePosition}" == "p" ]; then
            mseTargetVarLineNumber="${mseTargetSectionFirstLine}"
          elif [ "${msePosition}" == "a" ]; then
            mseTargetVarLineNumber="${mseTargetSectionLastLine}"
          fi
          mseNewLine=("${mseVarName}=${mseVarValue}")
          mseReturn=$(mse_file_write "${msePathToFile}" "mseNewLine" "a" "${mseTargetVarLineNumber}")
        ;;
        d)
          mseReturn=$(mse_file_write "${msePathToFile}" "mseNewLine" "d" "${mseTargetVarLineNumber}")
        ;;
        ch)
          local mseRawVarAssign="${mseTargetVarRawLine%%=*}"
          local mseRawVarValue="${mseTargetVarRawLine#${mseRawVarAssign}=}"
          local mseRawVarSep=${mseRawVarValue%%[^ ]*}
          mseNewLine=("${mseRawVarAssign}=${mseRawVarSep}${mseVarValue}")
          mseReturn=$(mse_file_write "${msePathToFile}" "mseNewLine" "r" "${mseTargetVarLineNumber}")
        ;;
        c)
          if [ "${mseTargetVarIsCommented}" == 0 ]; then
            mseNewLine=("${mseCommentChar}${mseTargetVarRawLine}")
            mseReturn=$(mse_file_write "${msePathToFile}" "mseNewLine" "r" "${mseTargetVarLineNumber}")
          fi
        ;;
        u)
          if [ "${mseTargetVarIsCommented}" == 1 ]; then
            mseNewLine=("${mseTargetVarRawLine:1}")
            mseReturn=$(mse_file_write "${msePathToFile}" "mseNewLine" "r" "${mseTargetVarLineNumber}")
          fi
        ;;
      esac
    fi
  fi
  printf "%s" "${mseReturn}"
}
MSE_GLOBAL_CMD["config set variable"]="mse_config_setVariable"
mse_config_setVariable_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=9
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="PathToFile :: r :: fileName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="CommentChar :: r :: char"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="ConfigFile :: r :: bool"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="SectionStart :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_4"]="VarType :: r :: list"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_4_labels"]="scalar, index, assoc"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_4_values"]="s, i, a"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_5"]="VarName :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_6"]="VarValue :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_7"]="Operation :: r :: list"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_7_labels"]="add, delete, change, comment, uncomment"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_7_values"]="a, d, ch, c, u"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_8"]="Position :: o :: list"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_8_labels"]="prepend, append"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_8_values"]="p, a"
}
# END :: mse_config_setVariable.sh


# INI :: mse_config_showVariableLine.sh
mse_config_showVariableLine() {
  local mseReturn
  local mseRawSection
  local mseShowLineNumber
  mseShowLineNumber=0
  if [ $# -ge 4 ] && [ "$4" == "1" ]; then
    mseShowLineNumber=1
  fi
  mseReturn=""
  mseRawSection=$(mse_config_showVariables "$1" "$2" "$mseShowLineNumber")
  if [ "$mseRawSection" != "" ]; then
    unset mseReadOptionsShowVarLine
    declare -A mseReadOptionsShowVarLine
    mse_file_prepareRead "mseReadOptionsShowVarLine"
    mseReadOptionsShowVarLine["line_check"]="mse_file_read_checkLine_hasVariable"
    mseReadOptionsShowVarLine["line_check_args"]="${3} # ;"
    mseReadOptionsShowVarLine["line_check_args_sep"]=" "
    mseReadOptionsShowVarLine["line_check_invert"]=""
    mseReadOptionsShowVarLine["line_check_has_linenumber"]="${mseShowLineNumber}"
    mseReturn=$(mse_file_read "$mseRawSection" "mseReadOptionsShowVarLine" "1" "0")
  fi
  printf "${mseReturn%%[[:cntrl:]]*}"
}
MSE_GLOBAL_CMD["config show variableLine"]="mse_config_showVariableLine"
mse_config_showVariableLine_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=4
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="PathToFile :: r :: fileName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="SectionName :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="VariableName :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="ShowLineNumber :: o :: bool :: 0"
}
# END :: mse_config_showVariableLine.sh


# INI :: mse_config_showVariableValue.sh
mse_config_showVariableValue() {
  local mseReturn
  mseReturn=$(mse_config_showVariableLine "$1" "$2" "$3" "0")
  if [ "${mseReturn}" != "" ]; then
    mseReturn=$(mse_str_trimD "=" "${mseReturn}")
    printf "${mseReturn#${3}=}"
  fi
}
MSE_GLOBAL_CMD["config show variableValue"]="mse_config_showVariableValue"
mse_config_showVariableValue_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=3
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="PathToFile :: r :: fileName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="SectionName :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="VariableName :: r :: string"
}
# END :: mse_config_showVariableValue.sh


# INI :: mse_config_showVariables.sh
mse_config_showVariables() {
  local mseReturn
  local mseShowLineNumber
  unset mseReadOptionsShowVars
  declare -A mseReadOptionsShowVars
  mse_file_prepareRead "mseReadOptionsShowVars"
  if [ $# -ge 2 ] && [ "$2" != "" ]; then
    mseReadOptionsShowVars["block_start_check"]="mse_file_read_checkSection_start"
    mseReadOptionsShowVars["block_start_check_args"]="${2}"
    mseReadOptionsShowVars["block_start_check_args_sep"]=","
    mseReadOptionsShowVars["block_start_get_first_line"]="0"
    mseReadOptionsShowVars["block_end_check"]="mse_file_read_checkSection_end"
  fi
  mseShowLineNumber=0
  if [ $# -ge 3 ] && [ "$3" == "1" ]; then
    mseShowLineNumber=1
  fi
  mseReadOptionsShowVars["line_check"]="mse_file_read_checkLine_isVariable"
  mseReadOptionsShowVars["line_check_args"]="# ;"
  mseReadOptionsShowVars["line_check_args_sep"]=" "
  mseReadOptionsShowVars["line_check_invert"]=""
  mseReadOptionsShowVars["line_check_has_linenumber"]="${mseShowLineNumber}"
  mse_file_read "${1}" "mseReadOptionsShowVars" "1" "${mseShowLineNumber}"
}
MSE_GLOBAL_CMD["config show variables"]="mse_config_showVariables"
mse_config_showVariables_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=3
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="PathToFile :: r :: fileName"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="SectionName :: o :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="ShowLineNumber :: o :: bool :: 0"
}
# END :: mse_config_showVariables.sh


# INI :: mse_font_createStyle.sh
mse_font_createStyle() {
  local mseUseColorSystem
  local mseAttributes
  local mseBGColor
  local mseFGColor
  local mseReturnLikeCode
  local mseTmpCanSet=0
  local mseTmpATCode="${2^^}"
  local mseTmpBGCode="${3^^}"
  local mseTmpFGCode="${4^^}"
  local i
  local mseLength
  local mseUParam
  local mseIsCode
  local mseIsCheck
  if [ $# -ge 4 ]; then
    mseReturnLikeCode="0"
    if [ $# -ge 5 ] && [ "$5" == "1" ]; then
      mseReturnLikeCode="1"
    fi
    mseUseColorSystem="4"
    mseBGColor="49"
    mseFGColor="39"
    if [ "$1" == "8" ]; then
      mseUseColorSystem="$1"
      mseBGColor="0"
      mseFGColor="255"
    elif [ "$1" == "32" ]; then
      mseUseColorSystem="$1"
      mseBGColor="0;0;0"
      mseFGColor="255;255;255"
    fi
    if [ "$mseUseColorSystem" == "4" ]; then
      local mseUseDark=0
      if [ "${mseTmpBGCode:0:1}" == "D" ]; then
        mseTmpBGCode="${mseTmpBGCode:1}"
      fi
      if [ "${mseTmpFGCode:0:1}" == "D" ]; then
        mseUseDark=1
        mseTmpFGCode="${mseTmpFGCode:1}"
      fi
      if [ "${mseUseDark}" == "0" ]; then
        mseIsCode=$(mse_check_isInteger "${mseTmpFGCode}")
        if [ "${mseIsCode}" == "1" ] && [ "${mseTmpFGCode}" -gt 200 ]; then
          mseUseDark=1
          ((mseTmpFGCode=mseTmpFGCode-200))
        fi
      fi
      if [ "${mseUseDark}" == "1" ]; then
        if [ "${mseTmpATCode}" != "" ]; then
          mseTmpATCode+=","
        fi
        mseTmpATCode+="DARK"
      fi
    fi
    mseAttributes="20"
    if [ "$mseTmpATCode" != "" ]; then
      declare -a mseValidAttr=()
      local mseTmpAttr
      mse_str_split "," "${mseTmpATCode}"
      for mseUParam in "${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"; do
        if [ "${mseUParam}" != "" ]; then
          mseTmpAttr=""
          mseUParam=$(mse_str_trim "${mseUParam}")
          mseIsCode=$(mse_check_isInteger "${mseUParam}")
          if [ "${mseIsCode}" == "1" ]; then
            mseIsCheck=$(mse_check_hasValueInArray "${mseUParam}" "MSE_MD_ICOLOR_AVAILABLE_FONT_ATTRIBUTE_CODES")
            if [ "${mseIsCheck}" == "1" ]; then
              mseTmpAttr="${mseUParam}"
            fi
          else
            mseLength=${#MSE_MD_ICOLOR_AVAILABLE_FONT_ATTRIBUTE_NAMES[@]}
            for (( i=0; i<mseLength; i++)); do
              if [ "${mseUParam}" == "${MSE_MD_ICOLOR_AVAILABLE_FONT_ATTRIBUTE_NAMES[$i]}" ]; then
                mseTmpAttr="${MSE_MD_ICOLOR_AVAILABLE_FONT_ATTRIBUTE_CODES[$i]}"
                break
              fi
            done
          fi
          if [ "${mseTmpAttr}" != "" ]; then
            mseIsCheck=$(mse_check_hasValueInArray "${mseTmpAttr}" "mseValidAttr")
            if [ "${mseIsCheck}" == "0" ]; then
              mseValidAttr+=("${mseTmpAttr}")
            fi
          fi
        fi
      done
      if [ "${#mseValidAttr[@]}" -ge "1" ]; then
        mseAttributes=$(mse_str_join ";" "mseValidAttr")
      fi
    fi
    if [ "$mseTmpBGCode" != "" ]; then
      mseIsCode=$(mse_check_isInteger "${mseTmpBGCode}")
      case "${mseUseColorSystem}" in
        4)
          if [ "${mseIsCode}" == "1" ]; then
            mseIsCheck=$(mse_check_hasValueInArray "${mseTmpBGCode}" "MSE_MD_ICOLOR_AVAILABLE_BGCOLOR_CODES")
            if [ "${mseIsCheck}" == "1" ]; then
                mseBGColor="${mseTmpBGCode}"
            fi
          else
            mseLength=${#MSE_MD_ICOLOR_AVAILABLE_COLOR_NAMES[@]}
            for (( i=0; i<mseLength; i++)); do
              if [ "${mseTmpBGCode}" == "${MSE_MD_ICOLOR_AVAILABLE_COLOR_NAMES[$i]}" ]; then
                mseBGColor="${MSE_MD_ICOLOR_AVAILABLE_BGCOLOR_CODES[$i]}"
                break
              fi
            done
          fi
        ;;
        8)
          if [ "${mseIsCode}" == "1" ]; then
            if [ "${mseTmpBGCode}" -ge 0 ] && [ "${mseTmpBGCode}" -le 255 ]; then
              mseBGColor="48;5;${mseTmpBGCode}"
            fi
          fi
        ;;
        32)
          mse_str_split ";" "${mseTmpBGCode}"
          if [ "${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}" == "3" ]; then
            local mseIsValid=1
            for mseUParam in "${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"; do
              mseIsCode=$(mse_check_isInteger "${mseUParam}")
              if [ "${mseIsCode}" == "0" ] || [ "${mseUParam}" -lt 0 ] || [ "${mseUParam}" -gt 255 ]; then
                mseIsValid=0
              fi
            done
            if [ "${mseIsValid}" == "1" ]; then
              mseBGColor="48;2;${mseTmpBGCode}"
            fi
          fi
        ;;
      esac
    fi
    if [ "$mseTmpFGCode" != "" ]; then
      mseIsCode=$(mse_check_isInteger "${mseTmpFGCode}")
      case "${mseUseColorSystem}" in
        4)
          if [ "${mseIsCode}" == "1" ]; then
            mseIsCheck=$(mse_check_hasValueInArray "${mseTmpFGCode}" "MSE_MD_ICOLOR_AVAILABLE_COLOR_CODES")
            if [ "${mseIsCheck}" == "1" ]; then
              mseFGColor="${mseTmpFGCode}"
            fi
          else
            mseLength=${#MSE_MD_ICOLOR_AVAILABLE_COLOR_NAMES[@]}
            for (( i=0; i<mseLength; i++)); do
              if [ "${mseTmpFGCode}" == "${MSE_MD_ICOLOR_AVAILABLE_COLOR_NAMES[$i]}" ]; then
                mseFGColor="${MSE_MD_ICOLOR_AVAILABLE_COLOR_CODES[$i]}"
                break
              fi
            done
          fi
        ;;
        8)
          if [ "${mseIsCode}" == "1" ]; then
            if [ "${mseTmpFGCode}" -ge 0 ] && [ "${mseTmpFGCode}" -le 255 ]; then
              mseFGColor="38;5;${mseTmpFGCode}"
            fi
          fi
        ;;
        32)
          mse_str_split ";" "${mseTmpFGCode}"
          if [ "${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}" == "3" ]; then
            local mseIsValid=1
            for mseUParam in "${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"; do
              mseIsCode=$(mse_check_isInteger "${mseUParam}")
              if [ "${mseIsCode}" == "0" ] || [ "${mseUParam}" -lt 0 ] || [ "${mseUParam}" -gt 255 ]; then
                mseIsValid=0
              fi
            done
            if [ "${mseIsValid}" == "1" ]; then
              mseFGColor="38;2;${mseTmpFGCode}"
            fi
          fi
        ;;
      esac
    fi
    if [ "${mseReturnLikeCode}" == "1" ]; then
      printf "\e[%s;%s;%sm" "${mseAttributes}" "${mseBGColor}" "${mseFGColor}"
    else
      printf "e[%s;%s;%sm" "${mseAttributes}" "${mseBGColor}" "${mseFGColor}"
    fi
  fi
}
MSE_GLOBAL_CMD["font createStyle"]="mse_font_createStyle"
mse_font_createStyle_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=5
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="UseColorSystem :: r :: list :: 4"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0_labels"]="4, 8, 32"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0_values"]="4, 8, 32"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="Attributes :: r :: list"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1_labels"]="BOLD, DARK, ITALIC, UNDERLINE, BLINKS, BLINKF, REVERSE, HIDE, STRIKE, NONE, RBOLD, RDARK, RITALIC, RUNDERLINE, RBLINKS, RBLINKF, RREVERSE, RHIDE, RSTRIKE"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1_values"]="1, 2, 3, 4, 5, 6, 7, 8, 9, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="BGColor :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_3"]="FGColor :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_4"]="ReturnLikeCode :: o :: bool :: 0"
  case "${MSE_GLOBAL_MODULE_LOCALE}" in
    pt-br)
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_0"]="Selecione o sistema de cores (bytes)."
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_1"]="Defina um atributo para a fonte."
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_2"]="Cor de fundo (em conformidade com o sistema de cores selecionado)."
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_3"]="Cor da fonte (em conformidade com o sistema de cores selecionado)."
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_4"]="Indique se deve retornar o resultado como código (\"1\") ou como string (\"0\")."
    ;;
    *)
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_0"]="Select color system (bytes)."
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_1"]="Set an attribute for the font."
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_2"]="Background color (according to the selected color system)."
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_3"]="Font color (according to the selected color system)."
      MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_desc_4"]="Indicate whether to return the result as a code (\"1\") or as a string (\"0\")."
    ;;
  esac
}
# END :: mse_font_createStyle.sh


# INI :: mse_font_showAttributes.sh
mse_font_showAttributes() {
  local i
  local mseFormat="list"
  local mseLength=${#MSE_MD_ICOLOR_AVAILABLE_FONT_ATTRIBUTE_NAMES[@]}
  local mseLine
  local mseRawTable
  local mseLineItens=6
  if [ $# -ge 1 ]; then
    mseFormat="$1"
  fi
  if [ $# == 2 ]; then
    local isInt=$(mse_check_isInteger $2)
    if [ $isInt == 1 ]; then
      mseLineItens=$2
    fi
  fi
  for (( i=0; i<mseLength; i++)); do
    mseAttrName=${MSE_MD_ICOLOR_AVAILABLE_FONT_ATTRIBUTE_NAMES[$i]}
    if [ "${mseAttrName}" != "NONE" ]; then
      mseLine="${mseAttrName}"
      if [ "${mseFormat}" == "list" ]; then
        mseLine+="\n"
      elif [ "${mseFormat}" == "table" ]; then
        if (( i % mseLineItens != 0 )); then
          mseLine+=" : "
        else
          mseLine+="\n"
        fi
      fi
      mseRawTable+="${mseLine}"
    fi
  done
  printf "NONE\n"
  mseRawTable=$(printf "${mseRawTable}")
  column -e -t -s ":" <<< "${mseRawTable}"
}
MSE_GLOBAL_CMD["font show attributes"]="mse_font_showAttributes"
mse_font_showAttributes_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=2
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Format :: o :: list :: list"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0_labels"]="list, table"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0_values"]="list, table"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="ItensPerLine :: o :: int :: 6"
}
# END :: mse_font_showAttributes.sh


# INI :: mse_font_showCharacters.sh
mse_font_showCharacters() {
  local mseOutputType
  local mseIniCode
  local mseEndCode
  local mseCheck
  mseOutputType="table"
  case "${1}" in
    table | char | code)
      mseOutputType="${1}"
    ;;
  esac
  mseIniCode=33
  if [ $# -ge 2 ]; then
    mseCheck=$(mse_check_isInteger "$2")
    if [ "${mseCheck}" == 1 ] && [ "$2" -ge 33 ] && [ "$2" -le 255 ]; then
      mseIniCode="$2"
    fi
  fi
  mseEndCode=255
  if [ $# -ge 3 ]; then
    mseCheck=$(mse_check_isInteger "$3")
    if [ "${mseCheck}" == 1 ] && [ "$3" -ge 33 ] && [ "$3" -le 255 ]; then
      mseEndCode="$3"
    fi
  fi
  if [ "${mseIniCode}" -gt "${mseEndCode}" ]; then
    mseIniCode="$3"
    mseEndCode="$2"
  fi
  if [ $mseOutputType == "table" ] || [ $mseOutputType == "char" ]; then
    if [ $mseOutputType == "table" ]; then
      printf "\n      ";
      for x in {0..15}; do
        printf "%-3x" $x;
      done;
      printf "\n%46s\n" | sed 's/ /-/g;s/^/      /';
    fi
    if [ $mseOutputType == "table" ]; then
      c=$(printf "fa" | xxd -p -r | iconv -f 'CP437//' -t 'UTF-8')
      printf "%32s" | sed 's/../'"$c"'  /g;s/^/  0   /;s/$/\n/'
      printf "%32s" | sed 's/../'"$c"'  /g;s/^/  1   /'
    fi
    for x in {32..255}; do
      (( x % 16 == 0 )) && printf "\n"
      if [ $mseOutputType == "table" ]; then
        n=$(expr $x % 15) || true
        (( (x % 16) == 0 )) && printf "%-4x" $n | sed 's/0/f/;s/^/  /'
      fi
      printf "%02x" $x | xxd -p -r | iconv -f 'CP437//' -t 'UTF-8' | sed 's/.*/&  /'
      if [ $mseOutputType == "table" ]; then
        (( x == 127 )) && printf "%46s" | sed 's/ /-/g;s/^/      /;i\ '
      fi
    done
    if [ $mseOutputType == "table" ]; then
      printf "%46s" | sed 's/ /-/g;s/^/\n      /;s/$/\n      /';
      for x in {0..15}; do
        printf "%-3x" $x;
      done;
    fi
    printf "\n"
  else
    local i
    local mseLine
    local mseRawTable
    local mseHasTwoDots=0
    local mseChar
    local mseCDec
    local mseCHex
    local mseCOct
    mseRawTable="Index:Char:Decimal:Hex:Octal\n"
    for (( i=mseIniCode; i<=mseEndCode; i++ )); do
      if [ $i == 37 ]; then
        mseLine="37:%%:37:25:045"
      elif [ $i == 42 ]; then
        mseLine="42:*:42:2A:052"
      else
        mseChar=$(printf "%02x" $i | xxd -p -r | iconv -f 'CP437//' -t 'UTF-8')
        mseCDec=$(mse_str_convert_charToDecimal $mseChar 1)
        mseCHex=$(mse_str_convert_charToHex $mseChar 1)
        mseCOct=$(mse_str_convert_charToOctal $mseChar 1)
        if [ "${mseChar}" == ":" ]; then
          mseChar="[[TWODOTS]]"
          mseHasTwoDots=1
        fi
        mseLine="$i:${mseChar}:${mseCDec}:${mseCHex}:${mseCOct}"
      fi
      mseRawTable+="${mseLine}\n"
    done
    printf "\n"
    mseRawTable=$(printf "${mseRawTable}")
    mseRawTable=$(column -e -t -s ":" <<< "${mseRawTable}")
    if [ "${mseHasTwoDots}" == 1 ]; then
      local mseLineRaw
      while read -r mseLineRaw || [ -n "${mseLineRaw}" ]; do
        if [[ "${mseLineRaw}" =~ "[[TWODOTS]]" ]]; then
          mseLineRaw=$(mse_str_replacePlaceHolder "${mseLineRaw}" "TWODOTS" ":          ")
        fi
        printf "%s\n" "${mseLineRaw}"
      done <<< "$mseRawTable"
    else
      printf "${mseRawTable}\n"
    fi
    printf "\n"
  fi
}
MSE_GLOBAL_CMD["font show characters"]="mse_font_showCharacters"
mse_font_showCharacters_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=3
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="ReturnFormat :: r :: list"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0_labels"]="table, char, code"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0_values"]="table, char, code"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="StartCharCode :: o :: int :: :: 33 :: 255"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="LastCharCode :: o :: int :: :: 33 :: 255"
}
# END :: mse_font_showCharacters.sh


# INI :: mse_font_showColors.sh
mse_font_showColors() {
  local mseUseColorSystem
  local mseTableType
  local mseItensPerLine
  local mseItensPerLineIsSet
  local mseCheck
  mseUseColorSystem="4"
  if [ $# -ge 1 ]; then
    if [ "$1" == "8" ] || [ "$1" == "32" ]; then
      mseUseColorSystem="$1"
    fi
  fi
  mseTableType="fg"
  if [ $# -ge 2 ]; then
    if [ "$2" == "bg" ]; then
      mseTableType="bg"
    fi
  fi
  mseItensPerLine=12
  mseItensPerLineIsSet="4"
  if [ $# -ge 3 ]; then
    mseCheck="$(mse_check_isInteger $3)"
    if [ "${mseCheck}" == "1" ]; then
      if [ "$3" -le 4 ]; then
        mseItensPerLine="4"
      else
        mseItensPerLine="$3"
      fi
      mseItensPerLineIsSet="0"
    fi
  fi
  case "${mseUseColorSystem}" in
    4)
      local i
      local mseLength=${#MSE_MD_ICOLOR_AVAILABLE_COLOR_NAMES[@]}
      local mseColorLabel
      local mseColorName
      local mseColorVarName
      local mseColorCode
      local mseLine
      local mseRawTable
      mseRawTable="${lbl_font_showTextColors_TableHeaders}\n"
      for (( i=0; i<mseLength; i++)); do
        mseColorLabel=${MSE_MD_ICOLOR_AVAILABLE_COLOR_LABELS[$i]}
        mseColorName=${MSE_MD_ICOLOR_AVAILABLE_COLOR_NAMES[$i]}
        mseColorVarName="mse${mseColorName}"
        mseColorCode="\\${!mseColorVarName}"
        mseLine="${mseColorLabel}:${mseColorName}:${mseColorCode}:${!mseColorVarName}myShellEnv${mseNONE} \n"
        mseRawTable+="${mseLine}"
      done
      printf "\n"
      mseRawTable=$(printf "${mseRawTable}")
      mseRawTable=$(sed 's/^\s*//g' <<< "${mseRawTable}" | sed 's/\s*$//g' | sed 's/\s*:/:/g' | sed 's/:\s*/:/g')
      column -e -t -s ":" <<< "${mseRawTable}"
      printf "\n"
    ;;
    8)
      local mseColorSet=255
      local mseColorCodeMaxLength=($(eval echo {0..$mseColorSet}))
      local mseColorIndex
      local mseColorNumber=0
      local mseColorMod=0
      local mseStrColorNumber
      local mseNewLine
      printf "\n"
      for mseColorIndex in "${mseColorCodeMaxLength[@]}"; do
        mseNewLine=0
        if [ "$mseColorIndex" -lt 10 ]; then
          mseStrColorNumber="  ${mseColorIndex}"
        elif [ "$mseColorIndex" -lt 100 ]; then
          mseStrColorNumber=" ${mseColorIndex}"
        else
          mseStrColorNumber="${mseColorIndex}"
        fi
        if [ "$mseTableType" == "fg" ]; then
          printf "\e[38;5;%sm  %s  ${mseNONE}" ${mseColorIndex} "${mseStrColorNumber}"
        elif [ "$mseTableType" == "bg" ]; then
          printf "\e[48;5;%sm  %s  ${mseNONE}" ${mseColorIndex} "${mseStrColorNumber}"
        fi
        ((mseColorNumber=mseColorIndex+1))
        ((mseColorMod=mseColorNumber % mseItensPerLine))
        if [ "${mseColorMod}" == "${mseItensPerLineIsSet}" ]; then
          printf "\n"
          mseNewLine=1
        fi
      done
      if [ "${mseNewLine}" == 0 ]; then
        printf "\n"
      fi
      printf "\n${lbl_font_showTextColors_UseCodeExample}"
      if [ "$mseTableType" == "fg" ]; then
        printf "%s" "\\e[38;5;Xm"
      elif [ "$mseTableType" == "bg" ]; then
        printf "%s" "\\e[48;5;Xm"
      fi
      printf "\n\n"
    ;;
  esac
}
MSE_GLOBAL_CMD["font show colors"]="mse_font_showColors"
mse_font_showColors_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=3
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="UseColorSystem :: r :: list :: 4"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0_labels"]="4, 8, 32"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0_values"]="4, 8, 32"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="TableType :: o :: list :: fg"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1_labels"]="fg, bg"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1_values"]="fg, bg"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_2"]="ItensPerLine :: o :: int :: 12"
}
# END :: mse_font_showColors.sh


# INI :: mse_font_showFonts.sh
mse_font_showFonts() {
  find / -name "*.psf*" | sort | uniq | less
}
MSE_GLOBAL_CMD["font show fonts"]="mse_font_showFonts"
# END :: mse_font_showFonts.sh


# INI :: mse_font_utf8Mode.sh
mse_font_setUTF8Mode() {
  local mseReturn=""
  local mseMode="check"
  if [ $# -ge 1 ] && ([ "${1,,}" == "on" ] || [ "${1,,}" == "off" ]); then
    mseMode="${1,,}"
  fi
  case "${mseMode}" in
    on)
      printf "\033%%G"
    ;;
    off)
      printf "\033%%@"
    ;;
  esac
  printf "UTF-8: ${mseMode} \u2658 \n"
}
MSE_GLOBAL_CMD["font set UTF8Mode"]="mse_font_setUTF8Mode"
# END :: mse_font_utf8Mode.sh


# INI :: mse_inter_theme_default.sh
mse_inter_theme_default_setColors() {
  if [ -z "${MSE_GLOBAL_MAIN_THEME_COLORS[mse_inter_theme_default]+x}" ]; then
    local msePrefix="itd"
    declare -A mseToneArr
    mseToneArr["none"]=""
    mseToneArr["none_alt"]=""
    mseToneArr["info"]=$(mse_font_createStyle "4" "BOLD" "NONE" "LBLACK" "1")
    mseToneArr["info_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LBLACK" "1")
    mseToneArr["attention"]=$(mse_font_createStyle "4" "BOLD" "NONE" "LBLUE" "1")
    mseToneArr["attention_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LBLUE" "1")
    mseToneArr["warning"]=$(mse_font_createStyle "4" "BOLD" "NONE" "LYELLOW" "1")
    mseToneArr["warning_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LYELLOW" "1")
    mseToneArr["error"]=$(mse_font_createStyle "4" "BOLD" "NONE" "LRED" "1")
    mseToneArr["error_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LRED" "1")
    mseToneArr["fail"]=$(mse_font_createStyle "4" "BOLD" "NONE" "RED" "1")
    mseToneArr["fail_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "RED" "1")
    mseToneArr["success"]=$(mse_font_createStyle "4" "BOLD" "NONE" "GREEN" "1")
    mseToneArr["success_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "GREEN" "1")
    mseToneArr["body"]=$(mse_font_createStyle "4" "BOLD" "NONE" "LBLACK" "1")
    mseToneArr["body_alt"]=$(mse_font_createStyle "4" "BOLD" "NONE" "WHITE" "1")
    mseToneArr["ordinary"]=$(mse_font_createStyle "4" "BOLD" "NONE" "LBLUE" "1")
    mseToneArr["ordinary_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LBLUE" "1")
    mseToneArr["friendly"]=$(mse_font_createStyle "4" "BOLD" "NONE" "LGREEN" "1")
    mseToneArr["friendly_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LGREEN" "1")
    mseToneArr["caution"]=$(mse_font_createStyle "4" "BOLD" "NONE" "LYELLOW" "1")
    mseToneArr["caution_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LYELLOW" "1")
    mseToneArr["important"]=$(mse_font_createStyle "4" "BOLD" "NONE" "LRED" "1")
    mseToneArr["important_alt"]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LRED" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_bar]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LBLUE" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_bar_alt]=$(mse_font_createStyle "4" "BOLD" "NONE" "LYELLOW" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_info]=$(mse_font_createStyle "4" "BOLD" "NONE" "DLCYAN" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_info_alt]=$(mse_font_createStyle "4" "BOLD" "NONE" "DWHITE" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_at]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "BLUE" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_tagName]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "BLUE" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_tagCommom]=$(mse_font_createStyle "4" "BOLD,DARK" "NONE" "LCYAN" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_param]=$(mse_font_createStyle "8" "BOLD" "NONE" "250" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_module]=$(mse_font_createStyle "4" "BOLD" "NONE" "BLUE" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_subModule]=$(mse_font_createStyle "4" "BOLD" "NONE" "BLUE" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_functions]=$(mse_font_createStyle "4" "" "NONE" "LBLACK" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_separator]=$(mse_font_createStyle "4" "" "NONE" "WHITE" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_separatorBar]=$(mse_font_createStyle "4" "DARK" "NONE" "WHITE" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_selectedElements]=$(mse_font_createStyle "4" "" "NONE" "LBLACK" "1")
    MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_totalElements]=$(mse_font_createStyle "4" "" "NONE" "LBLACK" "1")
    declare -A mseArrFunctionComponents
    mseArrFunctionComponents["message"]="title_string"
    declare -A mseArrFunctionTones
    mseArrFunctionTones["message"]="none info attention warning error fail success ordinary friendly caution important"
    local mseFunctionId=""
    declare -a mseTmpComponentsArr=()
    declare -a mseTmpToneArr=()
    local mseTmpComponent=""
    local mseTmpTone=""
    local mseTmpColorId=""
    for mseFunctionId in "${!mseArrFunctionComponents[@]}"; do
      mseTmpComponentsArr=(${mseArrFunctionComponents[$mseFunctionId]})
      mseTmpToneArr=(${mseArrFunctionTones[$mseFunctionId]})
      for mseTmpComponent in "${mseTmpComponentsArr[@]}"; do
        for mseTmpTone in "${mseTmpToneArr[@]}"; do
          mseTmpColorId="${msePrefix}_${mseFunctionId}_${mseTmpComponent}_${mseTmpTone}"
          MSE_GLOBAL_MAIN_THEME_COLORS["${mseTmpColorId}"]="${mseToneArr[${mseTmpTone}]}"
          MSE_GLOBAL_MAIN_THEME_COLORS["${mseTmpColorId}_alt"]="${mseToneArr[${mseTmpTone}_alt]}"
        done
      done
    done
    MSE_GLOBAL_MAIN_THEME_COLORS["${msePrefix}_message_body"]="${mseToneArr[body]}"
    MSE_GLOBAL_MAIN_THEME_COLORS["${msePrefix}_message_body_alt"]="${mseToneArr[body_alt]}"
    MSE_GLOBAL_MAIN_THEME_COLORS["mse_inter_theme_default"]="${msePrefix}"
  fi
}
mse_inter_theme_default_prepareShowMessage() {
  mse_inter_theme_default_setColors
  declare -n mseTmpArrThemePrepareMessage="${1}"
  local mseMessageType="${mseTmpArrThemePrepareMessage[meta_type]}"
  local msePrefix="${MSE_GLOBAL_MAIN_THEME_COLORS[${MSE_GLOBAL_THEME_NAME}]}"
  case "${mseTmpArrThemePrepareMessage[meta_format]}" in
    custom)
      mseTmpArrThemePrepareMessage["meta_format"]="custom"
    ;;
    default | prompt)
      mseTmpArrThemePrepareMessage["top_separator_string"]="\n"
      mseTmpArrThemePrepareMessage["top_separator_color"]=""
      mseTmpArrThemePrepareMessage["top_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["top_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["title_show"]="1"
      mseTmpArrThemePrepareMessage["title_top_separator_string"]=""
      mseTmpArrThemePrepareMessage["title_top_separator_color"]=""
      mseTmpArrThemePrepareMessage["title_top_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["title_top_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["title_indent"]="  "
      mseTmpArrThemePrepareMessage["title_bullet"]=":: "
      mseTmpArrThemePrepareMessage["title_bullet_color"]=""
      mseTmpArrThemePrepareMessage["title_bullet_color_alt"]=""
      mseTmpArrThemePrepareMessage["title_bullet_colorize"]="0"
      mseTmpArrThemePrepareMessage["title_string_color"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_message_title_string_${mseMessageType}]}"
      mseTmpArrThemePrepareMessage["title_string_color_alt"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_message_title_string_${mseMessageType}_alt]}"
      mseTmpArrThemePrepareMessage["title_string_colorize"]="1"
      mseTmpArrThemePrepareMessage["title_string_end"]="\n"
      mseTmpArrThemePrepareMessage["title_bottom_separator_string"]="\n"
      mseTmpArrThemePrepareMessage["title_bottom_separator_color"]=""
      mseTmpArrThemePrepareMessage["title_bottom_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["title_bottom_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["body_show"]="1"
      mseTmpArrThemePrepareMessage["body_top_separator_string"]=""
      mseTmpArrThemePrepareMessage["body_top_separator_color"]=""
      mseTmpArrThemePrepareMessage["body_top_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["body_top_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["body_first_line_indent"]="     "
      mseTmpArrThemePrepareMessage["body_first_line_bullet"]=""
      mseTmpArrThemePrepareMessage["body_first_line_bullet_color"]=""
      mseTmpArrThemePrepareMessage["body_first_line_bullet_color_alt"]=""
      mseTmpArrThemePrepareMessage["body_first_line_bullet_colorize"]="0"
      mseTmpArrThemePrepareMessage["body_lines_indent"]="     "
      mseTmpArrThemePrepareMessage["body_lines_bullet"]=""
      mseTmpArrThemePrepareMessage["body_lines_bullet_color"]=""
      mseTmpArrThemePrepareMessage["body_lines_bullet_color_alt"]=""
      mseTmpArrThemePrepareMessage["body_lines_bullet_colorize"]="0"
      mseTmpArrThemePrepareMessage["body_lines_color"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_message_body]}"
      mseTmpArrThemePrepareMessage["body_lines_color_alt"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_message_body_alt]}"
      mseTmpArrThemePrepareMessage["body_lines_colorize"]="1"
      mseTmpArrThemePrepareMessage["body_bottom_separator_string"]=""
      mseTmpArrThemePrepareMessage["body_bottom_separator_color"]=""
      mseTmpArrThemePrepareMessage["body_bottom_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["body_bottom_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["bottom_separator_string"]="\n"
      mseTmpArrThemePrepareMessage["bottom_separator_color"]=""
      mseTmpArrThemePrepareMessage["bottom_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["bottom_separator_colorize"]="0"
      if [ "${mseTmpArrThemePrepareMessage[meta_format]}" == "prompt" ]; then
        mseTmpArrThemePrepareMessage["title_bottom_separator_string"]=""
      fi
    ;;
    title)
      mseTmpArrThemePrepareMessage["top_separator_string"]=""
      mseTmpArrThemePrepareMessage["top_separator_color"]=""
      mseTmpArrThemePrepareMessage["top_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["top_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["title_show"]="1"
      mseTmpArrThemePrepareMessage["title_top_separator_string"]="\n"
      mseTmpArrThemePrepareMessage["title_top_separator_color"]=""
      mseTmpArrThemePrepareMessage["title_top_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["title_top_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["title_indent"]="  "
      mseTmpArrThemePrepareMessage["title_bullet"]=":: "
      mseTmpArrThemePrepareMessage["title_bullet_color"]=""
      mseTmpArrThemePrepareMessage["title_bullet_color_alt"]=""
      mseTmpArrThemePrepareMessage["title_bullet_colorize"]="0"
      mseTmpArrThemePrepareMessage["title_string_color"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_message_title_string_${mseMessageType}]}"
      mseTmpArrThemePrepareMessage["title_string_color_alt"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_message_title_string_${mseMessageType}_alt]}"
      mseTmpArrThemePrepareMessage["title_string_colorize"]="1"
      mseTmpArrThemePrepareMessage["title_string_end"]="\n"
      mseTmpArrThemePrepareMessage["title_bottom_separator_string"]="\n"
      mseTmpArrThemePrepareMessage["title_bottom_separator_color"]=""
      mseTmpArrThemePrepareMessage["title_bottom_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["title_bottom_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["body_show"]="0"
      mseTmpArrThemePrepareMessage["bottom_separator_string"]=""
      mseTmpArrThemePrepareMessage["bottom_separator_color"]=""
      mseTmpArrThemePrepareMessage["bottom_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["bottom_separator_colorize"]="0"
    ;;
    status)
      mseTmpArrThemePrepareMessage["top_separator_string"]=""
      mseTmpArrThemePrepareMessage["top_separator_color"]=""
      mseTmpArrThemePrepareMessage["top_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["top_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["title_show"]="1"
      mseTmpArrThemePrepareMessage["title_top_separator_string"]=""
      mseTmpArrThemePrepareMessage["title_top_separator_color"]=""
      mseTmpArrThemePrepareMessage["title_top_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["title_top_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["title_indent"]="  "
      mseTmpArrThemePrepareMessage["title_bullet"]=":: "
      mseTmpArrThemePrepareMessage["title_bullet_color"]=""
      mseTmpArrThemePrepareMessage["title_bullet_color_alt"]=""
      mseTmpArrThemePrepareMessage["title_bullet_colorize"]="0"
      mseTmpArrThemePrepareMessage["title_string_color"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_message_title_string_${mseMessageType}]}"
      mseTmpArrThemePrepareMessage["title_string_color_alt"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_message_title_string_${mseMessageType}_alt]}"
      mseTmpArrThemePrepareMessage["title_string_colorize"]="1"
      mseTmpArrThemePrepareMessage["title_string_end"]=""
      mseTmpArrThemePrepareMessage["title_bottom_separator_string"]=""
      mseTmpArrThemePrepareMessage["title_bottom_separator_color"]=""
      mseTmpArrThemePrepareMessage["title_bottom_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["title_bottom_separator_colorize"]="0"
      mseTmpArrThemePrepareMessage["body_show"]="0"
      mseTmpArrThemePrepareMessage["bottom_separator_string"]=""
      mseTmpArrThemePrepareMessage["bottom_separator_color"]=""
      mseTmpArrThemePrepareMessage["bottom_separator_color_alt"]=""
      mseTmpArrThemePrepareMessage["bottom_separator_colorize"]="0"
    ;;
  esac
}
mse_inter_theme_default_showMessage_checkMetaFormat() {
  declare -a mseAllowedMetaFormat=("custom" "default" "prompt" "status" "title")
  local mseReturn="${1}"
  if [[ ! "${mseAllowedMetaFormat[*]}" =~ "${mseReturn}" ]]; then
    mseReturn="default"
  fi
  printf "${mseReturn}"
}
mse_inter_theme_default_showMessage() {
  declare -n mseTmpThemeArrShowMessage="${1}"
  if [ "${mseTmpThemeArrShowMessage[meta_format]}" == "default" ]; then
    local mseValidBody="1"
    if [ "${mseTmpThemeArrShowMessage[body_lines]}" == "" ]; then
      mseValidBody="0"
    else
      if [[ ! "$(declare -p ${mseTmpThemeArrShowMessage[body_lines]} 2> /dev/null)" =~ "declare -a" ]]; then
        mseValidBody="0"
      else
        declare -n mseTmpThemeBodyArrayName="${mseTmpThemeArrShowMessage["body_lines"]}"
        if [ "${#mseTmpThemeBodyArrayName[@]}" == "0" ]; then
          mseValidBody="0"
        fi
      fi
    fi
    if [ "${mseValidBody}" == "0" ]; then
      mseTmpThemeArrShowMessage[meta_format]="title"
      mse_inter_theme_default_prepareShowMessage "${1}"
    fi
  fi
  mseTmpThemeArrShowMessage[title_type]="simple"
  if [[ "${mseTmpThemeArrShowMessage[title_string]}" == *"::"* ]]; then
    mseTmpThemeArrShowMessage[title_type]="code"
  fi
  mse_inter_theme_default_showMessage_createSeparator "${mseTmpThemeArrShowMessage[meta_type]}" "${mseTmpThemeArrShowMessage[top_separator_string]}" "${mseTmpThemeArrShowMessage[top_separator_color]}" "${mseTmpThemeArrShowMessage[top_separator_color_alt]}" "${mseTmpThemeArrShowMessage[top_separator_colorize]}"
  mse_inter_theme_default_showMessage_createTitle "${1}"
  if [ "${mseTmpThemeArrShowMessage[meta_format]}" == "prompt" ]; then
    mse_inter_theme_default_showMessage_createPromptBody "${1}" "${2}"
  fi
  mse_inter_theme_default_showMessage_createMessageBody "${1}"
  mse_inter_theme_default_showMessage_createSeparator "${mseTmpThemeArrShowMessage[meta_type]}" "${mseTmpThemeArrShowMessage[bottom_separator_string]}" "${mseTmpThemeArrShowMessage[bottom_separator_color]}" "${mseTmpThemeArrShowMessage[bottom_separator_color_alt]}" "${mseTmpThemeArrShowMessage[bottom_separator_colorize]}"
}
mse_inter_theme_default_showMessage_createSeparator() {
  if [ "${2}" != "" ]; then
    local mseReturn=""
    if [ "${5}" == "1" ]; then
      mseReturn+="${3}"
    fi
    mseReturn+="${2}"
    if [ "${5}" == "1" ]; then
      mseReturn+="${mseNONE}"
    fi
    printf "${mseReturn}"
  fi
}
mse_inter_theme_default_showMessage_createBullet() {
  mse_inter_theme_default_showMessage_createSeparator "${1}" "${2}" "${3}" "${4}" "${5}"
}
mse_inter_theme_default_showMessage_createTitle() {
  declare -n mseTmpThemeArrCreateTitle="${1}"
  if [ "${mseTmpThemeArrCreateTitle[title_show]}" == "1" ]; then
    local mseMessageType="${mseTmpThemeArrCreateTitle[meta_type]}"
    local mseTitleType="${mseTmpThemeArrCreateTitle[title_type]}"
    local mseTitleTopSeparatorString="${mseTmpThemeArrCreateTitle[title_top_separator_string]}"
    local mseTitleTopSeparatorColor="${mseTmpThemeArrCreateTitle[title_top_separator_color]}"
    local mseTitleTopSeparatorColorAlt="${mseTmpThemeArrCreateTitle[title_top_separator_color_alt]}"
    local mseTitleTopSeparatorColorize="${mseTmpThemeArrCreateTitle[title_top_separator_colorize]}"
    local mseTitleIndent="${mseTmpThemeArrCreateTitle[title_indent]}"
    local mseTitleBullet="${mseTmpThemeArrCreateTitle[title_bullet]}"
    local mseTitleBulletColor="${mseTmpThemeArrCreateTitle[title_bullet_color]}"
    local mseTitleBulletColorAlt="${mseTmpThemeArrCreateTitle[title_bullet_color_alt]}"
    local mseTitleBulletColorize="${mseTmpThemeArrCreateTitle[title_bullet_colorize]}"
    local mseTitleString="${mseTmpThemeArrCreateTitle[title_string]}"
    local mseTitleStringColor="${mseTmpThemeArrCreateTitle[title_string_color]}"
    local mseTitleStringColorAlt="${mseTmpThemeArrCreateTitle[title_string_color_alt]}"
    local mseTitleStringColorize="${mseTmpThemeArrCreateTitle[title_string_colorize]}"
    local mseTitleStringEnd="${mseTmpThemeArrCreateTitle[title_string_end]}"
    local mseTitleBottomSeparatorString="${mseTmpThemeArrCreateTitle[title_bottom_separator_string]}"
    local mseTitleBottomSeparatorColor="${mseTmpThemeArrCreateTitle[title_bottom_separator_color]}"
    local mseTitleBottomSeparatorColorAlt="${mseTmpThemeArrCreateTitle[title_bottom_separator_color_alt]}"
    local mseTitleBottomSeparatorColorize="${mseTmpThemeArrCreateTitle[title_bottom_separator_colorize]}"
    if [ "${mseTitleString}" == "" ]; then
      case "${mseMessageType}" in
        info | i)
          mseTitleString="${lbl_inter_alert_header_info}"
        ;;
        attention | a)
          mseTitleString="${lbl_inter_alert_header_attention}"
        ;;
        warning | w)
          mseTitleString="${lbl_inter_alert_header_warning}"
        ;;
        error | e)
          mseTitleString="${lbl_inter_alert_header_error}"
        ;;
        fail | f)
          mseTitleString="${lbl_inter_alert_header_fail}"
        ;;
        success | s)
          mseTitleString="${lbl_inter_alert_header_success}"
        ;;
        friendly | fr | ordinary | or | caution | ca | important | im)
          mseTitleString=""
        ;;
      esac
    fi
    local mseUseTitle=""
    local mseUseTitleColor=""
    local mseUseTitleColorAlt=""
    declare -a mseTitleTextParts=()
    if [ "${mseTitleStringColorize}" == "1" ]; then
      mseUseTitleColor="${mseTitleStringColor}"
      mseUseTitleColorAlt="${mseTitleStringColorAlt}"
    fi
    case "${mseTitleType}" in
      simple)
        mseUseTitle="${mseUseTitleColor}${mseTitleString}${mseNONE}"
      ;;
      code)
        mse_str_split "::" "${mseTitleString}"
        mseTitleTextParts="${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"
        if [ "${mseTitleTextParts}" -le "1" ]; then
          mseUseTitle="[ ${mseUseTitleColorAlt}script${mseNONE} ] ${mseUseTitleColor}${mseTitleString}${mseNONE}"
        else
          mseUseTitle="[ ${mseUseTitleColorAlt}${MSE_GLOBAL_MODULE_SPLIT_RESULT[0]}${mseNONE} ] ${mseUseTitleColor}${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]:1}${mseNONE}"
        fi
      ;;
    esac
    mse_inter_theme_default_showMessage_createSeparator "${mseMessageType}" "${mseTitleTopSeparatorString}" "${mseTitleTopSeparatorColor}" "${mseTitleTopSeparatorColorAlt}" "${mseTitleTopSeparatorColorize}"
    printf "${mseTitleIndent}"
    mse_inter_theme_default_showMessage_createBullet "${mseMessageType}" "${mseTitleBullet}" "${mseTitleBulletColor}" "${mseTitleBulletColorAlt}" "${mseTitleBulletColorize}"
    printf "${mseUseTitle}${mseTitleStringEnd}"
    mse_inter_theme_default_showMessage_createSeparator "${mseMessageType}" "${mseTitleBottomSeparatorString}" "${mseTitleBottomSeparatorColor}" "${mseTitleBottomSeparatorColorAlt}" "${mseTitleBottomSeparatorColorize}"
  fi
}
mse_inter_theme_default_showMessage_createMessageBody() {
  declare -n mseTmpThemeArrCreateBody="${1}"
  if [ "${mseTmpThemeArrCreateBody[body_show]}" == "1" ]; then
    local mseMessageType="${mseTmpThemeArrCreateBody[meta_type]}"
    local mseBodyTopSeparatorString="${mseTmpThemeArrCreateBody[body_top_separator_string]}"
    local mseBodyTopSeparatorColor="${mseTmpThemeArrCreateBody[body_top_separator_color]}"
    local mseBodyTopSeparatorColorAlt="${mseTmpThemeArrCreateBody[body_top_separator_color_alt]}"
    local mseBodyTopSeparatorColorize="${mseTmpThemeArrCreateBody[body_top_separator_colorize]}"
    local mseBodyFirstLineIndent="${mseTmpThemeArrCreateBody[body_first_line_indent]}"
    local mseBodyFirstLineBullet="${mseTmpThemeArrCreateBody[body_first_line_bullet]}"
    local mseBodyFirstLineBulletColor="${mseTmpThemeArrCreateBody[body_first_line_bullet_color]}"
    local mseBodyFirstLineBulletColorAlt="${mseTmpThemeArrCreateBody[body_first_line_bullet_color_alt]}"
    local mseBodyFirstLineBulletColorize="${mseTmpThemeArrCreateBody[body_first_line_bullet_colorize]}"
    local mseBodyLinesIndent="${mseTmpThemeArrCreateBody[body_lines_indent]}"
    local mseBodyLinesBullet="${mseTmpThemeArrCreateBody[body_lines_bullet]}"
    local mseBodyLinesBulletColor="${mseTmpThemeArrCreateBody[body_lines_bullet_color]}"
    local mseBodyLinesBulletColorAlt="${mseTmpThemeArrCreateBody[body_lines_bullet_color_alt]}"
    local mseBodyLinesBulletColorize="${mseTmpThemeArrCreateBody[body_lines_bullet_colorize]}"
    declare -a mseBodyLines=()
    if [ "${mseTmpThemeArrCreateBody[body_lines]}" != "" ]; then
      declare -n mseBodyLines="${mseTmpThemeArrCreateBody[body_lines]}"
    fi
    local mseBodyLinesColor="${mseTmpThemeArrCreateBody[body_lines_color]}"
    local mseBodyLinesColorAlt="${mseTmpThemeArrCreateBody[body_lines_color_alt]}"
    local mseBodyLinesColorize="${mseTmpThemeArrCreateBody[body_lines_colorize]}"
    local mseBodyBottomSeparatorString="${mseTmpThemeArrCreateBody[body_bottom_separator_string]}"
    local mseBodyBottomSeparatorColor="${mseTmpThemeArrCreateBody[body_bottom_separator_color]}"
    local mseBodyBottomSeparatorColorAlt="${mseTmpThemeArrCreateBody[body_bottom_separator_color_alt]}"
    local mseBodyBottomSeparatorColorize="${mseTmpThemeArrCreateBody[body_bottom_separator_colorize]}"
    local mseLineText=""
    local mseCountLines=0
    local mseLineIndent
    local mseLineBullet
    local mseLineBulletColor
    local mseLineBulletColorAlt
    local mseLineBulletColorize
    local mseUseBody
    for mseLineText in "${mseBodyLines[@]}"; do
      ((mseCountLines=mseCountLines+1))
      if [ "${mseCountLines}" == "1" ]; then
        mseLineIndent="${mseBodyFirstLineIndent}"
        mseLineBullet="${mseBodyFirstLineBullet}"
        mseLineBulletColor="${mseBodyFirstLineBulletColor}"
        mseLineBulletColorAlt="${mseBodyFirstLineBulletColorAlt}"
        mseLineBulletColorize="${mseBodyFirstLineBulletColorize}"
      else
        mseLineIndent="${mseBodyLinesIndent}"
        mseLineBullet="${mseBodyLinesBullet}"
        mseLineBulletColor="${mseBodyLinesBulletColor}"
        mseLineBulletColorAlt="${mseBodyLinesBulletColorAlt}"
        mseLineBulletColorize="${mseBodyLinesBulletColorize}"
      fi
      mseUseBody+="${mseLineIndent}"
      mseUseBody+=$(mse_inter_theme_default_showMessage_createBullet "${mseMessageType}" "${mseLineBullet}" "${mseLineBulletColor}" "${mseLineBulletColorAlt}" "${mseLineBulletColorize}")
      if [ "${mseBodyLinesColorize}" == "1" ]; then
        mseUseBody+="${mseBodyLinesColor}"
      fi
      mseUseBody+="${mseLineText}"
      if [ "${mseBodyLinesColorize}" == "1" ]; then
        mseUseBody+="${mseNONE}"
      fi
      mseUseBody+="\n"
    done
    mse_inter_theme_default_showMessage_createSeparator "${mseMessageType}" "${mseBodyTopSeparatorString}" "${mseBodyTopSeparatorColor}" "${mseBodyTopSeparatorColorAlt}" "${mseBodyTopSeparatorColorize}"
    printf "${mseUseBody}"
    mse_inter_theme_default_showMessage_createSeparator "${mseMessageType}" "${mseBodyBottomSeparatorString}" "${mseBodyBottomSeparatorColor}" "${mseBodyBottomSeparatorColorAlt}" "${mseBodyBottomSeparatorColorize}"
  fi
}
mse_inter_theme_default_showMessage_createPromptBody() {
  declare -n mseTmpThemeArrCreatePrompt="${1}"
  declare -n mseTmpThemePromptConfig="${2}"
  local msePromptExpectedValueType="${mseTmpThemePromptConfig[prompt_expected_value_type]}"
  local msePromptAllowedAssocValues="${mseTmpThemePromptConfig[prompt_allowed_assoc_values]}"
  if [ "${mseTmpThemeArrCreatePrompt[body_show]}" == "1" ] && ([ "${msePromptExpectedValueType}" == "bool" ] || [ "${msePromptExpectedValueType}" == "list" ]); then
    unset mseTmpPromptAssocValues
    unset mseTmpPromptBodyLines
    declare -n mseTmpPromptAssocValues="${msePromptAllowedAssocValues}"
    declare -a mseTmpPromptBodyLines=()
    IFS=$'\n'
    unset mseTmpPromptSortedKeys
    declare -a mseTmpPromptSortedKeys=($(sort <<< "${!mseTmpPromptAssocValues[*]}"))
    IFS=$' \t\n'
    local mseIndex
    local mseKey
    local mseTmpKeyLabels
    local mseTmpOptionLine
    local mseTmpLineLength
    local mseTmpMaxOptionLength=1
    for mseIndex in "${!mseTmpPromptSortedKeys[@]}"; do
      mseKey="${mseTmpPromptSortedKeys[${mseIndex}]}"
      mse_str_split "::" "${mseTmpPromptAssocValues[${mseKey}]}" "1"
      if [ "${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}" == "0" ]; then
        MSE_GLOBAL_MODULE_SPLIT_RESULT+=("${mseKey}")
      fi
      mseTmpKeyLabels=$(mse_str_join " / " "MSE_GLOBAL_MODULE_SPLIT_RESULT")
      mseTmpOptionLine="${mseKey} : [${mseTmpKeyLabels}]"
      mseTmpPromptBodyLines+=("${mseTmpOptionLine}")
      mseTmpLineLength=$(wc -m <<< $mseTmpOptionLine)
      if [ "${mseTmpLineLength}" -gt "${mseTmpMaxOptionLength}" ]; then
        mseTmpMaxOptionLength="${mseTmpLineLength}"
      fi
    done
    local mseMaxOptionsPerLine
    local mseTmpOptionPadLength=0
    local mseTmpOptionPadString=""
    ((mseMaxOptionsPerLine = 120 / mseTmpMaxOptionLength))
    unset mseTmpBigLine
    declare -a mseTmpBigLine=()
    declare -n mseTmpPromptBodyLinesArray="${mseTmpThemeArrCreatePrompt[body_lines]}"
    for mseTmpOptionLine in "${mseTmpPromptBodyLines[@]}"; do
      mseTmpLineLength=$(wc -m <<< $mseTmpOptionLine)
      ((mseTmpOptionPadLength = mseTmpMaxOptionLength - mseTmpLineLength))
      mseTmpOptionPadString=$(printf "%-${mseTmpOptionPadLength}s" "")
      mseTmpBigLine+=("${mseTmpOptionLine}${mseTmpOptionPadString}")
      local mseMod=$(expr ${#mseTmpBigLine[@]} % ${mseMaxOptionsPerLine}) || true
      if [ "${mseMod}" == "0" ]; then
        mseTmpPromptBodyLinesArray+=("$(mse_str_join "  |  " "mseTmpBigLine")")
        unset mseTmpBigLine
        declare -a mseTmpBigLine=()
      fi
    done
    if [ "${#mseTmpBigLine[@]}" -gt "0" ]; then
      mseTmpPromptBodyLinesArray+=("$(mse_str_join "  |  " "mseTmpBigLine")")
    fi
    mseTmpPromptBodyLinesArray+=("")
  else
    mseTmpThemeArrCreatePrompt[body_lines]=""
  fi
}
mse_inter_theme_default_prepareProgressBar() {
  mse_inter_theme_default_setColors
  declare -n mseTmpArrThemePrepareProgressBar="${1}"
  local msePrefix="${MSE_GLOBAL_MAIN_THEME_COLORS[${MSE_GLOBAL_THEME_NAME}]}"
  case "${mseTmpArrThemePrepareProgressBar[meta_format]}" in
    custom)
      mseTmpArrThemePrepareProgressBar["meta_format"]="custom"
    ;;
    default)
      mseTmpArrThemePrepareProgressBar["meta_indent"]="  "
      mseTmpArrThemePrepareProgressBar["bar_ini_string"]="[ "
      mseTmpArrThemePrepareProgressBar["bar_end_string"]=" ] "
      mseTmpArrThemePrepareProgressBar["bar_fill_char"]="#"
      mseTmpArrThemePrepareProgressBar["bar_atual_progress"]="0"
      mseTmpArrThemePrepareProgressBar["bar_atual_bar_length"]="0"
      mseTmpArrThemePrepareProgressBar["bar_color"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_bar]}"
      mseTmpArrThemePrepareProgressBar["bar_color_alt"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_bar_alt]}"
      mseTmpArrThemePrepareProgressBar["bar_colorize"]="1"
      mseTmpArrThemePrepareProgressBar["info_show"]="1"
      mseTmpArrThemePrepareProgressBar["info_ini_string"]="( "
      mseTmpArrThemePrepareProgressBar["info_end_string"]=" )"
      mseTmpArrThemePrepareProgressBar["info_use_percent"]="1"
      mseTmpArrThemePrepareProgressBar["info_color"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_info]}"
      mseTmpArrThemePrepareProgressBar["info_color_alt"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_info_alt]}"
      mseTmpArrThemePrepareProgressBar["info_colorize"]="1"
    ;;
    onlybar)
      mseTmpArrThemePrepareProgressBar["meta_indent"]="  "
      mseTmpArrThemePrepareProgressBar["bar_ini_string"]="[ "
      mseTmpArrThemePrepareProgressBar["bar_end_string"]=" ] "
      mseTmpArrThemePrepareProgressBar["bar_fill_char"]="#"
      mseTmpArrThemePrepareProgressBar["bar_atual_progress"]="0"
      mseTmpArrThemePrepareProgressBar["bar_atual_bar_length"]="0"
      mseTmpArrThemePrepareProgressBar["bar_color"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_bar]}"
      mseTmpArrThemePrepareProgressBar["bar_color_alt"]="${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_progressbar_bar_alt]}"
      mseTmpArrThemePrepareProgressBar["bar_colorize"]="1"
      mseTmpArrThemePrepareProgressBar["info_show"]="0"
    ;;
  esac
}
mse_inter_theme_default_progressBar_checkMetaFormat() {
  declare -a mseAllowedMetaFormat=("custom" "default" "onlybar")
  local mseReturn="${1}"
  if [[ ! "${mseAllowedMetaFormat[*]}" =~ "${mseReturn}" ]]; then
    mseReturn="default"
  fi
  printf "${mseReturn}"
}
mse_inter_theme_default_showProgressBar() {
  declare -n mseTmpThemeArrShowProgressBar="${1}"
  local mseProgressBarComponent=$(mse_inter_theme_default_showProgressBar_createBar "${1}")
  local mseInformationComponent=$(mse_inter_theme_default_showProgressBar_createInformation "${1}")
  mse_inter_clearLine
  if [ "${mseTmpThemeArrShowProgressBar[info_align]}" == "left" ]; then
    printf "%s" "${mseInformationComponent}"
  fi
  printf "%s" "${mseTmpThemeArrShowProgressBar[meta_indent]}"
  printf "%s" "${mseProgressBarComponent}"
  if [ "${mseTmpThemeArrShowProgressBar[info_align]}" == "right" ]; then
    printf "%s" "${mseInformationComponent}"
  fi
  if [ "${mseTmpThemeArrShowProgressBar[bar_atual_progress]}" == "100" ]; then
    printf "\n"
  else
    printf "\r"
  fi
}
mse_inter_theme_default_showProgressBar_createBar() {
  declare -n mseTmpThemeArrProgressBar="${1}"
  local mseBarIniString="${mseTmpThemeArrProgressBar[bar_ini_string]}"
  local mseBarEndString="${mseTmpThemeArrProgressBar[bar_end_string]}"
  local mseBarFillChar="${mseTmpThemeArrProgressBar[bar_fill_char]}"
  local mseBarMaxCharLength="${mseTmpThemeArrProgressBar[bar_max_char_length]}"
  local mseBarAtualProgress="${mseTmpThemeArrProgressBar[bar_atual_progress]}"
  local mseBarAtualBarLength="${mseTmpThemeArrProgressBar[bar_atual_bar_length]}"
  local mseBarColor="${mseTmpThemeArrProgressBar[bar_color]}"
  local mseBarColorAlt="${mseTmpThemeArrProgressBar[bar_color_alt]}"
  local mseBarColorize="${mseTmpThemeArrProgressBar[bar_colorize]}"
  local mseBarAtualBarLength=0
  ((mseBarAtualBarLength = (mseBarMaxCharLength * mseBarAtualProgress) / 100))
  mseTmpThemeArrProgressBar["bar_atual_bar_length"]="${mseBarAtualBarLength}"
  local mseUseColor=""
  if [ "${mseBarColorize}" == "1" ]; then
    mseUseColor="${mseBarColor}"
  fi
  printf "%s" "${mseBarIniString}";
  for ((i=0; i<mseBarMaxCharLength; i++)); do
    if [ "${i}" -le "${mseBarAtualBarLength}" ]; then
      mseStrBar+="${mseBarFillChar}"
    else
      mseStrBar+=" "
    fi
  done
  printf "${mseUseColor}"; printf "%s" "${mseStrBar}"; printf "${mseNONE}"
  printf "%s" "${mseBarEndString}";
}
mse_inter_theme_default_showProgressBar_createInformation() {
  declare -n mseTmpThemeArrProgressBarInformation="${1}"
  if [ "${mseTmpThemeArrProgressBarInformation[info_show]}" == "1" ]; then
    local mseInfoIniString="${mseTmpThemeArrProgressBarInformation[info_ini_string]}"
    local mseInfoEndString="${mseTmpThemeArrProgressBarInformation[info_end_string]}"
    local mseInfoUsePercent="${mseTmpThemeArrProgressBarInformation[info_use_percent]}"
    local mseInfoData="${mseTmpThemeArrProgressBarInformation[info_data]}"
    local mseInfoColor="${mseTmpThemeArrProgressBarInformation[info_color]}"
    local mseInfoColorAlt="${mseTmpThemeArrProgressBarInformation[info_color_alt]}"
    local mseInfoColorize="${mseTmpThemeArrProgressBarInformation[info_colorize]}"
    local mseUseColor=""
    local mseUseColorAlt=""
    if [ "${mseInfoColorize}" == "1" ]; then
      mseUseColor="${mseInfoColor}"
      mseUseColorAlt="${mseInfoColorAlt}"
    fi
    local mseStrPercent=""
    if [ "${mseInfoUsePercent}" == "1" ]; then
      local mseBarAtualProgress="${mseTmpThemeArrProgressBarInformation[bar_atual_progress]}"
      if [ "${mseBarAtualProgress}" -lt "10" ]; then
        mseStrPercent+="  "
      elif [ "${mseBarAtualProgress}" -lt "100" ]; then
        mseStrPercent+=" "
      fi
      mseStrPercent+="${mseBarAtualProgress}%"
    fi
    printf "%s" "${mseInfoIniString}"
    printf "${mseUseColor}"
    printf "%s" "${mseStrPercent}"
    printf "${mseNONE}"
    if [ "${mseInfoData}" != "" ]; then
      if [ "${mseStrPercent}" != "" ]; then
        printf " "
      fi
      printf "${mseUseColorAlt}"
      printf "%s" "${mseInfoData}"
      printf "${mseNONE}"
    fi
    printf "${mseInfoEndString}"
  fi
}
# END :: mse_inter_theme_default.sh


# INI :: mse_inter_clearLine.sh
mse_inter_clearLine() {
  local mseCmd="2"
  local mseCR=""
  if [ $# -ge 1 ]; then
    if [ "$1" == "l" ]; then
      mseCmd="1"
    elif [ "$1" == "r" ]; then
      mseCmd="0"
    fi
  fi
  if [ $# -ge 2 ]; then
    if [ "$2" == "1" ]; then
      mseCR="\r"
    fi
  fi
  printf "\e[${mseCmd}K${mseCR}"
}
# END :: mse_inter_clearLine.sh


# INI :: mse_inter_prepareMessage.sh
mse_inter_prepareMessage() {
  declare -n mseTmpArrPrepareMessage="${1}"
  local mseKey=""
  for mseKey in "${!mseTmpArrPrepareMessage[@]}"; do
    unset mseTmpArrPrepareMessage["${mseKey}"]
  done
  mseTmpArrPrepareMessage["meta_type"]="${2}"
  mseTmpArrPrepareMessage["meta_theme"]="${3}"
  mseTmpArrPrepareMessage["meta_format"]="${4}"
  mseTmpArrPrepareMessage["top_separator_string"]="${5}"
  mseTmpArrPrepareMessage["top_separator_color"]="${6}"
  mseTmpArrPrepareMessage["top_separator_color_alt"]="${7}"
  mseTmpArrPrepareMessage["top_separator_colorize"]="${8}"
  mseTmpArrPrepareMessage["title_show"]="${9}"
  mseTmpArrPrepareMessage["title_type"]="${10}"
  mseTmpArrPrepareMessage["title_top_separator_string"]="${11}"
  mseTmpArrPrepareMessage["title_top_separator_color"]="${12}"
  mseTmpArrPrepareMessage["title_top_separator_color_alt"]="${13}"
  mseTmpArrPrepareMessage["title_top_separator_colorize"]="${14}"
  mseTmpArrPrepareMessage["title_indent"]="${15}"
  mseTmpArrPrepareMessage["title_bullet"]="${16}"
  mseTmpArrPrepareMessage["title_bullet_color"]="${17}"
  mseTmpArrPrepareMessage["title_bullet_color_alt"]="${18}"
  mseTmpArrPrepareMessage["title_bullet_colorize"]="${19}"
  mseTmpArrPrepareMessage["title_string"]="${20}"
  mseTmpArrPrepareMessage["title_string_color"]="${21}"
  mseTmpArrPrepareMessage["title_string_color_alt"]="${22}"
  mseTmpArrPrepareMessage["title_string_colorize"]="${23}"
  mseTmpArrPrepareMessage["title_string_end"]="${24}"
  mseTmpArrPrepareMessage["title_bottom_separator_string"]="${25}"
  mseTmpArrPrepareMessage["title_bottom_separator_color"]="${26}"
  mseTmpArrPrepareMessage["title_bottom_separator_color_alt"]="${27}"
  mseTmpArrPrepareMessage["title_bottom_separator_colorize"]="${28}"
  mseTmpArrPrepareMessage["body_show"]="${29}"
  mseTmpArrPrepareMessage["body_top_separator_string"]="${30}"
  mseTmpArrPrepareMessage["body_top_separator_color"]="${31}"
  mseTmpArrPrepareMessage["body_top_separator_color_alt"]="${32}"
  mseTmpArrPrepareMessage["body_top_separator_colorize"]="${33}"
  mseTmpArrPrepareMessage["body_first_line_indent"]="${34}"
  mseTmpArrPrepareMessage["body_first_line_bullet"]="${35}"
  mseTmpArrPrepareMessage["body_first_line_bullet_color"]="${36}"
  mseTmpArrPrepareMessage["body_first_line_bullet_color_alt"]="${37}"
  mseTmpArrPrepareMessage["body_first_line_bullet_colorize"]="${38}"
  mseTmpArrPrepareMessage["body_lines_indent"]="${39}"
  mseTmpArrPrepareMessage["body_lines_bullet"]="${40}"
  mseTmpArrPrepareMessage["body_lines_bullet_color"]="${41}"
  mseTmpArrPrepareMessage["body_lines_bullet_color_alt"]="${42}"
  mseTmpArrPrepareMessage["body_lines_bullet_colorize"]="${43}"
  mseTmpArrPrepareMessage["body_lines"]="${44}"
  mseTmpArrPrepareMessage["body_lines_color"]="${45}"
  mseTmpArrPrepareMessage["body_lines_color_alt"]="${46}"
  mseTmpArrPrepareMessage["body_lines_colorize"]="${47}"
  mseTmpArrPrepareMessage["body_bottom_separator_string"]="${48}"
  mseTmpArrPrepareMessage["body_bottom_separator_color"]="${49}"
  mseTmpArrPrepareMessage["body_bottom_separator_color_alt"]="${50}"
  mseTmpArrPrepareMessage["body_bottom_separator_colorize"]="${51}"
  mseTmpArrPrepareMessage["bottom_separator_string"]="${52}"
  mseTmpArrPrepareMessage["bottom_separator_color"]="${53}"
  mseTmpArrPrepareMessage["bottom_separator_color_alt"]="${54}"
  mseTmpArrPrepareMessage["bottom_separator_colorize"]="${55}"
  if [ "${mseTmpArrPrepareMessage[meta_type]}" == "" ]; then
    mseTmpArrPrepareMessage["meta_type"]="n"
  fi
  local mseKey
  local mseValue
  for mseKey in "${!mseTmpArrPrepareMessage[@]}"; do
    mseValue="${mseTmpArrPrepareMessage[$mseKey]}"
    case "${mseKey}" in
      meta_type)
        local mseTmp="none"
        case "${mseValue}" in
          info | i)
            mseTmp="info"
          ;;
          attention | a)
            mseTmp="attention"
          ;;
          warning | w)
            mseTmp="warning"
          ;;
          error | e)
            mseTmp="error"
          ;;
          fail | f)
            mseTmp="fail"
          ;;
          success | s)
            mseTmp="success"
          ;;
          friendly | fr)
            mseTmp="friendly"
          ;;
          ordinary | or)
            mseTmp="ordinary"
          ;;
          caution | ca)
            mseTmp="caution"
          ;;
          important | im)
            mseTmp="important"
          ;;
        esac
        mseTmpArrPrepareMessage["meta_type"]="${mseTmp}"
      ;;
      meta_theme)
        if [ "${mseValue}" != "" ] && [ "$(type -t "${mseValue}_prepareShowMessage")" != "function" ]; then
          mseTmpArrPrepareMessage["meta_theme"]=""
        fi
      ;;
      meta_format)
        if [ "${mseValue}" != "" ]; then
          mseTmpArrPrepareMessage["meta_format"]="${mseValue,,}"
        fi
      ;;
      top_separator_colorize | title_show | title_top_separator_colorize | title_bullet_colorize | title_string_colorize | title_bottom_separator_colorize | body_show | body_top_separator_colorize | body_first_line_bullet_colorize | body_lines_bullet_colorize | body_lines_colorize | body_bottom_separator_colorize | bottom_separator_colorize)
        if [ "$mseValue" == "" ] || ([ "$mseValue" != "0" ] && [ "$mseValue" != "1" ]); then
          mseValue="0"
        fi
        mseTmpArrPrepareMessage[$mseKey]="${mseValue}"
      ;;
    esac
  done
  if [ "${mseTmpArrPrepareMessage[meta_theme]}" != "" ]; then
    local mseThemePrepareMessage="${mseTmpArrPrepareMessage[meta_theme]}_prepareShowMessage"
    $mseThemePrepareMessage "${1}"
  fi
}
# END :: mse_inter_prepareMessage.sh


# INI :: mse_inter_prepareProgressBar.sh
mse_inter_prepareProgressBar() {
  declare -n mseTmpArrPrepareProgressBar="${1}"
  local mseKey=""
  for mseKey in "${!mseTmpArrPrepareProgressBar[@]}"; do
    unset mseTmpArrPrepareProgressBar["${mseKey}"]
  done
  mseTmpArrPrepareProgressBar["meta_theme"]="${2}"
  mseTmpArrPrepareProgressBar["meta_format"]="${3}"
  mseTmpArrPrepareProgressBar["meta_indent"]="${4}"
  mseTmpArrPrepareProgressBar["bar_ini_string"]="${5}"
  mseTmpArrPrepareProgressBar["bar_end_string"]="${6}"
  mseTmpArrPrepareProgressBar["bar_fill_char"]="${7}"
  mseTmpArrPrepareProgressBar["bar_max_char_length"]="${8}"
  mseTmpArrPrepareProgressBar["bar_atual_progress"]="${9}"
  mseTmpArrPrepareProgressBar["bar_atual_bar_length"]="0"
  mseTmpArrPrepareProgressBar["bar_color"]="${10}"
  mseTmpArrPrepareProgressBar["bar_color_alt"]="${11}"
  mseTmpArrPrepareProgressBar["bar_colorize"]="${12}"
  mseTmpArrPrepareProgressBar["info_show"]="${13}"
  mseTmpArrPrepareProgressBar["info_align"]="${14}"
  mseTmpArrPrepareProgressBar["info_ini_string"]="${15}"
  mseTmpArrPrepareProgressBar["info_end_string"]="${16}"
  mseTmpArrPrepareProgressBar["info_use_percent"]="${17}"
  mseTmpArrPrepareProgressBar["info_data"]="${18}"
  mseTmpArrPrepareProgressBar["info_color"]="${19}"
  mseTmpArrPrepareProgressBar["info_color_alt"]="${20}"
  mseTmpArrPrepareProgressBar["info_colorize"]="${21}"
  local mseKey
  local mseValue
  for mseKey in "${!mseTmpArrPrepareProgressBar[@]}"; do
    mseValue="${mseTmpArrPrepareProgressBar[$mseKey]}"
    case "${mseKey}" in
      meta_theme)
        if [ "${mseValue}" != "" ] && [ "$(type -t "${mseValue}_prepareProgressBar")" != "function" ]; then
          mseTmpArrPrepareProgressBar["meta_theme"]=""
        fi
      ;;
      meta_format)
        if [ "${mseValue}" != "" ]; then
          mseTmpArrPrepareProgressBar["meta_format"]="${mseValue,,}"
        fi
      ;;
      bar_colorize | info_show | info_use_percent | info_colorize)
        if [ "$mseValue" == "" ] || ([ "$mseValue" != "0" ] && [ "$mseValue" != "1" ]); then
          mseValue="0"
        fi
        mseTmpArrPrepareProgressBar[$mseKey]="${mseValue}"
      ;;
      bar_fill_char)
        if [ "${mseValue}" == "" ]; then
          mseTmpArrPrepareProgressBar["bar_fill_char"]="#"
        fi
      ;;
      bar_max_char_length)
        if [ "${mseValue}" == "" ]; then
          mseValue="50"
        else
          local mseCheck=$(mse_check_isInteger "$mseValue")
          if [ "${mseCheck}" == "0" ]; then
            mseValue="50"
          elif [ "${mseValue}" -lt "20" ]; then
            mseValue="20"
          elif [ "${mseValue}" -gt "${COLUMNS}" ]; then
            mseValue="${COLUMNS}"
          fi
        fi
        mseTmpArrPrepareProgressBar["bar_max_char_length"]="${mseValue}"
      ;;
      info_align)
        if [ "${mseValue}" != "l" ] && [ "${mseValue}" != "left" ] && [ "${mseValue}" != "r" ] && [ "${mseValue}" != "right" ]; then
          mseValue="right"
        else
          if [ "${mseValue}" == "l" ]; then
            mseValue="left"
          elif [ "${mseValue}" == "r" ]; then
            mseValue="right"
          fi
        fi
        mseTmpArrPrepareProgressBar["info_align"]="${mseValue}"
      ;;
    esac
  done
  if [ "${mseTmpArrPrepareProgressBar[meta_theme]}" != "" ]; then
    local mseThemePrepareProgressBar="${mseTmpArrPrepareProgressBar[meta_theme]}_prepareProgressBar"
    $mseThemePrepareProgressBar "${1}"
  fi
}
# END :: mse_inter_prepareProgressBar.sh


# INI :: mse_inter_setCursorPosition.sh
mse_inter_setCursorPosition() {
  if [ $# -ge 2 ]; then
    local mseStrPos
    local mseIntPos
    local mseResetToPosition
    local mseTerminalTotalLines="${LINES}"
    local mseTerminalTotalColumns="${COLUMNS}"
    case "$1" in
      top | bottom | left | right)
        mseStrPos="$1"
        local mseCheck=$(mse_check_isInteger "$2")
        if [ "${mseCheck}" == "1" ] && [ "$2" -ge "0" ]; then
          mseIntPos="$2"
        fi
        mseResetToPosition=""
        if [ $# -ge 3 ] && ([ "$3" == "l" ] || [ "$3" == "r" ]); then
          mseResetToPosition="$3"
        fi
      ;;
    esac
    if [ "${mseStrPos}" != "" ] && [ "${mseIntPos}" != "" ]; then
      if [ "${mseResetToPosition}" == "l" ]; then
        printf "\r"
      elif [ "${mseResetToPosition}" == "r" ]; then
        printf "\r\e[${mseTerminalTotalColumns}C"
      fi
      if [ "${mseIntPos}" -ge 1 ]; then
        case "${mseStrPos}" in
          top)
            printf "\e[${mseIntPos}A"
          ;;
          bottom)
            printf "\e[${mseIntPos}B"
          ;;
          left)
            printf "\e[${mseIntPos}C"
          ;;
          right)
            printf "\e[${mseIntPos}D"
          ;;
        esac
      fi
    fi
  fi
}
# END :: mse_inter_setCursorPosition.sh


# INI :: mse_inter_showAlert.sh
mse_inter_showAlert() {
  mse_inter_showMessage "MSE_GLOBAL_SHOW_MESSAGE_CONFIG" "${1}" "default" "${2}" "${3}"
}
# END :: mse_inter_showAlert.sh


# INI :: mse_inter_showError.sh
mse_inter_showError() {
  mse_inter_showMessage "MSE_GLOBAL_SHOW_MESSAGE_CONFIG" "error" "default" "${1}" "${2}"
}
# END :: mse_inter_showError.sh


# INI :: mse_inter_showMessage.sh
mse_inter_showMessage() {
  local mseUseMetaAssoc="${1}"
  local mseRedefineTheme="0"
  local mseThemeCheckMetaFormat=""
  local mseThemeShowMessage=""
  local mseUseMetaType=""
  local mseUseMetaTheme=""
  local mseUseMetaFormat=""
  if [ "${mseUseMetaAssoc}" == "" ] || [[ ! "$(declare -p ${mseUseMetaAssoc} 2> /dev/null)" =~ "declare -A" ]]; then
    mseUseMetaAssoc="MSE_GLOBAL_SHOW_MESSAGE_CONFIG"
  fi
  declare -n mseTmpInterArrShowMessage="${mseUseMetaAssoc}"
  local mseIsMetaType=$(mse_check_hasKeyInAssocArray "meta_type" "${mseUseMetaAssoc}")
  if [ "${mseIsMetaType}" == "0" ]; then
    mseUseMetaType="none"
    mseRedefineTheme="1"
  else
    mseUseMetaType="${mseTmpInterArrShowMessage[meta_type]}"
  fi
  if [ $# -ge 2 ] && [ "${2}" != "" ] && [ "${2}" != "${mseUseMetaType}" ]; then
    mseUseMetaType="${2}"
    mseRedefineTheme="1"
  fi
  declare -a mseAllowedMetaTypes=("none" "info" "i" "attention" "a" "warning" "w" "error" "e" "fail" "f" "success" "s" "friendly" "fr" "ordinary" "or" "caution" "ca" "important" "im")
  if [[ ! "${mseAllowedMetaTypes[*]}" =~ "${mseUseMetaType}" ]]; then
    mseUseMetaType="none"
  fi
  local mseIsMetaTheme=$(mse_check_hasKeyInAssocArray "meta_theme" "${mseUseMetaAssoc}")
  if [ "${mseIsMetaTheme}" == "0" ]; then
    mseUseMetaTheme="${MSE_GLOBAL_THEME_NAME}"
    mseRedefineTheme="1"
  else
    mseUseMetaTheme="${mseTmpInterArrShowMessage[meta_theme]}"
    if [ "${mseUseMetaTheme}" != "${MSE_GLOBAL_THEME_NAME}" ] && ([ "$(type -t "${mseUseMetaTheme}_prepareShowMessage")" != "function" ] || [ "$(type -t "${mseUseMetaTheme}_showMessage_checkMetaFormat")" != "function" ] || [ "$(type -t "${mseUseMetaTheme}_showMessage")" != "function" ]); then
      mseUseMetaTheme="${MSE_GLOBAL_THEME_NAME}"
      mseRedefineTheme="1"
    fi
  fi
  mseThemeCheckMetaFormat="${mseUseMetaTheme}_showMessage_checkMetaFormat"
  mseThemeShowMessage="${mseUseMetaTheme}_showMessage"
  local mseIsMetaFormat=$(mse_check_hasKeyInAssocArray "meta_format" "${mseUseMetaAssoc}")
  if [ "${mseIsMetaFormat}" == "0" ]; then
    mseUseMetaFormat=$($mseThemeCheckMetaFormat "-")
    mseRedefineTheme="1"
  else
    mseUseMetaFormat="${mseTmpInterArrShowMessage[meta_format]}"
  fi
  if [ $# -ge 3 ] && [ "${3}" != "" ] && [ "${3}" != "${mseUseMetaFormat}" ]; then
    mseUseMetaFormat=$($mseThemeCheckMetaFormat "${3}")
    mseRedefineTheme="1"
  fi
  if [ "${mseRedefineTheme}" == "1" ]; then
    mse_inter_prepareMessage "${mseUseMetaAssoc}" "${mseUseMetaType}" "${mseUseMetaTheme}" "${mseUseMetaFormat}"
  fi
  mseTmpInterArrShowMessage["title_string"]="${4}"
  mseTmpInterArrShowMessage["body_lines"]="${5}"
  ${mseThemeShowMessage} ${mseUseMetaAssoc} "${6}"
}
# END :: mse_inter_showMessage.sh


# INI :: mse_inter_showProgressBar.sh
mse_inter_showProgressBar() {
  if [ $# -ge 4 ]; then
    local mseCheck=""
    local mseUseMetaAssoc="${1}"
    local mseUseMetaFormat="${2}"
    local mseUseMaxCharLength="${3}"
    local mseUseAtualProgress="${4}"
    local mseUseInfoAlign="${5}"
    local mseUseInfoData="${6}"
    local mseRedefineTheme="0"
    local mseThemeCheckMetaFormat=""
    local mseThemeShowProgressBar=""
    local mseUseMetaTheme=""
    local mseUseMetaFormat=""
    if [ "${mseUseMetaAssoc}" == "" ] || [[ ! "$(declare -p ${mseUseMetaAssoc} 2> /dev/null)" =~ "declare -A" ]]; then
      mseUseMetaAssoc="MSE_GLOBAL_SHOW_PROGRESSBAR_CONFIG"
    fi
    declare -n mseTmpInterArrShowProgressBar="${mseUseMetaAssoc}"
    local mseIsMetaTheme=$(mse_check_hasKeyInAssocArray "meta_theme" "${mseUseMetaAssoc}")
    if [ "${mseIsMetaTheme}" == "0" ]; then
      mseUseMetaTheme="${MSE_GLOBAL_THEME_NAME}"
      mseRedefineTheme="1"
    else
      mseUseMetaTheme="${mseTmpInterArrShowProgressBar[meta_theme]}"
      if [ "${mseUseMetaTheme}" != "${MSE_GLOBAL_THEME_NAME}" ] && ([ "$(type -t "${mseUseMetaTheme}_prepareProgressBar")" != "function" ] || [ "$(type -t "${mseUseMetaTheme}_progressBar_checkMetaFormat")" != "function" ] || [ "$(type -t "${mseUseMetaTheme}_showProgressBar")" != "function" ]); then
        mseUseMetaTheme="${MSE_GLOBAL_THEME_NAME}"
        mseRedefineTheme="1"
      fi
    fi
    mseThemeCheckMetaFormat="${mseUseMetaTheme}_progressBar_checkMetaFormat"
    mseThemeShowProgressBar="${mseUseMetaTheme}_showProgressBar"
    local mseIsMetaFormat=$(mse_check_hasKeyInAssocArray "meta_format" "${mseUseMetaAssoc}")
    if [ "${mseIsMetaFormat}" == "0" ]; then
      mseUseMetaFormat=$($mseThemeCheckMetaFormat "-")
      mseRedefineTheme="1"
    else
      mseUseMetaFormat="${mseTmpInterArrShowProgressBar[meta_format]}"
    fi
    if [ "${2}" != "" ] && [ "${2}" != "${mseUseMetaFormat}" ]; then
      mseUseMetaFormat=$($mseThemeCheckMetaFormat "${2}")
      mseRedefineTheme="1"
    fi
    if [ "${mseRedefineTheme}" == "1" ]; then
      mse_inter_prepareProgressBar "${mseUseMetaAssoc}" "${mseUseMetaTheme}" "${mseUseMetaFormat}"
    fi
    mseCheck=$(mse_check_isInteger "$mseUseMaxCharLength")
    if [ "${mseCheck}" == "0" ]; then
      mseUseMaxCharLength="50"
    elif [ "${mseUseMaxCharLength}" -lt "20" ]; then
      mseUseMaxCharLength="20"
    elif [ "${mseUseMaxCharLength}" -gt "${COLUMNS}" ]; then
      mseUseMaxCharLength="${COLUMNS}"
    fi
    mseTmpInterArrShowProgressBar[bar_max_char_length]="${mseUseMaxCharLength}"
    mseCheck=$(mse_check_isInteger "$mseUseAtualProgress")
    if [ "${mseCheck}" == "0" ] || [ "${mseUseAtualProgress}" -lt "0" ]; then
      mseUseAtualProgress="0"
    elif [ "${mseUseAtualProgress}" -gt "100" ]; then
      mseUseAtualProgress="100"
    fi
    mseTmpInterArrShowProgressBar[bar_atual_progress]="${mseUseAtualProgress}"
    mseTmpInterArrShowProgressBar[info_align]="right"
    mseTmpInterArrShowProgressBar[info_data]=""
    if [ "${mseTmpInterArrShowProgressBar[info_show]}" == "1" ]; then
      if [ "${mseUseInfoAlign}" != "l" ] && [ "${mseUseInfoAlign}" != "left" ] && [ "${mseUseInfoAlign}" != "r" ] && [ "${mseUseInfoAlign}" != "right" ]; then
        mseUseInfoAlign="right"
      else
        if [ "${mseUseInfoAlign}" == "l" ]; then
          mseUseInfoAlign="left"
        elif [ "${mseUseInfoAlign}" == "r" ]; then
          mseUseInfoAlign="right"
        fi
      fi
      mseTmpInterArrShowProgressBar[info_align]="${mseUseInfoAlign}"
      mseTmpInterArrShowProgressBar[info_data]="${mseUseInfoData}"
    fi
    ${mseThemeShowProgressBar} ${mseUseMetaAssoc}
  fi
}
# END :: mse_inter_showProgressBar.sh


# INI :: mse_inter_showPrompt.sh
mse_inter_showPrompt() {
  MSE_GLOBAL_PROMPT_RESULT=""
  local mseUsePromptMetaAssoc="${1}"
  local mseUsePromptMetaType="${2}"
  local mseUsePromptTitleString="${3}"
  local mseUsePromptValueType="${4}"
  local mseUsePromptAssocValues="${5}"
  local mseUsePromptCaseInsensitive="${6}"
  if [ "${mseUsePromptMetaAssoc}" == "" ] || [[ ! "$(declare -p ${mseUsePromptMetaAssoc} 2> /dev/null)" =~ "declare -A" ]]; then
    mseUsePromptMetaAssoc="MSE_GLOBAL_SHOW_PROMPT_CONFIG"
  fi
  unset mseAllowedPromptMetaTypes
  declare -a mseAllowedPromptMetaTypes=("none" "friendly" "fr" "ordinary" "or" "caution" "ca" "important" "im")
  if [[ ! "${mseAllowedPromptMetaTypes[*]}" =~ "${mseUsePromptMetaType}" ]]; then
    mseUsePromptMetaType="ordinary"
  fi
  if [ "${mseUsePromptTitleString}" == "" ]; then
    mseUsePromptTitleString="?"
  fi
  case "${mseUsePromptValueType}" in
    bool)
      mseUsePromptAssocValues="lbl_inter_showPrompt_BoolValues"
    ;;
    list)
      if [[ ! "$(declare -p ${mseUsePromptAssocValues} 2> /dev/null)" =~ "declare -A" ]]; then
        mseUsePromptValueType="value"
        mseUsePromptAssocValues=""
      fi
    ;;
    *)
      mseUsePromptValueType="value"
      mseUsePromptAssocValues=""
    ;;
  esac
  if [ "${mseUsePromptCaseInsensitive}" == "" ] || ([ "${mseUsePromptCaseInsensitive}" != "0" ] && [ "${mseUsePromptCaseInsensitive}" != "1" ]); then
    mseUsePromptCaseInsensitive="0"
  fi
  local msePromptKey
  local msePromptLabel
  declare -A mseTmpAllowedUserAssocEntries
  if [ "${mseUsePromptAssocValues}" != "" ]; then
    declare -n mseTmpAllowedAssocEntries="${mseUsePromptAssocValues}"
    for msePromptKey in "${!mseTmpAllowedAssocEntries[@]}"; do
      if [ "${mseUsePromptCaseInsensitive}" == "0" ]; then
        mseTmpAllowedUserAssocEntries["${msePromptKey}"]="${msePromptKey}"
      else
        mseTmpAllowedUserAssocEntries["${msePromptKey^^}"]="${msePromptKey}"
      fi
      mse_str_split "::" "${mseTmpAllowedAssocEntries[${msePromptKey}]}" "1"
      if [ "${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}" -gt "0" ]; then
        for msePromptLabel in "${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"; do
          if [ "${mseUsePromptCaseInsensitive}" == "0" ]; then
            mseTmpAllowedUserAssocEntries["${msePromptLabel}"]="${msePromptKey}"
          else
            mseTmpAllowedUserAssocEntries["${msePromptLabel^^}"]="${msePromptKey}"
          fi
        done
      fi
    done
  fi
  unset mseExtraConfigAssocArrayName
  declare -A mseExtraConfigAssocArrayName
  mseExtraConfigAssocArrayName["prompt_expected_value_type"]="${mseUsePromptValueType}"
  mseExtraConfigAssocArrayName["prompt_allowed_assoc_values"]="${mseUsePromptAssocValues}"
  unset mseUsePromptBodyLines
  declare -a mseUsePromptBodyLines=()
  local msePromptUserMessage
  local msePromptUserValue
  local msePromptUserValueCompare
  msePromptUserMessage=$(mse_inter_showMessage "${mseUsePromptMetaAssoc}" "${mseUsePromptMetaType}" "prompt" "${mseUsePromptTitleString}" "mseUsePromptBodyLines" "mseExtraConfigAssocArrayName")
  while [ "${MSE_GLOBAL_PROMPT_RESULT}" == "" ]; do
    if [ "${msePromptUserValue}" != "" ]; then
      local mseErrMsg=$(mse_str_replacePlaceHolder "${lbl_inter_prompt_invalidValue}" "VALUE" "${msePromptUserValue}")
      mse_inter_showError "ERR::${mseErrMsg}"
    fi
    read -r -p "${msePromptUserMessage}" msePromptUserValue
    msePromptUserValueCompare="${msePromptUserValue}"
    if [ "${mseUsePromptCaseInsensitive}" == "1" ]; then
      msePromptUserValueCompare="${msePromptUserValue^^}"
    fi
    if [ "${mseUsePromptValueType}" == "bool" ] || [ "${mseUsePromptValueType}" == "list" ]; then
      for msePromptKey in "${!mseTmpAllowedUserAssocEntries[@]}"; do
        if [ "${msePromptUserValueCompare}" == "${msePromptKey}" ]; then
          MSE_GLOBAL_PROMPT_RESULT="${mseTmpAllowedUserAssocEntries[${msePromptKey}]}"
        fi
      done
    else
      MSE_GLOBAL_PROMPT_RESULT="${msePromptUserValue}"
    fi
  done
}
# END :: mse_inter_showPrompt.sh


# INI :: mse_inter_showStatus.sh
mse_inter_showStatus() {
  mse_inter_showMessage "MSE_GLOBAL_SHOW_MESSAGE_CONFIG" "${1}" "status" "${2}" ""
}
# END :: mse_inter_showStatus.sh


# INI :: mse_inter_showWaitUser.sh
mse_inter_showWaitUser() {
  local mseWaitingTitle="${2}"
  if [ "${mseWaitingTitle}" == "" ]; then
    mseWaitingTitle="${lbl_inter_wait_user_any_key}"
  fi
  local mseWaitingMessage
  mseWaitingMessage=$(mse_inter_showMessage "MSE_GLOBAL_SHOW_MESSAGE_CONFIG" "${1}" "title" "${mseWaitingTitle}")
  read -n 1 -s -r -p "${mseWaitingMessage}  "
  printf "\n"
}
# END :: mse_inter_showWaitUser.sh


# INI :: mse_inter_startSpinner.sh
mse_inter_startSpinner() {
  declare -n mseSpinnerSteps="MSE_GLOBAL_SPINNER_DEFAULT"
  if [ $# -ge 1 ]; then
    if [[ "$(declare -p ${1} 2> /dev/null)" =~ "declare -a" ]]; then
      declare -n mseSpinnerSteps="${1}"
    fi
  fi
  set +m
  {
    local mseStep=""
    local mseFirst=1
    while : ; do
      if [ "${mseFirst}" == "1" ]; then
        mseFirst=0
        sleep 0.5
      fi
      for mseStep in "${mseSpinnerSteps[@]}"; do
        printf "\r${mseStep}"
        sleep 0.2
      done
    done &
  } 2> /dev/null
  MSE_GLOBAL_SPINNER_PID=$!
}
# END :: mse_inter_startSpinner.sh


# INI :: mse_inter_stopSpinner.sh
mse_inter_stopSpinner() {
  {
    kill -9 "${MSE_GLOBAL_SPINNER_PID}" && wait;
  } 2> /dev/null
  set -m
  MSE_GLOBAL_SPINNER_PID=""
  mse_inter_clearLine "" "1"
}
# END :: mse_inter_stopSpinner.sh


# INI :: mse_inter_updateProgressBar.sh
mse_inter_updateProgressBar() {
  if [ $# -ge 2 ]; then
    declare -n mseTmpInterArrUpdateProgressBar="${1}"
    local mseUpdateMetaFormat="${mseTmpInterArrUpdateProgressBar[meta_format]}"
    local mseUpdateMaxCharLength="${mseTmpInterArrUpdateProgressBar[bar_max_char_length]}"
    local mseUpdateInfoAlign="${mseTmpInterArrUpdateProgressBar[info_align]}"
    local mseUpdateInfoData="${mseTmpInterArrUpdateProgressBar[info_data]}"
    if [ $# -ge 3 ]; then
      mseUpdateInfoData="${3}"
    fi
    mse_inter_showProgressBar "${1}" "${mseUpdateMetaFormat}" "${mseUpdateMaxCharLength}" "${2}" "${mseUpdateInfoAlign}" "${mseUpdateInfoData}"
  fi
}
# END :: mse_inter_updateProgressBar.sh


# INI :: mse_mmod_help_howToStart.sh
mse_mmod_help_howToStart() {
  mse_mmod_help_man mse_mmod_help_howToStart
}
MSE_GLOBAL_CMD["help howToStart"]="mse_mmod_help_howToStart"
# END :: mse_mmod_help_howToStart.sh


# INI :: mse_mmod_help_man.sh
mse_mmod_help_man() {
  local mseMSG
  local mseMetaData
  local msePathToFile
  if [ "$1" == "" ]; then
    mse_inter_showAlert "i" "${lbl_man_enterAFunction}"
  elif [ "$(type -t $1)" != "function" ]; then
    mseMSG=$(mse_str_replacePlaceHolder "${lbl_man_functionDoesNotExists}" "FUNCTION" "$1")
    mse_inter_showAlert "i" "${mseMSG}"
    mse_inter_setCursorPosition top 2
    mse_inter_showAlert "i" "${lbl_man_searchForAValidFunction}"
  else
    mseMetaData=$(mse_mmod_mng_showRawMetaData 0 0 1 "" "" "$1" "1")
    if [ "${mseMetaData}" == "" ]; then
      mseMSG=$(mse_str_replacePlaceHolder "${lbl_man_couldNotFindHelpForFunction}" "FUNCTION" "$1")
      mse_inter_showError "ERR::${mseMSG}"
    else
      mse_str_split "::" "${mseMetaData}"
      if [ ! -f "${MSE_GLOBAL_MODULE_SPLIT_RESULT[4]}" ]; then
        mseMSG=$(mse_str_replacePlaceHolder "${lbl_man_fileOfFunctionNotFound}" "PATH" "${MSE_GLOBAL_MODULE_SPLIT_RESULT[4]}")
        mse_inter_showError "ERR::${mseMSG}"
      else
        msePathToFile="${MSE_GLOBAL_MODULE_SPLIT_RESULT[4]}"
        local msePathToDir=$(dirname "${msePathToFile}")
        local mseLocaleMan="${msePathToDir}/assets/locale/${MSE_GLOBAL_MODULE_LOCALE}/man/${1}.sh"
        if [ -f "${mseLocaleMan}" ]; then
          msePathToFile="${mseLocaleMan}"
        fi
      fi
    fi
  fi
  if [ "${msePathToFile}" != "" ]; then
    local mseRawLine
    local mseInDescription=0
    declare -a mseDescriptionLines=()
    local mseTmpLine
    local i
    local mseLength
    local mseLinePart
    local mseNewMarkup
    "${MSE_GLOBAL_THEME_NAME}_setColors"
    local msePrefix="${MSE_GLOBAL_MAIN_THEME_COLORS[${MSE_GLOBAL_THEME_NAME}]}"
    local mseColorAt=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_at]}
    local mseColorTagName=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_tagName]}
    local mseColorTagCommom=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_tagCommom]}
    local mseColorParam=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_param]}
    while read mseRawLine || [ -n "${mseRawLine}" ]; do
      if [ "$mseRawLine" == "# @desc" ]; then
        if [ "${mseInDescription}" == "1" ]; then
          mseInDescription=0
          break
        else
          mseInDescription=1
          mseDescriptionLines+=("")
        fi
      fi
      if [ $mseInDescription == 1 ]; then
        if [ "${mseRawLine:0:1}" != "#" ]; then
          mseInDescription=0
          break
        else
          mseRawLine=$(mse_str_trim "${mseRawLine}")
          if [ "${mseRawLine}" == "#" ]; then
            mseDescriptionLines+=("")
          else
            mseTmpLine="${mseRawLine#"# "}"
            if [ "${mseTmpLine:0:1}" == "@" ]; then
              mse_str_split " " "${mseTmpLine}"
              mseNewMarkup=""
              mseLength="${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"
              for ((i=0; i<mseLength; i++)); do
                mseLinePart="${MSE_GLOBAL_MODULE_SPLIT_RESULT[$i]}"
                if [ "${mseLinePart:0:1}" == "@" ]; then
                  mseNewMarkup+="${mseColorAt}@${mseNONE}"
                  mseNewMarkup+="${mseColorTagName}${mseLinePart:1}${mseNONE} "
                elif [ "${mseLinePart:0:1}" == '$' ]; then
                  mseNewMarkup+="${mseColorParam}${mseLinePart}${mseNONE} "
                else
                  mseNewMarkup+="${mseColorTagCommom}${mseLinePart}${mseNONE} "
                fi
              done
              mseTmpLine=$(printf "${mseNewMarkup}")
            fi
            mseDescriptionLines+=("${mseTmpLine}")
          fi
        fi
      fi
    done < "$msePathToFile"
    if [ "${#mseDescriptionLines[@]}" == "0" ]; then
      mse_inter_showError "ERR::${lbl_man_noUsageDescriptionFoundForFunction}"
    else
      mseDescriptionLines+=("")
      local mseCod="MAN"
      local mseTtl="$1"
      if [ "$1" == "mse_mmod_help_howToStart" ]; then
        mseCod="MSE"
        mseTtl="myShellEnv"
      fi
      local mseReturn=$(mse_inter_showAlert "a" "${mseCod}::${mseTtl}" "mseDescriptionLines")
      if [ "$#" -ge 2 ] && [ "$2" == "0" ]; then
        printf "${mseReturn}\n"
      else
        printf "${mseReturn}" | less -r
      fi
    fi
  fi
}
MSE_GLOBAL_CMD["help man"]="mse_mmod_help_man"
mse_mmod_help_man_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=2
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="FunctionName :: r :: string"
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_1"]="Print :: o :: bool"
}
# END :: mse_mmod_help_man.sh


# INI :: mse_mmod_help_searchFunction.sh
mse_mmod_help_searchFunction() {
  if [ "$#" == "0" ] || [ "$1" == "" ]; then
    mse_inter_showAlert "i" "${lbl_searchFunction_enterAFunction}"
  else
    mse_mmod_mng_showMetaData 1 1 "" "" "$1"
  fi
}
MSE_GLOBAL_CMD["help searchFunction"]="mse_mmod_help_searchFunction"
# END :: mse_mmod_help_searchFunction.sh


# INI :: mse_mmod_ini_cmd.sh
mse_mmod_ini_cmd() {
  if [ "$#" -ge 1 ] && [ "$1" != "" ]; then
    local mseTgtFunction=$(mse_mmod_ini_cmd_search "$@")
    local mseOffSet=""
    local mseFunctionName=""
    if [ "${mseTgtFunction}" != "" ]; then
      mseOffSet="${mseTgtFunction%#*}"
      mseFunctionName="${mseTgtFunction#*#}"
    fi
    if [ "${mseFunctionName}" == "" ]; then
      local mseMSG
      mseMSG=$(mse_str_replacePlaceHolder "${lbl_cmd_commandNotFound}" "CMD" "$1")
      mse_inter_showAlert "i" "${mseMSG}"
    else
      local mseParans=("$@")
      mseParans=("${mseParans[@]:${mseOffSet}}")
      if [ "${mseParans[0]}" == "--help" ]; then
        mse_mmod_help_man "${mseFunctionName}"
      elif [ "${mseParans[0]}" == "--" ]; then
        mseParans=("${mseParans[@]:1}")
        mse_mmod_ini_cmd_clearLastTip
        if [ "$(type -t "${mseFunctionName}_vldtr")" != "function" ]; then
          "$mseFunctionName" "${mseParans[@]}"
        else
          mse_exec_validate "$mseFunctionName" "${mseParans[@]}" &> /dev/null
          if [ $? == 0 ]; then
            "$mseFunctionName" "${mseParans[@]}"
          else
            printf "${MSE_GLOBAL_LASTERR}\n"
          fi
        fi
      fi
    fi
  fi
}
mse_mmod_ini_cmd_search() {
  local i
  local mseOffSet=1
  local mseLength="$#"
  local mseOriginalCmd=""
  local mseFunctionName=""
  if [ ! -z "${MSE_GLOBAL_CMD_COMPARE[${1^^}]+x}" ]; then
    mseOriginalCmd="${MSE_GLOBAL_CMD_COMPARE[${1^^}]}"
    if [ ! -z "${MSE_GLOBAL_CMD[$mseOriginalCmd]+x}" ]; then
      mseFunctionName="${MSE_GLOBAL_CMD[${mseOriginalCmd}]}"
    fi
  fi
  if [ "${mseFunctionName}" == "" ] && [ "${mseLength}" -ge 2 ]; then
    local mseCmd="$1"
    for ((i=2; i<=mseLength; i++)); do
      mseCmd+="_${!i}"
      if [ ! -z "${MSE_GLOBAL_CMD_COMPARE[${mseCmd^^}]+x}" ]; then
        mseOriginalCmd="${MSE_GLOBAL_CMD_COMPARE[${mseCmd^^}]}"
        if [ ! -z "${MSE_GLOBAL_CMD[$mseOriginalCmd]+x}" ]; then
          mseFunctionName="${MSE_GLOBAL_CMD[${mseOriginalCmd}]}"
          if [ "${mseFunctionName}" != "" ]; then
            mseOffSet="$i"
            break
          fi
        fi
      fi
    done
  fi
  if [ "${mseFunctionName}" != "" ]; then
    printf "${mseOffSet}#${mseFunctionName}"
  fi
}
mse_mmod_ini_cmd_clearLastTip() {
  if [ "${MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP}" -gt 1 ]; then
    local mseCount
    local mseCleanLines="\e7"
    for ((mseCount=0; mseCount<MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP; mseCount++)); do
      mseCleanLines+="\n\e[2K"
    done
    mseCleanLines+="\e8"
    printf "${mseCleanLines}"
  fi
}
# END :: mse_mmod_ini_cmd.sh


# INI :: mse_mmod_ini_completion_bash.sh
mse_mmod_ini_completion_bash() {
  local mseCompletionMode="${MSE_GLOBAL_COMPLETION_MODE}"
  COMPREPLY=()
  declare -a mseArrTerminalParticles=()
  local mseTotalTerminalParticles="0"
  if [ "${mseCompletionMode}" == "F" ]; then
    local mseTmpWord
    for mseTmpWord in "${COMP_WORDS[@]}"; do
      if [ "${mseTmpWord}" != "" ]; then
        mseArrTerminalParticles+=("${mseTmpWord}")
      fi
    done
  elif [ "${mseCompletionMode}" == "C" ]; then
    mseArrTerminalParticles=(${COMP_LINE})
  fi
  mseTotalTerminalParticles="${#mseArrTerminalParticles[@]}"
  if [ "${mseTotalTerminalParticles}" -ge 1 ]; then
    local mseCmdSearchBy=""
    if [ "${mseTotalTerminalParticles}" -ge 2 ]; then
      mseCmdSearchBy="${mseArrTerminalParticles[@]:1}"
      mseCmdSearchBy="${mseCmdSearchBy^^}"
      mseCmdSearchBy="${mseCmdSearchBy// /_}"
      mseCmdSearchBy=$(mse_str_trim "${mseCmdSearchBy}")
    fi
    local mseCmdCompareVersion=""
    local mseCmdOriginalVersion=""
    local mseCmdNextParticle=""
    unset mseArrCmdCompletionParticles
    declare -A mseArrCmdCompletionParticles
    local mseCompletionType="cmd"
    local mseOffSetParticles=""
    local mseCurrentParameterIndex="0"
    local mseAtualPromptCmd=""
    local mseIndex=""
    declare -a mseCmdAtualParticles=()
    declare -a mseCmdOriginalParticles=()
    for mseCmdCompareVersion in "${!MSE_GLOBAL_CMD_COMPARE[@]}"; do
      mseCmdOriginalVersion="${MSE_GLOBAL_CMD_COMPARE[${mseCmdCompareVersion}]}"
      mseCmdNextParticle=""
      if [ "${mseCmdSearchBy}" == "" ]; then
        mseCmdNextParticle=${mseCmdOriginalVersion%% *}
      else
        if [ "${mseCmdSearchBy}" == "${mseCmdCompareVersion}" ]; then
          mseArrCmdCompletionParticles["--"]=""
          break
        elif [[ "${mseCmdSearchBy}" =~ ^${mseCmdCompareVersion}_-- ]]; then
          mseCompletionType="param"
          readarray -d ' ' -t mseCmdOriginalParticles <<< "${mseCmdOriginalVersion}"
          mseOffSetParticles="${#mseCmdOriginalParticles[@]}"
          ((mseCurrentParameterIndex = mseTotalTerminalParticles - mseOffSetParticles - 2))
          break
        elif [[ "${mseCmdCompareVersion}" =~ ^${mseCmdSearchBy} ]]; then
          mseAtualPromptCmd="${mseCmdOriginalVersion:0:${#mseCmdSearchBy}}"
          readarray -d ' ' -t mseCmdAtualParticles <<< "${mseAtualPromptCmd} "
          readarray -d ' ' -t mseCmdOriginalParticles <<< "${mseCmdOriginalVersion} "
          for mseIndex in "${!mseCmdOriginalParticles[@]}"; do
            if [ "${mseCmdOriginalParticles[$mseIndex]}" != "${mseCmdAtualParticles[$mseIndex]}" ]; then
              mseCmdNextParticle="${mseCmdOriginalParticles[$mseIndex]}"
              break;
            fi
          done
        fi
      fi
      if [ "${mseCmdNextParticle}" != "" ]; then
        mseArrCmdCompletionParticles["${mseCmdNextParticle}"]=""
      fi
    done
    if [ "${mseCompletionType}" == "cmd" ]; then
      if [ "${mseCompletionMode}" == "F" ]; then
        COMPREPLY+=("${!mseArrCmdCompletionParticles[@]}")
      elif [ "${mseCompletionMode}" == "C" ]; then
        printf "%s\n" "${!mseArrCmdCompletionParticles[@]}"
      fi
    elif [ "${mseCompletionType}" == "param" ]; then
      local mseValidateFunctionName="${MSE_GLOBAL_CMD[${mseCmdOriginalVersion}]}_vldtr"
      if [ "$(type -t "${mseValidateFunctionName}")" == "function" ]; then
        unset MSE_GLOBAL_VALIDATE_PARAMETERS_RULES
        declare -gA MSE_GLOBAL_VALIDATE_PARAMETERS_RULES
        "${mseValidateFunctionName}"
        if [ "${mseCurrentParameterIndex}" -lt "${MSE_GLOBAL_VALIDATE_PARAMETERS_RULES[count]}" ]; then
          mse_str_split "::" "${MSE_GLOBAL_VALIDATE_PARAMETERS_RULES[param_${mseCurrentParameterIndex}]}"
          local mseTipParam=""
          local mseStrRequired=""
          local mseParamName=$(mse_str_trim "${MSE_GLOBAL_MODULE_SPLIT_RESULT[0]}")
          local mseParamRequired=$(mse_str_trim "${MSE_GLOBAL_MODULE_SPLIT_RESULT[1]}")
          local mseParamType=$(mse_str_trim "${MSE_GLOBAL_MODULE_SPLIT_RESULT[2]}")
          local mseParamDescription=$(mse_str_trim "${MSE_GLOBAL_VALIDATE_PARAMETERS_RULES[param_desc_${mseCurrentParameterIndex}]}")
          local mseParamListLabels=$(mse_str_trim "${MSE_GLOBAL_VALIDATE_PARAMETERS_RULES[param_${mseCurrentParameterIndex}_labels]}")
          if [ "${mseParamRequired}" == "r" ]; then
            mseStrRequired="*"
          fi
          mseTipParam="@ [${mseParamType}] ${mseParamName}${mseStrRequired}"
          local mseDescTotalColumns="${COLUMNS}"
          if [ "${mseDescTotalColumns}" -gt 120 ]; then
            mseDescTotalColumns="120"
          fi
          mse_mmod_ini_cmd_clearLastTip
          MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP="1"
          if [ "${mseParamDescription}" != "" ]; then
            mse_str_splitInLines "${mseParamDescription}" "${mseDescTotalColumns}"
            MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP="${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"
            ((MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP = MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP + 1))
            local mseDescLine=""
            mseParamDescription=""
            for mseDescLine in "${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"; do
              mseParamDescription+="\n\e[2K${mseDescLine}"
            done
          fi
          if [ "${mseParamType}" == "bool" ]; then
            mseParamDescription+="\n\e[2K${lbl_cmd_completion_param_pickBool}"
            ((MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP = MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP + 1))
          fi
          if [ "${mseParamListLabels}" != "" ]; then
            mse_str_splitInLines "${mseParamListLabels}" "${mseDescTotalColumns}"
            local mseCountLines="${#MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"
            ((MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP = MSE_GLOBAL_COMPLETION_LINES_IN_LAST_TIP + mseCountLines + 1))
            local mseDescLine=""
            mseParamDescription+="\n\e[2K${lbl_cmd_completion_param_pickOption}"
            for mseDescLine in "${MSE_GLOBAL_MODULE_SPLIT_RESULT[@]}"; do
              mseParamDescription+="\n\e[2K${mseDescLine}"
            done
          fi
          printf "\e7\n\e[2K${mseTipParam}${mseParamDescription}\e8"
        fi
      fi
    fi
  fi
}
if [ "${SHELL##*/}" == "bash" ] && ([ "${MSE_GLOBAL_COMPLETION_MODE}" == "C" ] || [ "${MSE_GLOBAL_COMPLETION_MODE}" == "F" ]); then
  complete "-${MSE_GLOBAL_COMPLETION_MODE}" "mse_mmod_ini_completion_bash" "mse"
fi
# END :: mse_mmod_ini_completion_bash.sh


# INI :: mse_mmod_ini_loadLocaleLabels.sh
mse_mmod_ini_loadLocaleLabels() {
  declare -a mseLocaleDirectories=("${1}/locale")
  local mseRootModuleAssetsDir
  local mseRootModuleLocalesDir
  if [ -d "${1}/locale" ]; then
    mseLocaleDirectories+=("${1}/locale")
  fi
  IFS=$'\n'
  for mseRootModuleAssetsDir in $(find "${1}/scripts" -type d -name "assets" | sort -n); do
    for mseRootModuleLocalesDir in $(find "${mseRootModuleAssetsDir}" -type d -name "locale" | sort -n); do
      mseLocaleDirectories+=("${mseRootModuleLocalesDir}")
    done
  done
  IFS=$' \t\n'
  local mseLocaleDir
  for mseLocaleDir in "${mseLocaleDirectories[@]}"; do
    if [ -f "${mseLocaleDir}/${2}.sh" ]; then
      . "${mseLocaleDir}/${2}.sh"
    elif [ -f "${mseLocaleDir}/${2}/label/general.sh" ]; then
      . "${mseLocaleDir}/${2}/label/general.sh"
    fi
  done
}
mse_mmod_ini_reloadAllLocaleLabels() {
  local mseHOME=$([ ! -z "${XDG_MAIN_HOME}" ] && echo "${XDG_MAIN_HOME}" || echo "${HOME}")
  local mseInstallationPath="${mseHOME}/apps/myShellEnv"
  local mseUseLocale="${MSE_GLOBAL_MODULE_LOCALE}"
  if [ "${1}" != "" ]; then
    mseUseLocale="${1}"
  fi
  mse_mmod_ini_loadLocaleLabels "${mseInstallationPath}" "${mseUseLocale}"
  local mseModuleName
  for mseModuleName in "${!MSE_AVAILABLE_MODULES[@]}"; do
    if [ "${MSE_AVAILABLE_MODULES[${mseModuleName}]}" == "1" ]; then
      mse_mmod_ini_loadLocaleLabels "${mseInstallationPath}/${mseModuleName}/src" "${mseUseLocale}"
    fi
  done
}
# END :: mse_mmod_ini_loadLocaleLabels.sh


# INI :: mse_mmod_ini_registerModule.sh
mse_mmod_ini_registerModule() {
  local mseModFiles
  local mseModuleName
  local mseModuleMetaDataKey
  local mseModuleTotalFunctionCount
  local mseSubModuleName
  local mseSubModuleMetaDataKey
  local mseSubModuleTotalFunctionCount
  mse_mmod_loadRegisterFunctions "$2"
  if [ "$(type -t "mse_registerModule_execOnStart")" == "function" ]; then
    mse_registerModule_execOnStart "$2"
  fi
  if [ "$(type -t "mse_registerModule_execBeforeLoadLocale")" == "function" ]; then
    mse_registerModule_execBeforeLoadLocale "$2"
  fi
  mse_mmod_ini_loadLocaleLabels "$2" "${MSE_GLOBAL_MODULE_LOCALE}"
  if [ "$(type -t "mse_registerModule_execAfterLoadLocale")" == "function" ]; then
    mse_registerModule_execAfterLoadLocale "$2"
  fi
  if [ "$(type -t "mse_registerModule_execBeforeLoadEnv")" == "function" ]; then
    mse_registerModule_execBeforeLoadEnv "$2"
  fi
  if [ -f "${2}/config/env.sh" ]; then
    . "${2}/config/env.sh"
  fi
  if [ "$(type -t "mse_registerModule_execAfterLoadEnv")" == "function" ]; then
    mse_registerModule_execAfterLoadEnv "$2"
  fi
  if [ "$(type -t "mse_registerModule_execBeforeLoadVariables")" == "function" ]; then
    mse_registerModule_execBeforeLoadVariables "$2"
  fi
  if [ -f "${2}/config/variables.sh" ]; then
    . "${2}/config/variables.sh"
  fi
  if [ "$(type -t "mse_registerModule_execAfterLoadVariables")" == "function" ]; then
    mse_registerModule_execAfterLoadVariables "$2"
  fi
  if [ "$(type -t "mse_registerModule_execBeforeLoadAliases")" == "function" ]; then
    mse_registerModule_execBeforeLoadAliases "$2"
  fi
  if [ -f "${2}/config/aliases.sh" ]; then
    . "${2}/config/aliases.sh"
  fi
  if [ "$(type -t "mse_registerModule_execAfterLoadAliases")" == "function" ]; then
    mse_registerModule_execAfterLoadAliases "$2"
  fi
  if [ "$(type -t "mse_registerModule_execBeforeLoadScripts")" == "function" ]; then
    mse_registerModule_execBeforeLoadScripts "$2"
  fi
  mseModFiles=$(find "$2/scripts" -name "*.sh" | sort -n)
  if [ "$mseModFiles" != "" ]; then
    local i
    local c
    local mseTmpTotalSubModules
    local rawLine
    local mseFullFileName
    local mseFunctionName
    mseModuleName="$1"
    mseModuleMetaDataKey="M::${mseModuleName}"
    mseModuleTotalFunctionCount=0
    MSE_GLOBAL_MODULES_PATH[${mseModuleName}]="$2"
    MSE_GLOBAL_MODULES_METADATA["${mseModuleMetaDataKey}"]=0
    MSE_GLOBAL_MODULES_METADATA_INDEXED+=("${mseModuleMetaDataKey}")
    mse_mmod_splitAndOrderSubModules
    mseTmpTotalSubModules="${#MSE_TMP_LIST_SUBMODULES[@]}"
    for  ((i=0; i<mseTmpTotalSubModules; i++)); do
      mseSubModuleName="${MSE_TMP_LIST_SUBMODULES[$i]}"
      mseSubModuleMetaDataKey="S::${mseModuleName}::${mseSubModuleName}"
      MSE_GLOBAL_MODULES_METADATA["${mseSubModuleMetaDataKey}"]=0
    done
    while read rawLine; do
      if [[ ! ${rawLine} =~ "/assets/locale/" ]]; then
        mseFullFileName=$(basename -- "$rawLine")
        mseFunctionName="${mseFullFileName%.*}"
        unset "${mseFunctionName}"
        . "$rawLine" || true
        if [[ ! ${rawLine} =~ "/assets/" ]]; then
          mseSubModuleName="-"
          ((mseModuleTotalFunctionCount=mseModuleTotalFunctionCount+1))
          for  ((i=0; i<mseTmpTotalSubModules; i++)); do
            if [[ "${mseFunctionName}" =~ "${MSE_TMP_LIST_SUBMODULES[$i]}_" ]]; then
              mseSubModuleName="${MSE_TMP_LIST_SUBMODULES[$i]}"
              mseSubModuleMetaDataKey="S::${mseModuleName}::${mseSubModuleName}"
              c="${MSE_GLOBAL_MODULES_METADATA[${mseSubModuleMetaDataKey}]}"
              ((c=c+1))
              MSE_GLOBAL_MODULES_METADATA["${mseSubModuleMetaDataKey}"]="${c}"
              break
            fi
          done
          MSE_GLOBAL_MODULES_METADATA["F::${mseModuleName}::${mseSubModuleName}::${mseFunctionName}"]="${rawLine}"
        fi
      fi
    done <<< ${mseModFiles}
    MSE_GLOBAL_MODULES_METADATA["${mseModuleMetaDataKey}"]="${mseModuleTotalFunctionCount}"
  fi
  if [ "$(type -t "mse_registerModule_execAfterLoadScripts")" == "function" ]; then
    mse_registerModule_execAfterLoadScripts "$2"
  fi
  local mseKey
  local mseKeyCompare
  for mseKey in "${!MSE_GLOBAL_CMD[@]}"; do
    mseKeyCompare="${mseKey^^}"
    mseKeyCompare="${mseKeyCompare// /_}"
    if [ -z "${MSE_GLOBAL_CMD_COMPARE[$mseKeyCompare]+x}" ]; then
      MSE_GLOBAL_CMD_COMPARE["${mseKeyCompare}"]="${mseKey}"
    fi
  done
  if [ "$(type -t "mse_registerModule_execOnEnd")" == "function" ]; then
    mse_registerModule_execOnEnd "$2"
  fi
  mse_mmod_unloadRegisterFunctions
}
mse_mmod_loadRegisterFunctions() {
  if [ -f "${1}/config/module/register.sh" ]; then
    . "${1}/config/module/register.sh"
  fi
}
mse_mmod_unloadRegisterFunctions() {
  local mseFunctionName
  for mseFunctionName in "${MSE_GLOBAL_REGISTERMODULE_META_FUNCTIONS[@]}"; do
    unset "${mseFunctionName}"
  done
}
mse_mmod_splitAndOrderSubModules() {
  unset MSE_TMP_LIST_SUBMODULES
  declare -ga MSE_TMP_LIST_SUBMODULES
  if [ "${MSE_TMP_SUBMODULES}" != "" ]; then
    local mseDelimiter
    local mseString
    local mseSubStr
    declare -a mseTmpSubModules=()
    mseDelimiter="::"
    mseString="${MSE_TMP_SUBMODULES}"
    mseSubStr=""
    while [ "${mseString}" != "" ]; do
      if [[ "$mseString" != *"$mseDelimiter"* ]]; then
        mseTmpSubModules+=("$mseString")
        break
      else
        mseSubStr="${mseString%%${mseDelimiter}*}"
        mseTmpSubModules+=("$mseSubStr")
        mseString="${mseString#*${mseDelimiter}}"
      fi
    done
    local mseIndexes
    mseIndexes=( $(
      for i in "${!mseTmpSubModules[@]}" ; do
        printf '%s %s %s\n' $i "${#mseTmpSubModules[i]}" "${mseTmpSubModules[i]}"
      done | sort -nrk2,2 -rk3 | cut -f1 -d' '
    ))
    for i in "${mseIndexes[@]}" ; do
      MSE_TMP_LIST_SUBMODULES+=("${mseTmpSubModules[i]}")
    done
    MSE_TMP_SUBMODULES=""
  fi
}
mse_mmod_reorderMetadataIndexes() {
  unset MSE_GLOBAL_MODULES_METADATA_INDEXED
  declare -ga MSE_GLOBAL_MODULES_METADATA_INDEXED
  IFS=$'\n'
  declare -a mseSortedMetaData=($(sort <<< "${!MSE_GLOBAL_MODULES_METADATA[*]}"))
  IFS=$' \t\n'
  mse_mmod_processTargetObjectIndex "M" "M::"
}
mse_mmod_processTargetObjectIndex() {
  local mseKey
  local mseOType="$1"
  local mseSearchKey="$2"
  local mseModuleName
  local mseSubModuleName
  for mseKey in "${mseSortedMetaData[@]}"; do
    if [[ "${mseKey}" =~ "${mseSearchKey}" ]]; then
      case "${mseOType}" in
        M)
          MSE_GLOBAL_MODULES_METADATA_INDEXED+=("${mseKey}")
          mseModuleName="${mseKey#M::}"
          mse_mmod_processTargetObjectIndex "F" "F::${mseModuleName}::-::"
          mse_mmod_processTargetObjectIndex "S" "S::${mseModuleName}"
        ;;
        S)
          MSE_GLOBAL_MODULES_METADATA_INDEXED+=("${mseKey}")
          mseSubModuleName="${mseKey#S::}"
          mse_mmod_processTargetObjectIndex "F" "F::${mseSubModuleName}::"
        ;;
        F)
          MSE_GLOBAL_MODULES_METADATA_INDEXED+=("${mseKey}")
        ;;
      esac
    fi
  done
}
# END :: mse_mmod_ini_registerModule.sh


# INI :: mse_mmod_mng_generateStandalone.sh
mse_mmod_mng_generateStandalone() {
  if [ "${1}" == "" ] || [ -z "${MSE_GLOBAL_MODULES_PATH[$1]+x}" ]; then
    mse_inter_showError "ERR::${lbl_generateStandalone_moduleNotFound}"
  else
    local mseTargetFiles
    local mseFilePath
    local mseModulePath="${MSE_GLOBAL_MODULES_PATH[$1]}"
    local mseFileStandalone="${mseModulePath}/standalone.sh"
    declare -a mseStandaloneContent=()
    mseStandaloneContent+=("#!/usr/bin/env bash")
    mseStandaloneContent+=("# myShellEnv v 1.0 [aeondigital.com.br]")
    declare -a mseTmpArr=()
    local mseTmpLine=""
    mse_mmod_loadStandaloneFunctions "$mseModulePath"
    if [ "$(type -t "mse_standalone_execOnStart")" == "function" ]; then
      mse_standalone_execOnStart "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    if [ "$(type -t "mse_standalone_execBeforeLoadLocale")" == "function" ]; then
      mse_standalone_execBeforeLoadLocale "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    mse_mmod_retrieveOnlyCodeFromFile "${mseModulePath}/locale/${MSE_GLOBAL_MODULE_LOCALE}.sh" "mseTmpArr"
    for mseTmpLine in "${mseTmpArr[@]}"; do
      mseStandaloneContent+=("${mseTmpLine}")
    done
    local mseRootModuleAssetsDir
    local mseRootModuleLocalesFiles
    IFS=$'\n'
    for mseRootModuleAssetsDir in $(find "${mseModulePath}/scripts" -type d -name "assets" | sort -n); do
      if [ -d "${mseRootModuleAssetsDir}/locale/${MSE_GLOBAL_MODULE_LOCALE}/label" ]; then
        for mseRootModuleLocalesFiles in $(find "${mseRootModuleAssetsDir}/locale/${MSE_GLOBAL_MODULE_LOCALE}/label" -type f -name "*.sh" | sort -n); do
          mse_mmod_retrieveOnlyCodeFromFile "${mseRootModuleLocalesFiles}" "mseTmpArr"
          for mseTmpLine in "${mseTmpArr[@]}"; do
            mseStandaloneContent+=("${mseTmpLine}")
          done
        done
      fi
    done
    IFS=$' \t\n'
    if [ "$(type -t "mse_standalone_execAfterLoadLocale")" == "function" ]; then
      mse_standalone_execAfterLoadLocale "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    if [ "$(type -t "mse_standalone_execBeforeLoadEnv")" == "function" ]; then
      mse_standalone_execBeforeLoadEnv "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    mse_mmod_retrieveOnlyCodeFromFile "${mseModulePath}/config/env.sh" "mseTmpArr"
    for mseTmpLine in "${mseTmpArr[@]}"; do
      mseStandaloneContent+=("${mseTmpLine}")
    done
    if [ "$(type -t "mse_standalone_execAfterLoadEnv")" == "function" ]; then
      mse_standalone_execAfterLoadEnv "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    if [ "$(type -t "mse_standalone_execBeforeLoadVariables")" == "function" ]; then
      mse_standalone_execBeforeLoadVariables "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    mse_mmod_retrieveOnlyCodeFromFile "${mseModulePath}/config/variables.sh" "mseTmpArr"
    for mseTmpLine in "${mseTmpArr[@]}"; do
      mseStandaloneContent+=("${mseTmpLine}")
    done
    if [ "$(type -t "mse_standalone_execAfterLoadVariables")" == "function" ]; then
      mse_standalone_execAfterLoadVariables "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    if [ "$(type -t "mse_standalone_execBeforeLoadAliases")" == "function" ]; then
      mse_standalone_execBeforeLoadAliases "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    mse_mmod_retrieveOnlyCodeFromFile "${mseModulePath}/config/aliases.sh" "mseTmpArr"
    for mseTmpLine in "${mseTmpArr[@]}"; do
      mseStandaloneContent+=("${mseTmpLine}")
    done
    if [ "$(type -t "mse_standalone_execAfterLoadAliases")" == "function" ]; then
      mse_standalone_execAfterLoadAliases "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    if [ "$(type -t "mse_standalone_execBeforeLoadScripts")" == "function" ]; then
      mse_standalone_execBeforeLoadScripts "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    mseTargetFiles=$(find "${mseModulePath}/scripts" -name "*.sh" | sort -n)
    if [ "${mseTargetFiles}" != "" ]; then
      while read mseFilePath; do
        if [[ ! ${mseFilePath} =~ "/assets/locale/" ]]; then
          mse_mmod_retrieveOnlyCodeFromFile ${mseFilePath} "mseTmpArr"
          for mseTmpLine in "${mseTmpArr[@]}"; do
            mseStandaloneContent+=("${mseTmpLine}")
          done
        fi
      done <<< ${mseTargetFiles}
    fi
    if [ "$(type -t "mse_standalone_execAfterLoadScripts")" == "function" ]; then
      mse_standalone_execAfterLoadScripts "$mseModulePath" "mseTmpArr"
      for mseTmpLine in "${mseTmpArr[@]}"; do
        mseStandaloneContent+=("${mseTmpLine}")
      done
    fi
    printf "%s\n" "${mseStandaloneContent[@]}" > "${mseFileStandalone}"
    mse_mmod_unloadStandaloneFunctions
  fi
}
MSE_GLOBAL_CMD["mng generateStandalone"]="mse_mmod_mng_generateStandalone"
mse_mmod_mng_generateStandalone_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="ModuleName :: r :: string"
}
mse_mmod_loadStandaloneFunctions() {
  if [ -f "${1}/config/module/standalone.sh" ]; then
    . "${1}/config/module/standalone.sh"
  fi
}
mse_mmod_unloadStandaloneFunctions() {
  local mseFunctionName
  for mseFunctionName in "${MSE_GLOBAL_STANDALONE_META_FUNCTIONS[@]}"; do
    unset "${mseFunctionName}"
  done
}
mse_mmod_retrieveOnlyCodeFromFile() {
  local mseFullFileName=$(basename -- "$1")
  local mseFileContent=$(grep -vE '^(\s*$|\s*#)' "${1}")
  declare -a mseSplitArr=()
  local mseLine
  readarray -t mseSplitArr <<< "$mseFileContent"
  declare -n mseTmpArrName="$2"
  mseTmpArrName=()
  if [ "${mseFileContent}" != "" ] && [ "${#mseSplitArr[@]}" -gt 0 ]; then
    mseTmpArrName+=("# INI :: ${mseFullFileName}")
    for mseLine in "${mseSplitArr[@]}"; do
      mseTmpArrName+=("${mseLine}")
    done
    mseTmpArrName+=("# END :: ${mseFullFileName}")
    mseTmpArrName+=("")
    mseTmpArrName+=("")
  fi
}
# END :: mse_mmod_mng_generateStandalone.sh


# INI :: mse_mmod_mng_showMetaData.sh
mse_mmod_mng_showMetaData() {
  local msePrettyFormat=0
  if [ "$1" == "0" ] || [ "$1" == "1" ]; then
    msePrettyFormat="$1"
  fi
  local mseShowFunctions=1
  if [ "$2" == "0" ] || [ "$2" == "1" ]; then
    mseShowFunctions="$2"
  fi
  local mseFilterModules="$3"
  local mseFilterSubModules="$4"
  local mseFilterFunctions="$5"
  local mseRawData
  local mseRawSubModuleData
  mseRawData=$(mse_mmod_mng_showRawMetaData 1 1 1 "${mseFilterModules}" "${mseFilterSubModules}" "${mseFilterFunctions}")
  if [ "${mseRawData}" != "" ]; then
    local mseLineRaw
    local mseTmpLine
    local mseAddLine
    local mseModStart=0
    local mseModFirst=1
    declare -a mseReturnData=()
    IFS=$'\n'
    local msePFIndentModule
    local msePFIndentSubModule
    local msePFIndentFunction
    local msePFColorModule
    local msePFColorSubModule
    local msePFColorFunctions
    local msePFColorSeparator
    local msePFColorSelectedElements
    local msePFColorTotalElements
    if [ "${msePrettyFormat}" == "1" ]; then
      msePFIndentModule="  "
      msePFIndentSubModule="     "
      msePFIndentFunction="       "
      "${MSE_GLOBAL_THEME_NAME}_setColors"
      local msePrefix="${MSE_GLOBAL_MAIN_THEME_COLORS[${MSE_GLOBAL_THEME_NAME}]}"
      msePFColorModule=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_module]}
      msePFColorSubModule=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_subModule]}
      msePFColorFunctions=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_functions]}
      msePFColorSeparator=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_separator]}
      msePFColorSeparatorBar=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_separatorBar]}
      msePFColorSelectedElements=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_selectedElements]}
      msePFColorTotalElements=${MSE_GLOBAL_MAIN_THEME_COLORS[${msePrefix}_man_totalElements]}
      mseReturnData+=("")
    fi
    while read mseLineRaw || [ -n "${mseLineRaw}" ]; do
      mse_str_split "::" "${mseLineRaw}"
      mseTmpLine=""
      mseAddLine=1
      if [ "${msePrettyFormat}" == "0" ]; then
        mseTmpLine="${MSE_GLOBAL_MODULE_SPLIT_RESULT[0]}"
        case "${MSE_GLOBAL_MODULE_SPLIT_RESULT[0]}" in
          M)
            mseTmpLine+="  ${MSE_GLOBAL_MODULE_SPLIT_RESULT[1]} (${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]}/${MSE_GLOBAL_MODULE_SPLIT_RESULT[2]})"
          ;;
          S)
            mseTmpLine+="    ${MSE_GLOBAL_MODULE_SPLIT_RESULT[2]} (${MSE_GLOBAL_MODULE_SPLIT_RESULT[4]}/${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]})"
          ;;
          F)
            if [ "${MSE_GLOBAL_MODULE_SPLIT_RESULT[2]}" == "-" ]; then
              mseTmpLine+="    ${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]}"
            else
              mseTmpLine+="      ${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]}"
            fi
            if [ "${mseShowFunctions}" == "0" ]; then
              mseAddLine=0
            fi
          ;;
        esac
        if [ "${mseAddLine}" == 1 ]; then
          mseReturnData+=("${mseTmpLine}")
        fi
      else
        case "${MSE_GLOBAL_MODULE_SPLIT_RESULT[0]}" in
          M)
            mseModStart=1
            mseTmpLine+="${msePFIndentModule}"
            mseTmpLine+=":: ${msePFColorModule}${MSE_GLOBAL_MODULE_SPLIT_RESULT[1]}${mseNONE} "
            mseTmpLine+="${msePFColorSeparator}(${mseNONE}"
            mseTmpLine+="${msePFColorSelectedElements}${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]}${mseNONE}"
            mseTmpLine+="${msePFColorSeparatorBar}/${mseNONE}"
            mseTmpLine+="${msePFColorTotalElements}${MSE_GLOBAL_MODULE_SPLIT_RESULT[2]}${mseNONE}"
            mseTmpLine+="${msePFColorSeparator})${mseNONE}"
            if [ "${mseModFirst}" == "0" ]; then
              mseReturnData+=("")
              mseReturnData+=("")
            else
              mseModFirst=0
            fi
            mseReturnData+=($(printf "${mseTmpLine}"))
            mseRawSubModuleData=$(mse_mmod_mng_showRawMetaData 0 1 0 "${MSE_GLOBAL_MODULE_SPLIT_RESULT[1]}" "${mseFilterSubModules}" "${mseFilterFunctions}")
            if [ "${mseRawSubModuleData}" != "" ]; then
              declare -a mseTmpArrSubModuleLine=()
              declare -a mseTmpArrSubModuleLineNoColor=()
              local mseTmpStrSubModuleLine
              local mseSubModuleLineNoColor
              local mseSubModuleLine
              local mseSubModuleLineRaw
              local mseSubModuleNameMaxLength=0
              while read mseSubModuleLineRaw || [ -n "${mseSubModuleLineRaw}" ]; do
                mse_str_split "::" "${mseSubModuleLineRaw}"
                mseSubModuleLine=""
                mseSubModuleLine+="${msePFColorSubModule}${MSE_GLOBAL_MODULE_SPLIT_RESULT[2]}${mseNONE} "
                mseSubModuleLine+="${msePFColorSeparator}(${mseNONE}"
                mseSubModuleLine+="${msePFColorSelectedElements}${MSE_GLOBAL_MODULE_SPLIT_RESULT[4]}${mseNONE}"
                mseSubModuleLine+="${msePFColorSeparatorBar}/${mseNONE}"
                mseSubModuleLine+="${msePFColorTotalElements}${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]}${mseNONE}"
                mseSubModuleLine+="${msePFColorSeparator})${mseNONE}"
                mseTmpArrSubModuleLine+=($(printf "${mseSubModuleLine}"))
                mseSubModuleLineNoColor="${MSE_GLOBAL_MODULE_SPLIT_RESULT[2]} (${MSE_GLOBAL_MODULE_SPLIT_RESULT[4]}/${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]})"
                mseTmpArrSubModuleLineNoColor+=("${#mseSubModuleLineNoColor}")
                if [ "${#mseSubModuleLineNoColor}" -gt "${mseSubModuleNameMaxLength}" ]; then
                  mseSubModuleNameMaxLength="${#mseSubModuleLineNoColor}"
                fi
              done <<< "$mseRawSubModuleData"
              local i
              local d
              local c=0
              local mseTmpSubModuleName
              local mseTmpSubModuleCounter
              local mseTmpSubModuleNameLength
              local mseDiff
              mseTmpSubModuleCounter="${#mseTmpArrSubModuleLine[@]}"
              for ((i=0; i<mseTmpSubModuleCounter; i++)); do
                mseTmpSubModuleName="${mseTmpArrSubModuleLine[$i]}"
                mseTmpSubModuleNameLength="${mseTmpArrSubModuleLineNoColor[$i]}"
                ((mseDiff=mseSubModuleNameMaxLength-mseTmpSubModuleNameLength))
                for ((d=0; d<mseDiff; d++)); do
                  mseTmpSubModuleName+=" "
                done
                mseTmpStrSubModuleLine+="${mseTmpSubModuleName}  "
                ((c=c+1))
                if [ "${c}" == 5 ] || [ "${c}" == "${mseTmpSubModuleCounter}" ]; then
                  mseReturnData+=("${msePFIndentSubModule}${mseTmpStrSubModuleLine}")
                  mseTmpStrSubModuleLine=""
                fi
              done
            fi
          ;;
          S)
            if [ "${mseShowFunctions}" == "1" ]; then
              mseReturnData+=("")
              mseSubModuleLine="${msePFIndentSubModule}"
              mseSubModuleLine+="${msePFColorSubModule}${MSE_GLOBAL_MODULE_SPLIT_RESULT[2]}${mseNONE} "
              mseSubModuleLine+="${msePFColorSeparator}(${mseNONE}"
              mseSubModuleLine+="${msePFColorSelectedElements}${MSE_GLOBAL_MODULE_SPLIT_RESULT[4]}${mseNONE}"
              mseSubModuleLine+="${msePFColorSeparatorBar}/${mseNONE}"
              mseSubModuleLine+="${msePFColorTotalElements}${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]}${mseNONE}"
              mseSubModuleLine+="${msePFColorSeparator})${mseNONE}"
              mseReturnData+=($(printf "${mseSubModuleLine}"))
            fi
          ;;
          F)
            if [ "${MSE_GLOBAL_MODULE_SPLIT_RESULT[2]}" == "-" ]; then
              if [ "${mseModStart}" == "1" ]; then
                mseReturnData+=("")
                mseModStart=0
              fi
              mseTmpLine+="${msePFIndentSubModule}${msePFColorFunctions}${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]}${mseNONE}"
            else
              mseTmpLine+="${msePFIndentFunction}${msePFColorFunctions}${MSE_GLOBAL_MODULE_SPLIT_RESULT[3]}${mseNONE}"
            fi
            if [ "${mseShowFunctions}" == "0" ]; then
              mseAddLine=0
            fi
            if [ "${mseAddLine}" == 1 ]; then
              mseReturnData+=($(printf "${mseTmpLine}"))
            fi
          ;;
        esac
      fi
    done <<< "$mseRawData"
    IFS=$' \t\n'
    if [ "${msePrettyFormat}" == "1" ] && [ "${mseShowFunctions}" == "1" ]; then
      mseReturnData+=("")
    fi
    printf "%s\n" "${mseReturnData[@]}"
  fi
}
MSE_GLOBAL_CMD["mng show metaData"]="mse_mmod_mng_showMetaData"
# END :: mse_mmod_mng_showMetaData.sh


# INI :: mse_mmod_mng_showMetaSummary.sh
mse_mmod_mng_showMetaSummary() {
  local msePrettyFormat=1
  if [ "$1" == "0" ] || [ "$1" == "1" ]; then
    msePrettyFormat="$1"
  fi
  mse_mmod_mng_showMetaData "${msePrettyFormat}" 0
  mse_inter_setCursorPosition top 1
  mse_inter_showAlert "i" "${lbl_showMetaSummary_moreDetails}"
}
MSE_GLOBAL_CMD["mng show metaSummary"]="mse_mmod_mng_showMetaSummary"
# END :: mse_mmod_mng_showMetaSummary.sh


# INI :: mse_mmod_mng_showRawMetaData.sh
mse_mmod_mng_showRawMetaData() {
  declare -a mseReturn=()
  declare -A mseReturnCount
  local mseTmpKey
  local mseTmpTotal
  local mseShowModuleNames=1
  if [ "$1" != "" ] && [ "$1" == "0" ]; then
    mseShowModuleNames=0
  fi
  local mseShowSubModuleNames=1
  if [ "$2" != "" ] && [ "$2" == "0" ]; then
    mseShowSubModuleNames=0
  fi
  local mseShowFunctionNames=1
  if [ "$3" != "" ] && [ "$3" == "0" ]; then
    mseShowFunctionNames=0
  fi
  local mseFilterModules=""
  if [ "$4" != "" ]; then
    mseFilterModules="$4"
  fi
  local mseFilterSubModules=""
  if [ "$5" != "" ]; then
    mseFilterSubModules="$5"
  fi
  local mseFilterFunctions=""
  if [ "$6" != "" ]; then
    mseFilterFunctions="$6"
  fi
  local mseFilterFunctionsExact=0
  if [ "$7" == "1" ]; then
    mseFilterFunctionsExact="1"
  fi
  local i
  local mseLength="${#MSE_GLOBAL_MODULES_METADATA_INDEXED[@]}"
  local mseMatch
  local mseValue
  local mseType
  local mseModuleName
  local mseSubModuleName
  declare -a mseSelected=()
  for ((i=0; i<mseLength; i++)); do
    mseMatch=0
    mseValue="${MSE_GLOBAL_MODULES_METADATA_INDEXED[$i]}"
    mseType="${mseValue:0:1}"
    case "${mseType}" in
      M)
        mseModuleName=""
        mseSubModuleName=""
        if [ "${mseFilterModules}" == "" ] || [[ "${mseValue^^}" =~ "${mseFilterModules^^}" ]]; then
          if [ "${mseShowModuleNames}" == "1" ]; then
            mseSelected+=("${mseValue}")
          fi
          mseModuleName="${mseValue#M::}"
          mseSubModuleName="-"
          mseReturnCount[${mseValue}]=0
        fi
      ;;
      S)
        mseSubModuleName=""
        if [ "${mseModuleName}" != "" ]; then
          if [ "${mseFilterSubModules}" == "" ] || [[ "${mseValue^^}" =~ "S::${mseModuleName^^}::${mseFilterSubModules^^}" ]]; then
            if [ "${mseShowSubModuleNames}" == "1" ]; then
              mseSelected+=("${mseValue}")
            fi
            mseSubModuleName="${mseValue##*::}"
            mseReturnCount[${mseValue}]=0
          fi
        fi
      ;;
      F)
        if [ "${mseModuleName}" != "" ] && [ "${mseSubModuleName}" != "" ] && [[ "${mseValue^^}" =~ "F::${mseModuleName^^}::${mseSubModuleName^^}::" ]]; then
          if [ "${mseFilterSubModules}" == "" ] || [[ "${mseValue^^}" =~ "F::${mseModuleName^^}::${mseFilterSubModules^^}" ]]; then
            if [ "${mseFilterFunctions}" == "" ] || ([ "${mseFilterFunctionsExact}" == "0" ] && [[ "${mseValue^^}" =~ "${mseFilterFunctions^^}" ]]) || ([ "${mseFilterFunctionsExact}" == "1" ] && [[ "${mseValue^^}" == "F::${mseModuleName^^}::${mseSubModuleName^^}::${mseFilterFunctions^^}" ]]); then
              if [ "${mseShowFunctionNames}" == "1" ]; then
                mseSelected+=("${mseValue}")
              fi
              mseTmpKey="M::${mseModuleName}"
              mseTmpTotal="${mseReturnCount[${mseTmpKey}]}"
              ((mseTmpTotal=mseTmpTotal+1))
              mseReturnCount[${mseTmpKey}]="${mseTmpTotal}"
              mseTmpKey="S::${mseModuleName}::${mseSubModuleName}"
              mseTmpTotal="${mseReturnCount[${mseTmpKey}]}"
              ((mseTmpTotal=mseTmpTotal+1))
              mseReturnCount[${mseTmpKey}]="${mseTmpTotal}"
            fi
          fi
        fi
      ;;
    esac
  done
  local mseKey
  local mseTmpData
  local mseTmpShow
  for mseKey in "${mseSelected[@]}"; do
    mseType="${mseKey:0:1}"
    mseTmpShow=1
    mseTmpData="${MSE_GLOBAL_MODULES_METADATA[${mseKey}]}"
    if [ "${mseType}" == "M" ] || [ "${mseType}" == "S" ]; then
      mseTmpData="${MSE_GLOBAL_MODULES_METADATA[$mseKey]}::${mseReturnCount[${mseKey}]}"
      if [ "${mseReturnCount[${mseKey}]}" == "0" ]; then
        mseTmpShow=0
      fi
    fi
    if [ "${mseTmpShow}" == 1 ]; then
      mseReturn+=("${mseKey}::${mseTmpData}")
    fi
  done
  printf "%s\n" "${mseReturn[@]}"
}
MSE_GLOBAL_CMD["mng show rawMetaData"]="mse_mmod_mng_showRawMetaData"
# END :: mse_mmod_mng_showRawMetaData.sh


# INI :: mse_mmod_mng_submoduleInstall.sh
mse_mmod_mng_submoduleInstall() {
  local mseCode=1
  local mseMsg
  local mseHOME=$([ ! -z "${XDG_MAIN_HOME}" ] && echo "${XDG_MAIN_HOME}" || echo "${HOME}")
  local mseInstallationPath="${mseHOME}/apps/myShellEnv"
  local mseSubmoduleName=""
  if [ $# == 0 ] || [ "$1" == "" ]; then
    mseMsg=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsRequired}" "PARAM_A" "Repositorie")
    mse_inter_showAlert "i" "MSE::${mseMsg}"
  else
    local mseTargetModuleURL=""
    if [[ "${1}" =~ "https://" ]]; then
      mseTargetModuleURL="${1}"
    else
      local mseKey
      declare -a mseValidValues=()
      for mseKey in "${!MSE_GLOBAL_SUBMODULES_REPOSITORIES[@]}"; do
        mseValidValues+=("${mseKey}")
        if [ "${mseKey^^}" == "${1^^}" ]; then
          mseTargetModuleURL="${MSE_GLOBAL_SUBMODULES_REPOSITORIES[$mseKey]}"
        fi
      done
    fi
    if [ "${mseTargetModuleURL}" == "" ]; then
      mseMsg=$(mse_str_replacePlaceHolder "${lbl_err_paramA_HasInvalidValue}" "PARAM_A" "Repositorie")
      mse_inter_showAlert "i" "MSE::${mseMsg}" "mseValidValues"
    else
      declare -a mseArr=()
      mse_inter_showPrompt "" "ca" "MSE::${lbl_generic_confirmActionToProceed}" "bool" "mseArr"
      if [ "${MSE_GLOBAL_PROMPT_RESULT}" == "0" ]; then
        mse_inter_showAlert "i" "MSE::${lbl_generic_actionAbortedByTheUser}"
      else
        mseSubmoduleName=$(basename -- "$mseTargetModuleURL")
        mseSubmoduleName="${mseSubmoduleName%.*}"
        if [ -d "${mseInstallationPath}/${mseSubmoduleName}" ]; then
          mse_inter_showAlert "e" "MSE::${lbl_submoduleInstall_alreadExists}" "lbl_generic_scriptInterruptedError"
        else
          mse_inter_showAlert "i" "MSE::${lbl_submoduleInstall_addNew}"
          git -C "${mseInstallationPath}" submodule add "${mseTargetModuleURL}"
          git -C "${mseInstallationPath}" submodule set-branch --branch main -- "${mseInstallationPath}/${mseSubmoduleName}"
          git -C "${mseInstallationPath}" submodule update --remote
          if [ -d "${mseInstallationPath}/${mseSubmoduleName}" ]; then
            local mseExecResult
            MSE_AVAILABLE_MODULES["${mseSubmoduleName}"]=1
            mseExecResult=$(mse_config_setVariable "${mseInstallationPath}/config.sh" "#" "0" "" "a" "MSE_AVAILABLE_MODULES" "MSE_AVAILABLE_MODULES" "")
            if [ "${mseExecResult}" == "1" ]; then
              if [ -f "${mseInstallationPath}/${mseSubmoduleName}/src/config/module/install.sh" ]; then
                unset mse_module_onInstall
                . "${mseInstallationPath}/${mseSubmoduleName}/src/config/module/install.sh"
                if [ "$(type -t "mse_module_onInstall")" == "function" ]; then
                  mse_module_onInstall
                fi
              fi
              git -C "${mseInstallationPath}" add .
              git -C "${mseInstallationPath}" commit -m "Add submodule : '${mseSubmoduleName}'"
              mseCode=0
              mse_inter_showAlert "s" "MSE::${lbl_submoduleInstall_addSuccess}"
              bash
            else
              mseMsg=$(mse_str_replacePlaceHolder "${lbl_submoduleInstall_unableToEditConfigFile}" "FILE" "${mseInstallationPath}/config.sh")
              mse_inter_showAlert "w" "MSE::${mseMsg}" "lbl_submoduleInstall_unableToEditConfigFile_msg"
            fi
          else
            mse_inter_showAlert "e" "MSE::${lbl_submoduleInstall_addFail}"
          fi
        fi
      fi
    fi
  fi
  return $mseCode
}
MSE_GLOBAL_CMD["mng submodule install"]="mse_mmod_mng_submoduleInstall"
mse_mmod_mng_submoduleInstall_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="Repositorie :: r :: string"
}
# END :: mse_mmod_mng_submoduleInstall.sh


# INI :: mse_mmod_mng_submoduleList.sh
mse_mmod_mng_submoduleList() {
  local mseRawTable
  local mseInstalled
  local mseEnabled
  for mseKey in "${!MSE_GLOBAL_SUBMODULES_REPOSITORIES[@]}"; do
    mseInstalled=$(mse_check_hasKeyInAssocArray "${mseKey}" "MSE_AVAILABLE_MODULES")
    mseEnabled="0"
    if [ "${mseInstalled}" == "1" ] && [ "${MSE_AVAILABLE_MODULES[${mseKey}]}" == "1" ]; then
      mseEnabled="1"
    fi
    mseRawTable+="${mseKey}:${mseInstalled}:${mseEnabled}\n"
  done
  printf "\n"
  mseRawTable=$(printf "Submodule:Installed:Enabled\n${mseRawTable}")
  column -e -s ":" -t <<< "${mseRawTable}"
  printf "\n"
}
MSE_GLOBAL_CMD["mng submodule list"]="mse_mmod_mng_submoduleList"
# END :: mse_mmod_mng_submoduleList.sh


# INI :: mse_mmod_mng_submoduleUninstall.sh
mse_mmod_mng_submoduleUninstall() {
  local mseCode=1
  local mseMsg
  local mseHOME=$([ ! -z "${XDG_MAIN_HOME}" ] && echo "${XDG_MAIN_HOME}" || echo "${HOME}")
  local mseInstallationPath="${mseHOME}/apps/myShellEnv"
  if [ $# == 0 ] || [ "$1" == "" ]; then
    mseMsg=$(mse_str_replacePlaceHolder "${lbl_err_paramA_IsRequired}" "PARAM_A" "SubmoduleName")
    mse_inter_showAlert "i" "MSE::${mseMsg}"
  else
    local mseSubmoduleName=""
    local mseSubmoduleInstalled="0"
    local mseKey
    declare -a mseValidValues=()
    for mseKey in "${!MSE_GLOBAL_SUBMODULES_REPOSITORIES[@]}"; do
      mseValidValues+=("${mseKey}")
      if [ "${mseKey^^}" == "${1^^}" ]; then
        mseSubmoduleName="${mseKey}"
      fi
    done
    if [ "${mseSubmoduleName}" == "" ]; then
      mseMsg=$(mse_str_replacePlaceHolder "${lbl_err_paramA_HasInvalidValue}" "PARAM_A" "SubmoduleName")
      mse_inter_showAlert "i" "MSE::${mseMsg}" "mseValidValues"
    else
      for mseKey in "${!MSE_AVAILABLE_MODULES[@]}"; do
        if [ "${mseKey}" == "${mseSubmoduleName}" ]; then
          mseSubmoduleInstalled="1"
        fi
      done
      if [ "${mseSubmoduleInstalled}" == "0" ]; then
        mse_inter_showAlert "e" "MSE::${lbl_submoduleUninstall_submoduleDoesNotExists}"
      else
        declare -a mseArr=()
        mse_inter_showPrompt "" "ca" "MSE::${lbl_generic_confirmActionToProceed}" "bool" "mseArr"
        if [ "${MSE_GLOBAL_PROMPT_RESULT}" == "0" ]; then
          mse_inter_showAlert "i" "MSE::${lbl_generic_actionAbortedByTheUser}"
        else
          local mseExecResult
          unset MSE_AVAILABLE_MODULES["${mseSubmoduleName}"]
          mseExecResult=$(mse_config_setVariable "${mseInstallationPath}/config.sh" "#" "0" "" "a" "MSE_AVAILABLE_MODULES" "MSE_AVAILABLE_MODULES" "")
          if [ "${mseExecResult}" == "0" ]; then
            mseMsg=$(mse_str_replacePlaceHolder "${lbl_submoduleUninstall_unableToEditConfigFile}" "FILE" "${mseInstallationPath}/config.sh")
            mse_inter_showAlert "e" "MSE::${mseMsg}" "lbl_generic_scriptInterruptedError"
          elif [ "${mseExecResult}" == "1" ]; then
            if [ -f "${mseInstallationPath}/${mseSubmoduleName}/src/config/module/install.sh" ]; then
              unset mse_module_onUninstall
              . "${mseInstallationPath}/${mseSubmoduleName}/src/config/module/install.sh"
              if [ "$(type -t "mse_module_onUninstall")" == "function" ]; then
                mse_module_onUninstall
              fi
            fi
            git -C "${mseInstallationPath}" submodule deinit -f -- "${mseSubmoduleName}"
            rm -rf "${mseInstallationPath}/.git/modules/${mseSubmoduleName}"
            git -C "${mseInstallationPath}" rm -f "${mseSubmoduleName}"
            git -C "${mseInstallationPath}" add .
            git -C "${mseInstallationPath}" commit -m "Remove submodule : '${mseSubmoduleName}'"
            if [ -d "${mseInstallationPath}/${mseSubmoduleName}" ]; then
              mse_inter_showAlert "e" "MSE::${lbl_submoduleUninstall_cannotRemove}" "lbl_generic_scriptInterruptedError"
            else
              mseCode=0
              mse_inter_showAlert "s" "MSE::${lbl_submoduleInstall_addSuccess}"
              bash
            fi
          fi
        fi
      fi
    fi
  fi
  return $mseCode
}
MSE_GLOBAL_CMD["mng submodule uninstall"]="mse_mmod_mng_submoduleUninstall"
mse_mmod_mng_submoduleUninstall_vldtr() {
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["count"]=1
  MSE_GLOBAL_VALIDATE_PARAMETERS_RULES["param_0"]="SubmoduleName :: r :: string"
}
# END :: mse_mmod_mng_submoduleUninstall.sh


# INI :: mse_mmod_mng_uninstallAll.sh
mse_mmod_mng_uninstallAll() {
  local mseCode=0
  mse_inter_showAlert "i" "MSE::${lbl_uninstall_uninstallStart}"
  mse_inter_showPrompt "" "ca" "MSE::${lbl_generic_confirmActionToProceed}" "bool" "lbl_uninstall_uninstallPromptMessage"
  if [ "${MSE_GLOBAL_PROMPT_RESULT}" == "0" ]; then
    mse_inter_showAlert "i" "MSE::${lbl_generic_actionAbortedByTheUser}"
  else
    local mseHOME=$([ ! -z "${XDG_MAIN_HOME}" ] && echo "${XDG_MAIN_HOME}" || echo "${HOME}")
    local mseInstallationPath="${mseHOME}/apps/myShellEnv"
    rm -rf "${mseInstallationPath}"
    if [ $? != 0 ]; then
      mse_inter_showAlert "e" "MSE::${lbl_uninstall_uninstallErrorRemoveDir}" "lbl_generic_scriptInterruptedError"
      mseCode=1
    else
      local mseAtualShell="${SHELL##*/}"
      local mseAtualShellRCPath="${HOME}/.${mseAtualShell,,}rc"
      if [ -f "${mseAtualShellRCPath}" ]; then
        local mseTargetLines=$(mse_file_boundaryLineNumbers "${mseAtualShellRCPath}" "#" "0" "# [[INI-MYSHELLENV]]" "# [[END-MYSHELLENV]]")
        if [ "${mseTargetLines}" != "" ]; then
          declare -a mseArr=()
          local mseResult=$(mse_file_write "${mseAtualShellRCPath}" "mseArr" "delete" "${mseTargetLines}")
        fi
      fi
      if [ "${mseCode}" == "0" ]; then
        mse_inter_showAlert "s" "MSE::${lbl_uninstall_uninstallSuccess}"
      fi
    fi
  fi
  return $mseCode
}
MSE_GLOBAL_CMD["mng uninstallAll"]="mse_mmod_mng_uninstallAll"
# END :: mse_mmod_mng_uninstallAll.sh


# INI :: mse_mmod_mng_updateAll.sh
mse_mmod_mng_updateAll() {
  mse_inter_showAlert "i" "MSE::${lbl_update_updateStart}"
  local mseHOME=$([ ! -z "${XDG_MAIN_HOME}" ] && echo "${XDG_MAIN_HOME}" || echo "${HOME}")
  local mseInstallationPath="${mseHOME}/apps/myShellEnv"
  git -C "${mseInstallationPath}" pull
  git -C "${mseInstallationPath}" submodule update --remote
  git -C "${mseInstallationPath}" add .
  git -C "${mseInstallationPath}" commit -m "Updated modules and submodules"
  local mseCode=$#
  if [ "${mseCode}" == 0 ]; then
    mse_inter_showAlert "s" "MSE::${lbl_update_updateSuccess}"
  else
    local mseErrMsg=$(mse_str_replacePlaceHolder "${lbl_update_updateFail}" "ERRCODE" "${mseCode}")
    mse_inter_showAlert "f" "MSE::${mseErrMsg}"
  fi
  return $mseCode
}
MSE_GLOBAL_CMD["mng updateAll"]="mse_mmod_mng_updateAll"
# END :: mse_mmod_mng_updateAll.sh


# INI :: mse_misc_setHeader.sh
mse_misc_setHeader() {
  local mseNColor="\e[0m"
  local mseTColor="\e[1;49;34m"
  local mseTColor2="\e[1;2;49;34m"
  local mseLColor="\e[1;49;90m"
  local mseResult=""
  mseResult+="${mseLColor}   #   ${mseNColor}\n"
  mseResult+="${mseLColor} # #   ${mseNColor} ${mseTColor}$1${mseNColor}\n"
  mseResult+="${mseLColor} #   # ${mseNColor} ${mseTColor2}$2${mseNColor}\n"
  mseResult+="--------------------------------------------------------------------------------"
  echo -e "${mseResult}"
}
# END :: mse_misc_setHeader.sh


# INI :: mse_misc_showInfo.sh
mse_misc_showInfo() {
  local mseDISTRO=`cat /etc/os-release | grep -oP -m1 '(?<=NAME=")[^"]*'`
  local mseKERNEL=`uname -r`
  local mseARCH=`uname -m`
  local mseCPU=`awk -F '[ :][ :]+' '/^model name/ { print $2; exit; }' /proc/cpuinfo`
  local mseMEMORY1=`free -t -m | grep "Mem" | awk '{print $6" MB";}'`
  local mseMEMORY2=`free -t -m | grep "Mem" | awk '{print $2" MB";}'`
  local mseMEMPERCENT=`free | awk '/Mem/{printf("%.2f% (Used) "), $3/$2*100}'`
  local mseDETECTDISK=`mount -v | fgrep 'on / ' | sed -n 's_^\(/dev/[^ ]*\) .*$_\1_p'`
  local mseDISC=`df -h | grep $mseDETECTDISK | awk '{print $5 }'`
  local mseUP=`uptime -p`
  local mseHOSTNAME=`uname -n`
  local mseNOW=$(date +"%Y-%m-%d %T")
  local mseNColor="\e[0m"
  local mseTColor="\e[1;49;34m"
  local mseLColor="\e[1;49;90m"
  local mseResult=""
  mseResult+="  ${mseTColor}${mseDISTRO}${mseNColor} :: ${mseKERNEL} :: ${mseARCH} \n"
  mseResult+="${mseLColor}                           ${mseNColor}\n"
  mseResult+="${mseLColor}           #####           ${mseNColor}\n"
  mseResult+="${mseLColor}          #######          ${mseNColor}     CPU: ${mseTColor}${mseCPU}${mseNColor} \n"
  mseResult+="${mseLColor}           #####           ${mseNColor}  Memory: ${mseTColor}${mseMEMORY1} / ${mseMEMORY2} - ${mseMEMPERCENT}${mseNColor} \n"
  mseResult+="${mseLColor}                           ${mseNColor}Use Disk: ${mseTColor}${mseDISC} (used)${mseNColor} \n"
  mseResult+="${mseLColor}   #####   #####           ${mseNColor}  Uptime: ${mseTColor}${mseUP}${mseNColor} \n"
  mseResult+="${mseLColor}  ####### #######          ${mseNColor}\n"
  mseResult+="${mseLColor}   #####   #####           ${mseNColor}\n"
  mseResult+="${mseLColor}                           ${mseNColor}\n"
  mseResult+="${mseLColor}   #####           #####   ${mseNColor}    User: ${mseTColor}${USER}${mseNColor} \n"
  mseResult+="${mseLColor}  #######         #######  ${mseNColor}    Host: ${mseTColor}${mseHOSTNAME}${mseNColor} \n"
  mseResult+="${mseLColor}   #####           #####   ${mseNColor}    Date: ${mseTColor}${mseNOW}${mseNColor} \n"
  clear
  echo -e "${mseResult}"
}
# END :: mse_misc_showInfo.sh


