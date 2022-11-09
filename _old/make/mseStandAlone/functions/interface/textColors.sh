#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Modificadores
#
# Há 3 conjuntos de motificadores que podem ser usados na composição da estilização de uma
# mensagem de texto; em cada família, cada ítem é representado por um dígito específico.
# Na composição do código que precede o texto que você deseja que herde aquele estilo você precisa
# definir o número que corresponderá a cada um dos modificadores na ordem correta.
#
# Os modificadores são:
# - Atributos
# - Cor de Fundo
# - Cor de Fonte
#
# Assim sendo, o comando a ser usado deve corresponder à seguinte estrutura:
# \e[Atributo;Fundo;Fonte
#
# Exemplo:
# echo -e "\e[0;44;93mTexto estilizado\e[0;37;37m"
# O código acima exibirá o texto sem nenhum atributo especial onde a cor da fonte é amarelo claro
# e o fundo é azul
#
# Conheça abaixo o código de cada variação de cada modificador
#



#
# Atributos
#
# 0:  Remove todos os modificadores; Sejam atributos, cor de fonte ou cor de fundo.
# 1:  Negrito*
# 2:  Dim*
# 4:  Sublinhado*
# 5:  Piscando*
# 7:  Inverte a seleção de cor de fonte e cor de fundo
#     No exemplo acima o código \e[0;93;44] exibe um texto onde a cor da fonte é amarelo claro
#     e o fundo é azul, já o código \e[7;93;44] inverterá a seleção criando um texto onde
#     a cor da fonte será azul e o fundo será amarelo.
# 8:  Oculto*; Use para ocultar informações sensíveis
#
# 21: Remove o Negrito*
# 22: Remove o Dim*
# 24: Remove o Sublinhado*
# 25: Remove o Piscado*
# 27: Remove a Inversão*
# 28: Remove o Oculto*
#
# *:  Estes ítens não puderam ser testados direto no terminal via VM possivelmente por que
#     necessitavam de uma fonte que correspondesse aos mesmos.
#



#
# Cor do fundo
#
# 37:   Padrão        (assume o fundo atual do terminal)
# 40:   Preto
# 41:   Vermelho
# 42:   Verde
# 43:   Amarelo
# 44:   Azul
# 45:   Púrpura
# 46:   Ciano
# 47:   Cinza claro   (não use com fonte branca)
# 100:  Cinza escuro  (não use com fonte preta; Aparenta não funcionar)
# 101:  Vermelho claro
# 102:  Verde claro   (não use com fonte branca)
# 103:  Amarelo claro (não use com fonte branca)
# 104:  Azul claro    (não use com fonte amarelo clara)
# 105:  Púrpura claro|Pink (não use com fontes claras)
# 106:  Ciano claro   (não use com fonte branca)
# 107:  Branco        (não use com fontes claras)
#



#
# Cor da fonte
#
# 39:   Padrão
# 30:   Preto         (combine com um fundo colorido para obter um bom resultado)
# 31:   Vermelho      (Não use com um fundo verde)
# 32:   Verde
# 33:   Amarelo
# 34:   Azul
# 35:   Púrpura
# 36:   Ciano
# 37:   Cinza claro
# 90:   Cinza escuro
# 91:   Vermelho claro
# 92:   Verde claro
# 93:   Amarelo claro
# 94:   Azul claro
# 95:   Púrpura claro|Pink
# 96:   Ciano claro
# 97:   Branco
#




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



MSE_GB_AVAILABLE_COLOR_NAMES=(
  'NONE'
  'BLACK' 'DGREY' 'LGREY' 'WHITE' 'RED' 'LRED'
  'GREEN' 'LGREEN' 'YELLOW' 'LYELLOW' 'BLUE' 'LBLUE'
  'PURPLE' 'LPURPLE' 'CYAN' 'LCYAN'
)

MSE_GB_AVAILABLE_COLOR_CODES=(
  '37'
  '30' '90' '37' '97' '31' '91'
  '32' '92' '33' '93' '34' '94'
  '35' '95' '36' '96'
)

MSE_GB_AVAILABLE_BGCOLOR_CODES=(
  '49'
  '40' '100' '47' '107' '41' '101'
  '42' '102' '43' '103' '44' '104'
  '45' '105' '46' '106'
)

MSE_GB_AVAILABLE_COLOR_LABELS=(
  'Normal'
  'Preto' 'Cinza escuro' 'Cinza claro' 'Branco' 'Vermelho' 'Vermelho claro'
  'Verde' 'Verde claro' 'Marrom' 'Amarelo' 'Azul' 'Azul claro'
  'Purpura' 'Purpura claro' 'Ciano' 'Ciano claro'
)



