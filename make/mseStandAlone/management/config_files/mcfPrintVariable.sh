#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Imprime na tela toda a linha informativa sobre a variável de nome indicado presente em.
# qualquer ponto do arquivo de configuração alvo.
# Se a variável alvo estiver duplicada, apenas a primeira será levada em consideração.
#
#   @param string $1
#   Nome da variável alvo.
#
#   @param string $2
#   Caminho até o arquivo que deve ser verificado.
#
mcfPrintVariable()
{
  mcfPrintSectionVariable "" "$1" "$2"
}
