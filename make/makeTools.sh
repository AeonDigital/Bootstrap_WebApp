#!/bin/bash -eu








#
# Verifica se o servidor do "$1" está acessível.
# Esta verificação é feita usando um 'ping' que será repetido pelo valor
# passado no parametro "atempts".
#
# @param string $1
#             Host do servidor que será testado.
#
# @param int $2
#             Número de tentativas de obter uma resposta com o servidor alvo.
#
# @param bool $3
#             Quando '1' retornará a string de resposta do comando 'ping'.
#             Quando '0' executará o 'ping' de forma normal printando os
#             resultados na tela conforme recebe (ou não) as respostas.
#
# @return
#             Retorna o resultado do comando 'ping' efetuado.
#
checkServerWithPing() {
  local tmpDocker=$(echo "docker exec -it ${CONTAINER_WEBSERVER_NAME}");

  if [ "${3}" == "1" ]; then
    local tmpResult=$(${tmpDocker} ping -c ${2} -W 10 "${1}");
    echo "${tmpResult}";
  else
    ${tmpDocker} ping -c ${2} -W 10 "${1}";
  fi;
}
#
# Processa um resultado de um comando de 'ping' e retorna os valores
# referentes às taxas de sucesso e falha do mesmo.
#
# @param string $1
#       String do resultado que será processado.
#
# @return
#       String contendo os valores discriminados abaixo separados
#       por '-'
#       - Total de tentativas
#       - Recebidas
#       - Perdidas
#       - Percentual de Sucesso
#       - Percentual de Falhas
proccessPingStringResult() {
  local tmpResult="${1}";
  local tmpGetNextLine="0"
  local tmpTgtLine=""

  while read -r rawLine
  do
    if [ "${tmpTgtLine}" == "" ]; then
      if [ "${tmpGetNextLine}" == "1" ]; then
        tmpTgtLine="${rawLine}";
        tmpGetNextLine="0"
      fi;

      if [[ "${rawLine}" == *"ping statistics"* ]]; then
        tmpGetNextLine="1";
      fi;
    fi;
  done <<< "${tmpResult}";


  if [ "${tmpTgtLine}" != "" ]; then
    tmpTgtLine=$(trimD "," "${tmpTgtLine}");

    local oIFS="${IFS}";
    local tmpStrSub="";
    local tmpCount="0";

    local tmpAtempts="0";
    local tmpReceived="0";
    local tmpLost="0";

    local tmpPercentFail="0";
    local tmpPercentSuccess="0";

    while IFS=',' read -ra arrSplit; do
      for tmpStrSub in "${arrSplit[@]}"; do
        local strSubSplit=(${tmpStrSub});

        if [ "${tmpCount}" == "0" ]; then
          tmpAtempts="${strSubSplit[0]}";
        fi;
        if [ "${tmpCount}" == "1" ]; then
          tmpReceived="${strSubSplit[0]}";
          tmpLost=$((tmpAtempts-tmpReceived));
        fi;
        if [ "${tmpCount}" == "2" ]; then
          tmpPercentFail=$(echo "${strSubSplit[0]}" | sed "s/\%//");
          tmpPercentSuccess=$((100-tmpPercentFail));
        fi;

        tmpCount=$((tmpCount+1));
      done
    done <<< "${tmpTgtLine}"

    IFS="${oIFS}";

    echo "${tmpAtempts}-${tmpReceived}-${tmpLost}-${tmpPercentSuccess}-${tmpPercentFail}";
  fi;
}
