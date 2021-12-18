#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Permite editar uma configuração do tipo chave=valor que está armazenada
# em um arquivo de configuração que divide logicamente suas variáveis usando
# recurso de 'section' como: [section-name]
#
#   @param string $1
#   Nome da seção alvo.
#
#   @param string $2
#   Nome da variável alvo.
#
#   @param string $3
#   Valor que será atribuido à variável.
#
#   @param string $4
#   Caminho até o arquivo que deve ser verificado.
#
mcfSetSectionVariable()
{
  # primeiro identifica se existe a linha da variável alvo.
  local tgtVariable=$(mcfPrintSectionVariable "$1" "$2" "$4");

  if [ "${tgtVariable}" != "" ]; then
    if [ "$1" == "" ]; then
      # Todas as ocorrências.
      #sed -i "s/^\($2\s*=\s*\).*\$/\1$3/" $4;

      # Apenas a primeira ocorrência.
      sed -i "1,/^\($2\s*=\s*\).*\$/ s/^\($2\s*=\s*\).*\$/\1$3/" "$4";
    else
      sed -i "/^\[$1\]$/,/^\[/ s/^\($2\s*=\s*\).*\$/\1$3/" "$4";
    fi;
  fi;
}
