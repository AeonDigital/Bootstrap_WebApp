#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Identifica uma seção de um arquivo de configuração, tipicamente definido pela
# notação [section-name] e imprime na tela todas as suas variáveis.
#
# Linhas comentadas não serão mostradas.
#
#   @param string $1
#   Nome da seção alvo.
#
#   @param string $2
#   Caminho até o arquivo que deve ser verificado.
#
mcfPrintSectionVariables()
{
  local inSection="0"
  local rawLine

  #
  # O 'while read' lê cada linha da string passada já efetuando um 'trim'
  # na mesma, portanto, não é preciso se preocupar com eliminar espaços vazios
  # antes ou depois do valor real de cada linha.
  #
  # A solução ' || [ -n "${rawLine}" ]' garante que a última linha será também
  # incluída no loop. Sem isto, a última linha é considerada 'EOF' e o loop não
  # itera sobre ela.
  while read rawLine || [ -n "${rawLine}" ]
  do
    local sectionBegin="0";

    if [ "${rawLine}" != "" ] && [ "${rawLine:0:1}" != "#" ] && [ "${rawLine:0:1}" != ";" ]; then
      if [ "$1" == "" ]; then
        inSection="1";
        sectionBegin="0";
        if [ "${rawLine:0:1}" == "[" ]; then
          sectionBegin="1";
        fi;
      else
        if [ "${inSection}" == "1" ] && [ "${rawLine:0:1}" == "[" ]; then
          inSection="0";
        fi;
        if [ "${inSection}" == "0" ] && [ "${rawLine}" == "[$1]" ]; then
          inSection="1";
          sectionBegin="1";
        fi;
      fi;

      if [ "${inSection}" == "1" ] && [ "${sectionBegin}" == "0" ]; then
        echo "${rawLine}";
      fi;
    fi;
  done < "$2"
}
