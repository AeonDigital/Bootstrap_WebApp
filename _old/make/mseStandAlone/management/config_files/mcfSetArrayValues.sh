#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Variáveis
unset MSE_GB_ARRAY_CONFIG
declare -A MSE_GB_ARRAY_CONFIG




#
# Permite editar um arquivo de configuração que armazene informações
# em formato de array.
# Apenas consegue alterar valores de chaves que existam inicialmente no array
# alvo.
#
# Antes de evocar esta função, use a variável global ${MSE_GB_ARRAY_CONFIG} para
# conter todos os valores que você deseja que sejam salvos.
#
#   @param string $1
#   Nome do array que será alterado.
#
#   @param string $2
#   Arquivo onde a alteração será feita.
#
#   @example
#     mcfSetArrayValues 'TARGET_ARRAY_NAME' '~/config.sh'
#
mcfSetArrayValues() {
  if [ $# != 2 ]; then
    errorAlert "${FUNCNAME[0]}" "expected 3 arguments"
  else
    if [ ! -f $2 ]; then
      errorAlert "${FUNCNAME[0]}" "especified file not found"
    else
      local mseArr=$1
      local mseSearch
      local mseNewLine


      #
      # Inicia um novo arquivo temporário apenas para salvar
      # a configuração que está sendo setada.
      local mseTmpFile="${HOME}/.mseTmpConfig"
      printf '' > "$mseTmpFile"


      #
      # Para cada linha do arquivo indicado
      # **o arquivo é lido de forma 'readonly' em especial para
      # não perder caracteres especiais que seriam 'evaluados' de outra forma**
      local mseIFS=$IFS
      local line
      IFS=
      while read -r line; do
        #
        # escapa os caracteres '\n' para que não sejam 'evaluados' ao salvar
        mseNewLine=$(echo "$line" | sed 's/\\n/\\\\n/g')

        #
        # Identifica se a linha atual possui alguma configuração para a
        # variável que deve ser alterada
        mseSearch="${mseArr}["

        if [[ "$line" == *"$mseSearch"* ]]; then

          #
          # Para cada chave a ser redefinida, identifica se a linha atual
          # possui alguma delas.
          for k in "${!MSE_GB_ARRAY_CONFIG[@]}"; do
            mseSearch="${mseArr}[${k}]"

            if [[ "$line" == *"$mseSearch"* ]]; then
              mseNewLine=${mseSearch}'='${MSE_GB_ARRAY_CONFIG[$k]}
            fi
          done
        fi

        echo -e "$mseNewLine" >> "$mseTmpFile"
      done < $2
      IFS=$mseIFS

      #
      # Efetivamente substitui o arquivo de configuração anterior
      mv "$mseTmpFile" "$2"

    fi
  fi
}