#
# O Array abaixo possui todos os nomes dos códigos de atributos possíveis
# de serem usados.
#
# 'R' indica 'Remove'
#
MSE_GB_AVAILABLE_FONT_ATTRIBUTE_NAMES=(
  'DEFAULT'
  'BOLD' 'DIM' 'UNDERLINE' 'BLINK' 'INVERT' 'HIDDEN'
  'RBOLD' 'RDIM' 'RUNDERLINE' 'RBLINK' 'RINVERT' 'RHIDDEN'
)
MSE_GB_AVAILABLE_FONT_ATTRIBUTE_CODES=(
  '0'
  '1' '2' '4' '5' '7' '8'
  '21' '22' '24' '25' '27' '28'
)









#
# Mostra as cores básicas disponíveis no shell
# que podem ser utilizadas para a estilização das mensagens
# de interface.
#
#   @param int $1
#   Use '0' ou omita este parametro se quiser ver a tabela completa
#   Use '1' para ver apenas as colunas que possuem referências de nome e exemplos
#   das cores.
#   Use '2' para ver apenas as colunas de código das cores e seus respectivos
#   resultados.
#   Use '3' para ver apenas o código das cores coloridos em uma única linha.
#
#   @exemple
#     showTextColors
#
showTextColors() {

  local i
  local mseLength=${#MSE_GB_AVAILABLE_COLOR_NAMES[@]}
  local mseLine
  local mseRawTable
  local mseColorName
  local mseColorRaw
  local mseColorCod


  if [ $# == 1 ] && [ $1 == 3 ]; then

    for (( i=0; i<mseLength; i++)); do
      mseColorName=${MSE_GB_AVAILABLE_COLOR_LABELS[$i]}
      mseColorRaw=${MSE_GB_AVAILABLE_COLOR_NAMES[$i]}

      if [ "${mseColorRaw}" != "NONE" ]; then
        mseColorCod="\\${!mseColorRaw}"

        mseLine="${!mseColorRaw}${mseColorRaw}${NONE}"
        if (( i % 4 != 0 )); then
          mseLine+=" : "
        else
          mseLine+="\n"
        fi

        mseRawTable+="${mseLine}"
      fi
    done

    printf "\n${WHITE}As seguintes opções de cores estão disponíveis:${NONE} \n\n"
    printf "NONE\n"

    mseRawTable=$(printf "${mseRawTable}")
    column -e -t -s ":" <<< "${mseRawTable}"
    printf "\n"

  else

    if [ $# == 0 ] || [ $1 == 0 ]; then
      mseRawTable="Cor:Raw:Variavel:Aparencia\n"
    fi

    for (( i=0; i<mseLength; i++)); do
      mseColorName=${MSE_GB_AVAILABLE_COLOR_LABELS[$i]}
      mseColorRaw=${MSE_GB_AVAILABLE_COLOR_NAMES[$i]}
      mseColorCod="\\${!mseColorRaw}"

      mseLine="${mseColorName}:${mseColorRaw}:${mseColorCod}:${!mseColorRaw}myShellEnv${NONE} \n"
      mseRawTable+="${mseLine}"
    done

    printf "\n\n${WHITE}As seguintes opções de cores estão disponíveis:${NONE} \n\n"

    mseRawTable=$(printf "${mseRawTable}")
    mseRawTable=$(sed 's/^\s*//g' <<< "${mseRawTable}" | sed 's/\s*$//g' | sed 's/\s*:/:/g' | sed 's/:\s*/:/g')

    if [ $# == 0 ] || [ $1 == 0 ]; then
      column -e -t -s ":" <<< "${mseRawTable}"
    else
      if [ $1 == 1 ]; then
        column -e -t -s ":" -o " | " -N "Cor,Raw,Variavel,Aparencia" -H "Variavel" <<< "${mseRawTable}"
      fi
      if [ $1 == 2 ]; then
        column -e -t -s ":" -o " | " -N "Cor,Raw,Variavel,Aparencia" -H "Cor,Variavel" <<< "${mseRawTable}"
      fi
    fi

    printf "\nDica:"
    printf "Use o 'grep' caso precise filtrar os resultados: \n"
    printf "  Ex: showTextColors | grep -in 'azul' \n"
    printf "\n"

  fi
}



#
# Mostra os códigos de cores disponíveis para estilização das mensagens de texto.
#
showFontColors() {
  showTextColors 3
}



#
# Mostra os atributos disponíveis no shell
# que podem ser utilizados para a estilização das mensagens
# da interface
#
showFontAttributes() {

  local i
  local mseLength=${#MSE_GB_AVAILABLE_FONT_ATTRIBUTE_NAMES[@]}
  local mseLine
  local mseRawTable

  for (( i=0; i<mseLength; i++)); do
    mseAttrName=${MSE_GB_AVAILABLE_FONT_ATTRIBUTE_NAMES[$i]}

    if [ "${mseAttrName}" != "DEFAULT" ]; then

      mseLine="${LBLUE}${mseAttrName}${NONE}"
      if (( i % 6 != 0 )); then
        mseLine+=" : "
      else
        mseLine+="\n"
      fi

      mseRawTable+="${mseLine}"
    fi
  done

  printf "\n${WHITE}As seguintes opções de atributos estão disponíveis:${NONE} \n\n"
  printf "${LBLUE}DEFAULT${NONE}\n"

  mseRawTable=$(printf "${mseRawTable}")
  column -e -t -s ":" <<< "${mseRawTable}"
  printf "\n"

}



#
# Cria um código de estilo de cores para textos em conformidade com os
# parametros informados.
#
#   @param string $1
#   Cor da fonte
#
#   @param string $2
#   Cor do fundo
#
#   @param string $3
#   Atributo a ser usado (opcional).
#
#   @example
#     result=$(createFontStyle 'DGREY' 'LBLUE')
#     echo "${result}Formatado conforme eu queria${NONE}"
#
createFontStyle() {
  if [ $# != 2 ] && [ $# != 3 ]; then
    errorAlert "${FUNCNAME[0]}" "expected 2 or 3 arguments"
  else

    local i
    local mseLength
    local mseFont
    local mseBackGround
    local mseAttribute='0'

    local mseUParam
    local mseIsValid=0


    #
    # Resgata a cor da fonte a ser usada
    mseLength=${#MSE_GB_AVAILABLE_COLOR_NAMES[@]}
    mseUParam=$(toUpperCase $1)
    mseIsValid=0

    for (( i=0; i<mseLength; i++)); do
      if [ "${mseUParam}" == "${MSE_GB_AVAILABLE_COLOR_NAMES[$i]}" ]; then
        mseFont=${MSE_GB_AVAILABLE_COLOR_CODES[$i]}
        mseIsValid=1
      fi
    done


    #
    # Apenas se a cor da fonte é válida...
    if [ mseIsValid == 0 ]; then
      errorAlert "${FUNCNAME[0]}" "invalid argument 1" "see options in ${LGREEN}showFontColors${NONE}"
    else

      #
      # Resgata a cor do fundo a ser usada
      mseLength=${#MSE_GB_AVAILABLE_COLOR_NAMES[@]}
      mseUParam=$(toUpperCase $2)
      mseIsValid=0

      for (( i=0; i<mseLength; i++)); do
        if [ "${mseUParam}" == "${MSE_GB_AVAILABLE_COLOR_NAMES[$i]}" ]; then
          mseBackGround=${MSE_GB_AVAILABLE_BGCOLOR_CODES[$i]}
          mseIsValid=1
        fi
      done


      #
      # Apenas se a cor de fundo for válida...
      if [ mseIsValid == 0 ]; then
        errorAlert "${FUNCNAME[0]}" "invalid argument 2" "see options in ${LGREEN}showFontColors${NONE}"
      else

        #
        # Caso o terceiro parametro tenha sido definido, verifica
        # se trata-se de um nome de atributo válido
        if [ $# == 3 ]; then
          mseLength=${#MSE_GB_AVAILABLE_FONT_ATTRIBUTE_NAMES[@]}
          mseUParam=$(toUpperCase $3)
          mseIsValid=0

          for (( i=0; i<mseLength; i++)); do
            if [ "${mseUParam}" == "${MSE_GB_AVAILABLE_FONT_ATTRIBUTE_NAMES[$i]}" ]; then
              mseAttribute=${MSE_GB_AVAILABLE_FONT_ATTRIBUTE_CODES[$i]}
              mseIsValid=1
            fi
          done
        fi


        #
        # Se o atributo indicado for válido...
        if [ mseIsValid == 0 ]; then
          errorAlert "${FUNCNAME[0]}" "invalid argument 3" "see options in ${LGREEN}showFontAttributes${NONE}"
        else
          echo '\e['"${mseAttribute}"';'"${mseFont}"';'"${mseBackGround}"'m'
        fi
      fi
    fi
  fi
}
